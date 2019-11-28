package com.zou.dao;

import com.zou.pojo.ConferenceType;

import java.util.List;

public interface ConfTypeMapper {

    // 增加会议
    int addConfType(ConferenceType conferenceType);

    // 删除会议
    int deleteConfTypeByCId(int CId);

    // 查询所有会议
    List<ConferenceType> queryAllConfType();

    // 查询会议
    List<ConferenceType> queryConfTypeByUId(int UId);

    // 查询会议
    ConferenceType queryConfTypeByCId(int CId);
}
