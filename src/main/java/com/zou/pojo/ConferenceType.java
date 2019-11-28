package com.zou.pojo;

import java.sql.Date;

public class ConferenceType {

    // 创建人Id
    private int UId;
    // 会议唯一Id
    private int CId;
    private Date date;
    private String address;
    private String person;
    private String hotel;

    // 是否需要填写以下信息
    private boolean needName;
    private boolean needCompany;
    private boolean needIdentityId;
    private boolean needPhone;
    private boolean needSex;
    private boolean needRoom;

    public ConferenceType(int UId, int CId, Date date, String address, String person, String hotel, boolean needName, boolean needCompany, boolean needIdentityId, boolean needPhone, boolean needSex, boolean needRoom) {
        this.UId = UId;
        this.CId = CId;
        this.date = date;
        this.address = address;
        this.person = person;
        this.hotel = hotel;
        this.needName = needName;
        this.needCompany = needCompany;
        this.needIdentityId = needIdentityId;
        this.needPhone = needPhone;
        this.needSex = needSex;
        this.needRoom = needRoom;
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

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPerson() {
        return person;
    }

    public void setPerson(String person) {
        this.person = person;
    }

    public String getHotel() {
        return hotel;
    }

    public void setHotel(String hotel) {
        this.hotel = hotel;
    }

    public boolean isNeedName() {
        return needName;
    }

    public void setNeedName(boolean needName) {
        this.needName = needName;
    }

    public boolean isNeedCompany() {
        return needCompany;
    }

    public void setNeedCompany(boolean needCompany) {
        this.needCompany = needCompany;
    }

    public boolean isNeedIdentityId() {
        return needIdentityId;
    }

    public void setNeedIdentityId(boolean needIdentityId) {
        this.needIdentityId = needIdentityId;
    }

    public boolean isNeedPhone() {
        return needPhone;
    }

    public void setNeedPhone(boolean needPhone) {
        this.needPhone = needPhone;
    }

    public boolean isNeedSex() {
        return needSex;
    }

    public void setNeedSex(boolean needSex) {
        this.needSex = needSex;
    }

    public boolean isNeedRoom() {
        return needRoom;
    }

    public void setNeedRoom(boolean needRoom) {
        this.needRoom = needRoom;
    }

    @Override
    public String toString() {
        return "ConferenceType{" +
                "UId=" + UId +
                ",CId=" + CId +
                ",date=" + date +
                ",address='" + address + '\'' +
                ",person='" + person + '\'' +
                ",hotel='" + hotel + '\'' +
                ",needName=" + needName +
                ",needCompany=" + needCompany +
                ",needIdentityId=" + needIdentityId +
                ",needPhone=" + needPhone +
                ",needSex=" + needSex +
                ",needRoom=" + needRoom +
                '}';
    }

    public String toStringnew() {
        return "The_detail_of_the_conference:" +
                "UId:" + UId +
                ",CId:" + CId +
                ",date:" + date +
                ",address:" + address +
                ",person:" + person +
                ",hotel:" + hotel;
    }
}
