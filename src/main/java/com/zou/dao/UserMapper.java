package com.zou.dao;

import com.zou.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.servlet.mvc.method.annotation.RequestResponseBodyMethodProcessor;

import java.util.List;

public interface UserMapper {

    // 增加一个用户
    int addUser(User user);

    // 删除一个用户
    int deleteUserById(@Param("UId") int UId);

    // 更新用户信息
    int updateUser(User user);

    // 查询所有用户
    List<User> queryAllUser();

    // 查询用户
    User queryUserById(@Param("UId") int UId);

    // 查询特定用户
    int hasMatch(@Param("UId")int UId,@Param("password")String password);

}
