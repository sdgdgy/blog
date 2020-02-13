package com.ljh.blog.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class About {
    private int id;
    private String title;
    private String content;
    private String time;
    private int amountOfReading;
}
