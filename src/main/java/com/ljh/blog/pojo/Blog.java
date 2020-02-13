package com.ljh.blog.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class Blog {
    private int blogId;//博客号
    private String title;//标题
    private String edits;//编辑内容
    private int blogStatus;//博客状态
    private String time;//时间
    private int amountOfReading;//阅读量
}
