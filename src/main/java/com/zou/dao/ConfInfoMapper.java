package com.zou.dao;

import com.zou.pojo.ConferenceInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

public interface ConfInfoMapper {

    // 增加会议信息
    int addConfInfo (ConferenceInfo info);

    // 按照用户Id查询会议信息
    List<ConferenceInfo> queryConfInfoByUId(int UId);

    // 按照用户Id查询会议信息
    List<ConferenceInfo> queryConfInfoByCId(int CId);

    int deleteConfInfo(@Param("UId") int UId,@Param("CId") int CId);

}
