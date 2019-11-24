package com.zou.service;

import com.zou.dao.UserMapper;
import com.zou.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.context.support.UiApplicationContextUtils;

import java.util.List;

public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public int deleteUserById(int UId) {
        return userMapper.deleteUserById(UId);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public List<User> queryAllUser() {
        return userMapper.queryAllUser();
    }

    @Override
    public User queryUserById(int UId) {return userMapper.queryUserById(UId);}

    @Override
    public int hasMatch(int UId, String password) {
        return userMapper.hasMatch(UId,password);
    }
}
