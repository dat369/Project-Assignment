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
public class Order {

    private int orderID;
    private String cusID;
    private String orderName;
    private String orderPhone;
    private String senderAddress;
    private String orderAddress;
    private Date dateOfDelivery;
    private char orderType;
    private float orderVolume;
    private float orderWeight;
    private char orderDeliveryType;
    private float orderTransaction;
    private String orderStatus;
    private String shipID;
    private String note;
    public Order() {
    }

    public Order(int orderID, String cusID, String orderName, String orderPhone, String senderAddress, String orderAddress, Date dateOfDelivery, char orderType, float orderVolume, float orderWeight, char orderDeliveryType, float orderTransaction, String orderStatus, String shipID,String note) {
        this.orderID = orderID;
        this.cusID = cusID;
        this.orderName = orderName;
        this.orderPhone = orderPhone;
        this.senderAddress = senderAddress;
        this.orderAddress = orderAddress;
        this.dateOfDelivery = dateOfDelivery;
        this.orderType = orderType;
        this.orderVolume = orderVolume;
        this.orderWeight = orderWeight;
        this.orderDeliveryType = orderDeliveryType;
        this.orderTransaction = orderTransaction;
        this.orderStatus = orderStatus;
        this.shipID = shipID;
        this.note= note;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public String getCusID() {
        return cusID;
    }

    public void setCusID(String cusID) {
        this.cusID = cusID;
    }

    public String getOrderName() {
        return orderName;
    }

    public void setOrderName(String orderName) {
        this.orderName = orderName;
    }

    public String getOrderPhone() {
        return orderPhone;
    }

    public void setOrderPhone(String orderPhone) {
        this.orderPhone = orderPhone;
    }

    public String getSenderAddress() {
        return senderAddress;
    }

    public void setSenderAddress(String senderAddress) {
        this.senderAddress = senderAddress;
    }

    public String getOrderAddress() {
        return orderAddress;
    }

    public void setOrderAddress(String orderAddress) {
        this.orderAddress = orderAddress;
    }

    public Date getDateOfDelivery() {
        return dateOfDelivery;
    }

    public void setDateOfDelivery(Date dateOfDelivery) {
        this.dateOfDelivery = dateOfDelivery;
    }

    public String getOrderType() {
        switch (orderType) {
            case 'F':
                return "Fragile";
            case 'B':
                return "Big size";
            case 'C':
                return "Casual";
            default:
                return "Unknown";
        }

    }

    public void setOrderType(Character orderType) {
        this.orderType = orderType;
    }

    public float getOrderVolume() {
        return orderVolume;
    }

    public void setOrderVolume(float orderVolume) {
        this.orderVolume = orderVolume;
    }

    public float getOrderWeight() {
        return orderWeight;
    }

    public void setOrderWeight(float orderWeight) {
        this.orderWeight = orderWeight;
    }

    public String getOrderDeliveryType() {
        switch (orderDeliveryType) {
            case 'N':
                return "Normal";
            case 'F':
                return "Fast";
        }
        return null;
    }

    public void setOrderDeliveryType(char orderDeliveryType) {
        this.orderDeliveryType = orderDeliveryType;
    }

    public float getOrderTransaction() {
        return orderTransaction;
    }

    public void setOrderTransaction(float orderTransaction) {
        this.orderTransaction = orderTransaction;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public String getShipID() {
        return shipID;
    }

    public void setShipID(String shipID) {
        this.shipID = shipID;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
    
    
}
