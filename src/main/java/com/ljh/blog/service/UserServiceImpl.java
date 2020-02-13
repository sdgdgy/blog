package com.ljh.blog.service;

import com.ljh.blog.dao.UserMapper;
import com.ljh.blog.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserMapper userMapper;
    @Override
    public int addUser(User user) {
        userMapper.addUser(user);
        return 1;
    }

    @Override
    public int deleteUser(String id) {
        userMapper.deleteUser(id);
        return 1;
    }

    @Override
    public int updateUser(User user) {
        userMapper.updateUser(user);
        return 1;
    }

    @Override
    public List<User> queryUserById(String id) {
        return userMapper.queryUserById(id);
    }

    @Override
    public List<User> queryAllUser() {
        return userMapper.queryAllUser();
    }

    @Override
    public List<User> verifyUser(User user) {
        return userMapper.verifyUser(user);
    }
}
