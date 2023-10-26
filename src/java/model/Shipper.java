/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author ACER
 */
public class Shipper {
   private String id;
   private String name;
   private String phone;
   private Date dob;
   private String address;
   private String cccd;
   private String licensePlates;
   private String pwd;
   private String email;

    public Shipper(String id, String name, String phone, Date dob, String address, String cccd, String licensePlates, String pwd,String email) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.dob = dob;
        this.address = address;
        this.cccd = cccd;
        this.licensePlates = licensePlates;
        this.pwd = pwd;
        this.email=email;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCccd() {
        return cccd;
    }

    public void setCccd(String cccd) {
        this.cccd = cccd;
    }

    public String getLicensePlates() {
        return licensePlates;
    }

    public void setLicensePlates(String licensePlates) {
        this.licensePlates = licensePlates;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Shipper{" + "id=" + id + ", name=" + name + ", phone=" + phone + ", dob=" + dob + ", address=" + address + ", cccd=" + cccd + ", licensePlates=" + licensePlates + ", pwd=" + pwd + ", email=" + email + '}';
    }

    
}
