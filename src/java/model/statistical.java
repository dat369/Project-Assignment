/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ACER
 */
public class statistical {
    private String shipID;
    private String shipName;
    private int numberOrder;
    private double sumTransaction;

    public statistical(String shipID, String shipName, int numberOrder, double sumTransaction) {
        this.shipID = shipID;
        this.shipName = shipName;
        this.numberOrder = numberOrder;
        this.sumTransaction = sumTransaction;
    }

    public String getShipID() {
        return shipID;
    }

    public void setShipID(String shipID) {
        this.shipID = shipID;
    }

    public String getShipName() {
        return shipName;
    }

    public void setShipName(String shipName) {
        this.shipName = shipName;
    }

    public int getNumberOrder() {
        return numberOrder;
    }

    public void setNumberOrder(int numberOrder) {
        this.numberOrder = numberOrder;
    }

    public double getSumTransaction() {
        return sumTransaction;
    }

    public void setSumTransaction(double sumTransaction) {
        this.sumTransaction = sumTransaction;
    }
    
}
