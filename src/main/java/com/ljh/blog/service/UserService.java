package com.ljh.blog.service;

import com.ljh.blog.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

public interface UserService {
    int addUser(User user);

    int deleteUser(@Param("id") String id);

    int updateUser(User user);

    List<User> queryUserById(@Param("id") String id);

    List<User> queryAllUser();

    List<User> verifyUser(User user);
}
