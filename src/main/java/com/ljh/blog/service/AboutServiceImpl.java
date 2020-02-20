package com.ljh.blog.service;

import com.ljh.blog.dao.AboutMapper;
import com.ljh.blog.pojo.About;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AboutServiceImpl implements AboutService{
    @Autowired
    private AboutMapper aboutMapper;
    @Override
    public int addAbout(About about) {
        aboutMapper.addAbout(about);
        return 1;
    }

    @Override
    public int deleteAbout(int id) {
        aboutMapper.deleteAbout(id);
        return 1;
    }

    @Override
    public int updateAbout(About about) {
        aboutMapper.updateAbout(about);
        return 1;
    }

    @Override
    public List<About> queryAboutById(int id) {
        return aboutMapper.queryAboutById(id);
    }

    @Override
    public List<About> queryAllAbout() {
        return aboutMapper.queryAllAbout();
    }

    @Override
    public int addAmountOfReading(int id) {
        aboutMapper.addAmountOfReading(id);
        return 1;
    }
}
