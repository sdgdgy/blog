package com.ljh.blog.controller;

import com.ljh.blog.pojo.LeaveMessages;
import com.ljh.blog.service.AboutService;
import com.ljh.blog.service.BlogService;
import com.ljh.blog.service.LeaveMessageService;
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
    @Autowired
    private AboutService aboutService;
    @Autowired
    private LeaveMessageService leaveMessageService;
    @RequestMapping("toIndex")
    public String toIndex(Model model){
        model.addAttribute("blogList",blogService.queryAllBlog());
        return "index";
    }
    @RequestMapping("to404")
    public String to404(){
        return "404";
    }
    @RequestMapping("toAbout")
    public String toAbout(Model model){
        int id=aboutService.queryAllAbout().get(0).getId();
        aboutService.addAmountOfReading(id);
        model.addAttribute("aboutOne",aboutService.queryAllAbout().get(0));
        return "about";
    }
    @RequestMapping("toMessage")
    public String toMessage(Model model){
        model.addAttribute("leaveMessageList",leaveMessageService.queryAllLeaveMessage());
        return "message";
    }
    @RequestMapping("toDetails")
    public String toDetails(int id, Model model){
        blogService.addAmountOfReading(id);
        model.addAttribute("blogOne",blogService.queryBlogById(id));
        return "details";
    }
    @RequestMapping("addLeaveMessage")
    public String addLeaveMessage(String content){
        LeaveMessages leaveMessages=new LeaveMessages(0,"user",content,null);
        leaveMessageService.addLeaveMessage(leaveMessages);
        return "redirect:/go/toMessage";
    }
}
