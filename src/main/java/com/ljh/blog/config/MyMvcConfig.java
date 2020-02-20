package com.ljh.blog.config;

import com.ljh.blog.interceptor.LoginInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.ui.Model;
import org.springframework.web.servlet.config.annotation.*;

import java.util.Collection;
import java.util.Map;

@Configuration
public class MyMvcConfig implements WebMvcConfigurer {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/**").excludePathPatterns("/","/index.html","/admin/login","/res/**","/editior/**","/go/**","/login","/admin/css/**","/admin/js/**","/admin/images/**","/admin/fonts/**","/admin/favicon.ico","/404/**");
    }

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/404").setViewName("forward:/go/to404");
        registry.addViewController("/").setViewName("forward:/go/toIndex");
        registry.addViewController("/login").setViewName("login");
    }
}
