package com.zou.service;

import com.zou.dao.ConfInfoMapper;
import com.zou.pojo.ConferenceInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class ConfInfoServiceImpl {

    @Autowired
    private ConfInfoMapper infoMapper;

    public ConfInfoMapper getInfoMapper() {
        return infoMapper;
    }

    public void setInfoMapper(ConfInfoMapper infoMapper) {
        this.infoMapper = infoMapper;
    }

    int addConfInfo (ConferenceInfo info){
        return infoMapper.addConfInfo(info);
    }

    // 按照用户Id查询会议信息
    public List<ConferenceInfo> queryConfInfoByUId(int UId){
        System.out.println(infoMapper.queryConfInfoByUId(UId));
        return infoMapper.queryConfInfoByUId(UId);
    }

    // 按照用户Id查询会议信息
    public List<ConferenceInfo> queryConfInfoByCId(int CId){
        return infoMapper.queryConfInfoByCId(CId);
    }

    public int deleteConfInfo(int UId, int CId){
        return infoMapper.deleteConfInfo(UId,CId);
    }
}
