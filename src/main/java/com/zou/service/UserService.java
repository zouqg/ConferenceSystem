package com.zou.service;

import com.zou.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {

    // 增加一个用户
    int addUser(User user);

    // 删除一个用户
    int deleteUserById( int UId);

    // 更新用户信息
    int updateUser(User user);

    // 查询所有用户
    List<User> queryAllUser();

    // 查询用户
    User queryUserById(int UId);

    // 查询特定用户
    int hasMatch(int UId,String password);
}
