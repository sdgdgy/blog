package com.ljh.blog.dao;

import com.ljh.blog.pojo.Blog;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface BlogMapper {
    //新增一篇博客
    int addBlog(Blog blog);
    //删除一篇博客
    int deleteBlog(@Param("id") int id);
    //修改一篇博客
    int updateBlog(Blog blog);
    //查询一篇博客
    List<Blog> queryBlogById(@Param("id") int id);
    //查询全部博客
    List<Blog> queryAllBlog();
    //增加阅读量
    int addAmountOfReading(@Param("id") int id);
}
