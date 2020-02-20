package com.ljh.blog.controller;

import com.ljh.blog.pojo.About;
import com.ljh.blog.pojo.Blog;
import com.ljh.blog.pojo.User;
import com.ljh.blog.service.AboutService;
import com.ljh.blog.service.BlogService;
import com.ljh.blog.service.LeaveMessageService;
import com.ljh.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
    @Autowired
    private AboutService aboutService;
    @Autowired
    private LeaveMessageService leaveMessageService;

    private String text="[TOC]\n" +
            "\n" +
            "#### Disabled options\n" +
            "\n" +
            "- TeX (Based on KaTeX);\n" +
            "- Emoji;\n" +
            "- Task lists;\n" +
            "- HTML tags decode;\n" +
            "- Flowchart and Sequence Diagram;\n" +
            "\n" +
            "#### Editor.md directory\n" +
            "\n" +
            "    editor.md/\n" +
            "            lib/\n" +
            "            css/\n" +
            "            scss/\n" +
            "            tests/\n" +
            "            fonts/\n" +
            "            images/\n" +
            "            plugins/\n" +
            "            examples/\n" +
            "            languages/     \n" +
            "            editormd.js\n" +
            "            ...\n" +
            "\n" +
            "```html\n" +
            "&lt;!-- English --&gt;\n" +
            "&lt;script src=\"../dist/js/languages/en.js\"&gt;&lt;/script&gt;\n" +
            "\n" +
            "&lt;!-- 繁體中文 --&gt;\n" +
            "&lt;script src=\"../dist/js/languages/zh-tw.js\"&gt;&lt;/script&gt;\n" +
            "```";
    //管理员业务管理页面跳转控制层
    @RequestMapping("toSimple")
    public String toSimple(Model model){
        model.addAttribute("blogOneId","-1");
        model.addAttribute("blogOne",text);
        return "simple";
    }
    @RequestMapping("toUpdateSimple")
    public String toUpdateSimple(Model model,int id){
        model.addAttribute("blogOneId",blogService.queryBlogById(id).get(0).getBlogId());
        model.addAttribute("blogOneTitle",blogService.queryBlogById(id).get(0).getTitle());
        model.addAttribute("blogOne",blogService.queryBlogById(id).get(0).getEdits());
        return "simple";
    }
    @RequestMapping("toManagement")
    public String toManagement(Model model){
        model.addAttribute("blogList",blogService.queryAllBlog());
        return "management";
    }
    @RequestMapping("toAbout")
    public String toAbout(Model model){
        model.addAttribute("aboutList",aboutService.queryAllAbout());
        return "admin_About";
    }
    @RequestMapping("toEditAbout")
    public String toEditAbout(){
        return "admin_EditAbout";
    }
    @RequestMapping("toLeaveMessage")
    public String toLeaveMessage(Model model){
        model.addAttribute("LeaveMessageList",leaveMessageService.queryAllLeaveMessage());
        return "admin_LeaveMessage";
    }
    @PostMapping("login")
    public String login(String id, String password, HttpSession httpSession){
        User user=new User(id,password,0);
        try {
            List<User> list=userService.verifyUser(user);
            httpSession.setAttribute("accountNumber",list.get(0).getAccountNumber());
            return "redirect:/admin/toManagement";
        } catch (Exception e) {
            return "/login";
        }
    }
    //博客管理业务控制层
    @PostMapping("addBlog")
    public String addBlog(int id,String title,String edits,int blogStatus){
        Blog blog=new Blog(id,title,edits,blogStatus,null,0);
        if(blog.getBlogId()==-1){
            if(blog.getBlogStatus()==1){
                blogService.addBlog(blog);
            }else if(blog.getBlogStatus()==0){
                blogService.addBlog(blog);
            }
            return "redirect:/admin/toManagement";
        }else{
            if(blog.getBlogStatus()==1){
                blogService.updateBlog(blog);
            }else if(blog.getBlogStatus()==0){
                blogService.updateBlog(blog);
            }
            return "redirect:/admin/toManagement";
        }
    }
    @RequestMapping("deleteBlog")
    public String deleteBlog(int id){
        blogService.deleteBlog(id);
        return "redirect:/admin/toManagement";
    }
    @RequestMapping("updateBlogStatus")
    @ResponseBody
    public void updateBlog(int id,int blogStatus){
        blogService.updateBlogStatus(id,blogStatus);
    }
    //关于页面业务管理控制层
    @RequestMapping("deleteAbout")
    public String deleteAbout(int id){
        aboutService.deleteAbout(id);
        return "redirect:/admin/toAbout";
    }
    @RequestMapping("addAbout")
    public String addAbout(String title,String content){
        About about=new About(0,title,content,null,0);
        aboutService.addAbout(about);
        return "redirect:/admin/toAbout";
    }
    @RequestMapping("stickyAbout")
    public String stickyAbout(int id){
        About about=new About(id,null,null,null,0);
        aboutService.updateAbout(about);
        return "redirect:/admin/toAbout";
    }
    //留言页面业务管理控制层
    @RequestMapping("deleteLeaveMessage")
    public String deleteLeaveMessage(int id){
        leaveMessageService.deleteLeaveMessage(id);
        return "redirect:/admin/toLeaveMessage";
    }
}
