package com.ljh.blog.service;

import com.ljh.blog.pojo.About;
import com.ljh.blog.pojo.LeaveMessages;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LeaveMessageService {
    int addLeaveMessage(LeaveMessages leaveMessages);

    int deleteLeaveMessage(@Param("id") int id);

    int updateLeaveMessage(LeaveMessages leaveMessages);

    List<About> queryLeaveMessageById(@Param("id")int id);

    List<About> queryAllLeaveMessage();
}
