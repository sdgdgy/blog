package com.ljh.blog.controller;

import com.ljh.blog.pojo.Blog;
import com.ljh.blog.pojo.User;
import com.ljh.blog.service.BlogService;
import com.ljh.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private BlogService blogService;
    @Autowired
    private UserService userService;
    //测试方法，完后发布要删除
    @RequestMapping("toSimple")
    public String toSimple(){
        return "simple";
    }
    @PostMapping("login")
    public String login(String id, String password, HttpSession httpSession){
        User user=new User(id,password,0);
        try {
            List<User> list=userService.verifyUser(user);
            httpSession.setAttribute("accountNumber",list.get(0).getAccountNumber());
            return "redirect:/admin/toSimple";
        } catch (Exception e) {
            return "/login";
        }
    }
    @PostMapping("addBlog")
    public String addBlog(String title,String edits,int blogStatus){
        Blog blog=new Blog(0,title,edits,blogStatus,null,0);
        blogService.addBlog(blog);
        return "simple";
    }
}
