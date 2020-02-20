package com.ljh.blog.service;

import com.ljh.blog.pojo.About;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AboutService {
    int addAbout(About about);

    int deleteAbout(@Param("id") int id);

    int updateAbout(About about);

    List<About> queryAboutById(@Param("id")int id);

    List<About> queryAllAbout();

    int addAmountOfReading(@Param("id") int id);
}
