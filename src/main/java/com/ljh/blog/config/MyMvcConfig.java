package com.ljh.blog.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.ui.Model;
import org.springframework.web.servlet.config.annotation.*;

import java.util.Collection;
import java.util.Map;

@Configuration
public class MyMvcConfig implements WebMvcConfigurer {
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/").setViewName("forward:/go/toIndex");
        registry.addViewController("/login").setViewName("login");
    }
}
