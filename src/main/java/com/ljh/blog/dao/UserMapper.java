package com.ljh.blog.dao;

import com.ljh.blog.pojo.Blog;
import com.ljh.blog.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Mapper
@Repository
public interface UserMapper {
    int addUser(User user);

    int deleteUser(@Param("id") String id);

    int updateUser(User user);

    List<User> queryUserById(@Param("id") String id);

    List<User> queryAllUser();

    List<User> verifyUser(User user);
}
