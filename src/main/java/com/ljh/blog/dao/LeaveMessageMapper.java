package com.ljh.blog.dao;

import com.ljh.blog.pojo.About;
import com.ljh.blog.pojo.LeaveMessages;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface LeaveMessageMapper {
    int addLeaveMessage(LeaveMessages leaveMessages);

    int deleteLeaveMessage(@Param("id") int id);

    int updateLeaveMessage(LeaveMessages leaveMessages);

    List<About> queryLeaveMessageById(@Param("id")int id);

    List<About> queryAllLeaveMessage();
}
