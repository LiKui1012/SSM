package com.qcby.model;

import java.io.Serializable;

public class Emp implements Serializable {
    private Integer id;

    private String name;

    private String sex;

    private String idcard;

    private String station;

    private Double salary;


    private String remark;

    private String tel;

    private String address;

    @Override
    public String toString() {
        return "Emp{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", idcard='" + idcard + '\'' +
                ", station='" + station + '\'' +
                ", salary=" + salary +
                ", remark='" + remark + '\'' +
                ", tel='" + tel + '\'' +
                ", address='" + address + '\'' +
                '}';
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard == null ? null : idcard.trim();
    }

    public String getStation() {
        return station;
    }

    public void setStation(String station) {
        this.station = station == null ? null : station.trim();
    }

    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }
}