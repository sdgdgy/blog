package com.ljh.blog.dao;

import com.ljh.blog.pojo.About;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface AboutMapper {

    int addAbout(About about);

    int deleteAbout(@Param("id") int id);

    int updateAbout(About about);

    List<About> queryAboutById(@Param("id")int id);

    List<About> queryAllAbout();

    int addAmountOfReading(@Param("id") int id);
}
