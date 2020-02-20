package com.ljh.blog.service;

import com.ljh.blog.dao.BlogMapper;
import com.ljh.blog.pojo.Blog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BlogServiceImpl implements BlogService {
    @Autowired
    private BlogMapper blogMapper;
    @Override
    public int addBlog(Blog blog) {
        blogMapper.addBlog(blog);
        return 1;
    }

    @Override
    public int deleteBlog(int id) {
        blogMapper.deleteBlog(id);
        return 1;
    }

    @Override
    public int updateBlog(Blog blog) {
        blogMapper.updateBlog(blog);
        return 1;
    }

    @Override
    public List<Blog> queryBlogById(int id) {
        return blogMapper.queryBlogById(id);
    }

    @Override
    public List<Blog> queryAllBlog() {
        return blogMapper.queryAllBlog();
    }

    @Override
    public int addAmountOfReading(int id) {
        blogMapper.addAmountOfReading(id);
        return 1;
    }

    @Override
    public int updateBlogStatus(int id,int blogStatus) {
        blogMapper.updateBlogStatus(id,blogStatus);
        return 1;
    }
}
