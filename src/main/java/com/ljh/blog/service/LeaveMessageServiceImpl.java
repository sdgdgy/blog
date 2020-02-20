package com.ljh.blog.service;

import com.ljh.blog.dao.LeaveMessageMapper;
import com.ljh.blog.pojo.About;
import com.ljh.blog.pojo.LeaveMessages;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LeaveMessageServiceImpl implements LeaveMessageService{
    @Autowired
    private LeaveMessageMapper leaveMessageMapper;
    @Override
    public int addLeaveMessage(LeaveMessages leaveMessages) {
        leaveMessageMapper.addLeaveMessage(leaveMessages);
        return 1;
    }

    @Override
    public int deleteLeaveMessage(int id) {
        leaveMessageMapper.deleteLeaveMessage(id);
        return 1;
    }

    @Override
    public int updateLeaveMessage(LeaveMessages leaveMessages) {
        leaveMessageMapper.updateLeaveMessage(leaveMessages);
        return 1;
    }

    @Override
    public List<About> queryLeaveMessageById(int id) {
        return leaveMessageMapper.queryLeaveMessageById(id);
    }

    @Override
    public List<About> queryAllLeaveMessage() {
        return leaveMessageMapper.queryAllLeaveMessage();
    }
}
