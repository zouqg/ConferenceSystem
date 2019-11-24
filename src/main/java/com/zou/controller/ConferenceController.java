package com.zou.controller;

import com.zou.dao.ConfInfoMapper;
import com.zou.pojo.ConferenceInfo;
import com.zou.pojo.ConferenceType;
import com.zou.pojo.User;
import com.zou.service.ConfInfoServiceImpl;
import com.zou.service.ConfServiceImpl;
import com.zou.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ConferenceController {

    // 记录每次登录人院的ID
    private int UId;

    @Autowired
    private UserService userService;

    @Autowired
    private ConfServiceImpl confService;

    @Autowired
    private ConfInfoServiceImpl confInfoService;


    // 进入登录页面
    @RequestMapping("login")
    public String login(){return "login";}


    // 验证登录信息
    @RequestMapping(value = "/validate")
//    @ResponseBody
    public String validate(User user,Model model){
        System.out.println(user);
        if(userService.hasMatch(user.getUId(),user.getPassword())>0)
        {
            User u = userService.queryUserById(user.getUId());
            UId = user.getUId();
            if(u.isManager())
            {
                return "managerPage";
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

    // 参加人员进入页面
    @RequestMapping("/managerPage")
    public String publish(Model model){
        model.addAttribute("list","fa");
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

}
