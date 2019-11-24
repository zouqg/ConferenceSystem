package com.zou.pojo;

import java.sql.Date;

public class ConferenceInfo {

    // 参加会议的人Id
    private int UId;
    // 参加会议的Id
    private int CId;

    //这些信息可以通过CId获取
//    private Date date;
//    private String address;
//    private String person;
//    private String hotel;

    // 选择填写以下信息
    private String Name;
    private String Company;
    private String IdentityId;
    private String Phone;
    private String Sex;
    private boolean Room;

    public ConferenceInfo(int UId, int CId, String name, String company, String identityId, String phone, String sex, boolean room) {
        this.UId = UId;
        this.CId = CId;
        Name = name;
        Company = company;
        IdentityId = identityId;
        Phone = phone;
        Sex = sex;
        Room = room;
    }

    public ConferenceInfo() {
    }

    public int getUId() {
        return UId;
    }

    public void setUId(int UId) {
        this.UId = UId;
    }

    public int getCId() {
        return CId;
    }

    public void setCId(int CId) {
        this.CId = CId;
    }


    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getCompany() {
        return Company;
    }

    public void setCompany(String company) {
        Company = company;
    }

    public String getIdentityId() {
        return IdentityId;
    }

    public void setIdentityId(String identityId) {
        IdentityId = identityId;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }

    public String getSex() {
        return Sex;
    }

    public void setSex(String sex) {
        Sex = sex;
    }

    public boolean isRoom() {
        return Room;
    }

    public void setRoom(boolean room) {
        Room = room;
    }
}
