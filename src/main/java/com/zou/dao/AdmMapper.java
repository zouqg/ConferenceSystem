package com.zou.dao;

import com.zou.pojo.Administer;
import org.apache.ibatis.annotations.Param;

public interface AdmMapper {
    int hasMatch(@Param("AId")int AId, @Param("password")String password);
}
