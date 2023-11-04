/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author quang
 */
public class ShipperEvaluation {
    int orderID;
    int orderStar;
    String orderNote;

    public ShipperEvaluation() {
    }

    public ShipperEvaluation(int orderID, int orderStar, String orderNote) {
        this.orderID=orderID;
        this.orderStar = orderStar;
        this.orderNote = orderNote;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }
    

    public int getOrderStar() {
        return orderStar;
    }

    public void setOrderStar(int orderStar) {
        this.orderStar = orderStar;
    }

    public String getOrderNote() {
        return orderNote;
    }

    public void setOrderNote(String orderNote) {
        this.orderNote = orderNote;
    }
    
}
