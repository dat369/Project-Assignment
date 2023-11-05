/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ACER
 */
public class StatisticalEvaluate {
    private String shipID;
    private String name;
    private int numberOrder;
    private int numberStar;
    private int number1Star;

    public StatisticalEvaluate() {
    }

    public StatisticalEvaluate(String shipID, String name, int numberOrder, int numberStar, int number1Star) {
        this.shipID = shipID;
        this.name = name;
        this.numberOrder = numberOrder;
        this.numberStar = numberStar;
        this.number1Star = number1Star;
    }

    public String getShipID() {
        return shipID;
    }

    public void setShipID(String shipID) {
        this.shipID = shipID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNumberOrder() {
        return numberOrder;
    }

    public void setNumberOrder(int numberOrder) {
        this.numberOrder = numberOrder;
    }

    public int getNumberStar() {
        return numberStar;
    }

    public void setNumberStar(int numberStar) {
        this.numberStar = numberStar;
    }

    public int getNumber1Star() {
        return number1Star;
    }

    public void setNumber1Star(int number1Star) {
        this.number1Star = number1Star;
    }
    
}
