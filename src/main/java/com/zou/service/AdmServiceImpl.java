package com.zou.service;

import com.zou.dao.AdmMapper;
import com.zou.pojo.Administer;
import org.springframework.beans.factory.annotation.Autowired;

public class AdmServiceImpl {

    @Autowired
    private AdmMapper admMapper;

    public int hadMatch(int AId,String password){
        return admMapper.hasMatch(AId,password);
    }
}
