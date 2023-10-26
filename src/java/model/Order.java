/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author ACER
 */
public class Order {
    private String orderID;
    private String cusID;
    private String orderName;
    private String orderPhone;
    private String senderAddress;
    private String orderAddress;
    private Date dateOfDelivery;
    private String orderType;
    private String orderHeight;
    private String orderPaid;
    private String orderTransaction;
    private String orderStatus;
    private String shipID;

    public Order(String orderID, String cusID, String orderName, String orderPhone,String senderAddress, String orderAddress, Date dateOfDelivery, String orderType, String orderHeight, String orderPaid, String orderTransaction, String orderStatus, String shipID) {
        this.orderID = orderID;
        this.cusID = cusID;
        this.orderName = orderName;
        this.orderPhone = orderPhone;
        this.senderAddress= senderAddress;
        this.orderAddress = orderAddress;
        this.dateOfDelivery = dateOfDelivery;
        this.orderType = orderType;
        this.orderHeight = orderHeight;
        this.orderPaid = orderPaid;
        this.orderTransaction = orderTransaction;
        this.orderStatus = orderStatus;
        this.shipID = shipID;
    }

    public String getOrderID() {
        return orderID;
    }

    public void setOrderID(String orderID) {
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
        return orderType;
    }

    public void setOrderType(String orderType) {
        this.orderType = orderType;
    }

    public String getOrderHeight() {
        return orderHeight;
    }

    public void setOrderHeight(String orderHeight) {
        this.orderHeight = orderHeight;
    }

    public String getOrderPaid() {
        return orderPaid;
    }

    public void setOrderPaid(String orderPaid) {
        this.orderPaid = orderPaid;
    }

    public String getOrderTransaction() {
        return orderTransaction;
    }

    public void setOrderTransaction(String orderTransaction) {
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

    @Override
    public String toString() {
        return "Order{" + "orderID=" + orderID + ", cusID=" + cusID + ", orderName=" + orderName + ", orderPhone=" + orderPhone + ", senderAddress=" + senderAddress + ", orderAddress=" + orderAddress + ", dateOfDelivery=" + dateOfDelivery + ", orderType=" + orderType + ", orderHeight=" + orderHeight + ", orderPaid=" + orderPaid + ", orderTransaction=" + orderTransaction + ", orderStatus=" + orderStatus + ", shipID=" + shipID + '}';
    }
    
}
