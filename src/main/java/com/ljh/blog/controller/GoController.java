package com.ljh.blog.controller;

import com.ljh.blog.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/go")
public class GoController {
    @Autowired
    private BlogService blogService;
    @RequestMapping("toIndex")
    public String toIndex(Model model){
        model.addAttribute("blogList",blogService.queryAllBlog());
        return "index";
    }
    @RequestMapping("toAbout")
    public String toAbout(){
        return "about";
    }
    @RequestMapping("toMessage")
    public String toMessage(){
        return "message";
    }
    @RequestMapping("toDetails")
    public String toDetails(int id, Model model){
        blogService.addAmountOfReading(id);
        model.addAttribute("blogOne",blogService.queryBlogById(id));
        return "details";
    }

}
