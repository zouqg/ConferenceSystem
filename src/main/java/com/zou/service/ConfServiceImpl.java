package com.zou.service;

import com.zou.dao.ConfTypeMapper;
import com.zou.dao.UserMapper;
import com.zou.pojo.ConferenceType;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class ConfServiceImpl {
    
    @Autowired
    private ConfTypeMapper confTypeMapper;

    public void setConfTypeMapper(ConfTypeMapper confTypeMapper) {
        this.confTypeMapper = confTypeMapper;
    }

    public ConfServiceImpl() {
    }

    public ConfTypeMapper getConfTypeMapper() {
        return confTypeMapper;
    }

    // 增加会议
    public int addConfType(ConferenceType conferenceType){
        return confTypeMapper.addConfType(conferenceType);
    }

    // 删除会议
    public int deleteConfTypeByCId(int CId){
        return confTypeMapper.deleteConfTypeByCId(CId);
    }

    // 查询所有会议
    public List<ConferenceType> queryAllConfType(){
        return confTypeMapper.queryAllConfType();
    }

    // 查询会议
    public List<ConferenceType> queryConfTypeByUId(int UId){ return confTypeMapper.queryConfTypeByUId(UId); }

    // 查询会议
    public ConferenceType queryConfTypeByCId(int CId){ return confTypeMapper.queryConfTypeByCId(CId); }
}
