package com.zou.controller;

import com.zou.pojo.Administer;
import com.zou.pojo.ConferenceInfo;
import com.zou.pojo.ConferenceType;
import com.zou.pojo.User;
import com.zou.service.AdmServiceImpl;
import com.zou.service.ConfInfoServiceImpl;
import com.zou.service.ConfServiceImpl;
import com.zou.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class ConferenceController {

    // 记录每次登录人院的ID
    private int UId;
    private boolean isManager;

    @Autowired
    private UserService userService;

    @Autowired
    private ConfServiceImpl confService;

    @Autowired
    private ConfInfoServiceImpl confInfoService;

    @Autowired
    private AdmServiceImpl admService;


    // 进入登录页面
    @RequestMapping("/login")
    public String login(){return "login";}


    // 验证登录信息
    @RequestMapping(value = "/validate")
//    @ResponseBody
    public String validate(User user,Model model){
        if(userService.hasMatch(user.getUId(),user.getPassword())>0)
        {
            User u = userService.queryUserById(user.getUId());
            this.UId = u.getUId();
            this.isManager = u.isManager();
            if(u.isManager())
            {
                return "redirect:managerPage";
            }
            else
            {
                return "redirect:attenderPage";
            }
        }
        else{
            model.addAttribute("err","登录失败，请检查用户名和密码！");
            return "login";
        }
    }

    // 发布人员进入页面
    @RequestMapping("/managerPage")
    public String publish(Model model){
        List<ConferenceType> allConf = confService.queryAllConfType();
        List<ConferenceInfo> myConf =  confInfoService.queryConfInfoByUId(UId);
        List<ConferenceType> conferenceTypes = confService.queryConfTypeByUId(UId);
        model.addAttribute("mypub",conferenceTypes);
        model.addAttribute("allConf",allConf);
        model.addAttribute("myConf",myConf);
        return "managerPage";
    }

     //参加人员进入页面
    @RequestMapping("/attenderPage")
    public String attend(Model model){
        List<ConferenceType> allConf = confService.queryAllConfType();
        List<ConferenceInfo> myConf =  confInfoService.queryConfInfoByUId(UId);
        model.addAttribute("allConf",allConf);
        model.addAttribute("myConf",myConf);
        return "attenderPage";
    }

    // 填写会议信息请求
    @RequestMapping("/addConfInfo")
    public String addConfInfo(int CId,Model model){
        ConferenceType conf = confService.queryConfTypeByCId(CId);
        conf.setNeedCompany(!conf.isNeedCompany());
        conf.setNeedIdentityId(!conf.isNeedIdentityId());
        conf.setNeedName(!conf.isNeedName());
        conf.setNeedPhone(!conf.isNeedPhone());
        conf.setNeedRoom(!conf.isNeedRoom());
        conf.setNeedSex(!conf.isNeedSex());
        model.addAttribute("conf",conf);
        model.addAttribute("UId",UId);
        if(confInfoService.queryConfInfoByCIdUId(CId,UId)!=null)
        {
            model.addAttribute("err","该会议已参加");
            List<ConferenceType> allConf = confService.queryAllConfType();
            List<ConferenceInfo> myConf =  confInfoService.queryConfInfoByUId(UId);
            List<ConferenceType> conferenceTypes = confService.queryConfTypeByUId(UId);
            model.addAttribute("mypub",conferenceTypes);
            model.addAttribute("allConf",allConf);
            model.addAttribute("myConf",myConf);
            if(this.isManager)
                return "redirect:managerPage";
            else
                return "redirect:attenderPage";
        }
        return "addConfInfo";
    }

    // 插入会议信息
    @RequestMapping("/insertInfo")
    public String insertInfo(ConferenceInfo info,Model model){
        confInfoService.addConfInfo(info);
        List<ConferenceType> allConf = confService.queryAllConfType();
        List<ConferenceInfo> myConf =  confInfoService.queryConfInfoByUId(UId);
        List<ConferenceType> conferenceTypes = confService.queryConfTypeByUId(UId);
        model.addAttribute("mypub",conferenceTypes);
        model.addAttribute("allConf",allConf);
        model.addAttribute("myConf",myConf);
        if(this.isManager)
            return "managerPage";
        else
            return "attenderPage";

    }

    // 查看会议详细信息
    @RequestMapping("/detail")
    public String detail(int CId,Model model){
        ConferenceType conf = confService.queryConfTypeByCId(CId);
        List<ConferenceInfo> infos = confInfoService.queryConfInfoByCId(CId);
        model.addAttribute("conf",conf);
        model.addAttribute("info",infos);
        if(this.isManager)
            return "detail";
        else
            return "detail2";
    }

    // 发布新的会议
    @RequestMapping("/addConf")
    public String addConf(Model model){
        model.addAttribute("UId",UId);
        return "addConf";
    }

    // 插入会议信息
    @RequestMapping("/insertConf")
    public String insertConf(ConferenceType conferenceType){
        confService.addConfType(conferenceType);
        if(this.isManager)
            return "forward:managerPage";
        else
            return "forward:attenderPage";
    }

    @RequestMapping("/register")
    public String register(){
        return "register";
    }


    @RequestMapping("/addUser")
    public String addUser(User user) {
        userService.addUser(user);
        return "login";
    }

    // 返回首页
    @RequestMapping("/home")
    public String detail(){
        if(this.isManager)
            return "forward:managerPage";
        else
            return "forward:attenderPage";

    }

    // 登录管理员页面
    @RequestMapping("/loginAdminister")
    public String administer(){
        return "loginAdminister";
    }

    // 进入验证账号，进入用户管理页面
    @RequestMapping("/validateAdminister")
    public String validateAdminister(int AId,String password, Model model){
        if(admService.hadMatch(AId, password)>0){
            List<User> users = userService.queryAllUser();
            model.addAttribute("users",users);
            return "showUsers";
        }
        model.addAttribute("err","登录失败，请检查用户名和密码！");
        return "loginAdminister";
    }

    // 修改用户
    @RequestMapping("/updateUser")
    public String updateUser(Boolean isManager,int UId,Model model){
        User user = userService.queryUserById(UId);
        user.setManager(isManager);
        userService.updateUser(user);
        List<User> users = userService.queryAllUser();
        model.addAttribute("users",users);
        return "showUsers";
    }

    // 删除用户
    @RequestMapping("/deleteUser")
    public String deleteUser(int UId,Model model){
        User user = userService.queryUserById(UId);
        userService.deleteUserById(UId); // 删除用户
        List<User> users = userService.queryAllUser();
        model.addAttribute("users",users);
        return "showUsers";
    }

}
