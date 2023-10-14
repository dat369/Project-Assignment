/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
/**
 *
 * @author ACER
 */
public class DAO {
    public Shipper getShipper(String user, String pass) {
        
        try {
            String query = "select shipID,name,phone,DOB,address,CCCD,licensePlates,pwd from Shipper where ID=? and pwd=?";
            Connection connection = new DBContext().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            
            preparedStatement.setString(1, user);
            preparedStatement.setString(2, pass);
            ResultSet res = preparedStatement.executeQuery();
            
            while(res.next()) {
                return new  Shipper(res.getString(1),res.getString(2),res.getString(3),res.getDate(4),res.getString(5),res.getString(6),res.getString(7),res.getString(8));
            }
            
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return null;
        
    }
    public ArrayList<Order> getOrder(){
        ArrayList<Order> orderList= new ArrayList<>();
        try {
            String query = "select *,cusAddress from OrderShip join Customer_user\n" +
                            "on Customer_user.cusID= OrderShip.cusID where shipID=?";
            Connection connection = new DBContext().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, "null");
            ResultSet res = preparedStatement.executeQuery();
            
            while(res.next()) {
                orderList.add(new Order(res.getString(1),res.getString(2),res.getString(3),res.getString(4),res.getString(13),res.getString(5),res.getDate(6),res.getString(7),res.getString(8),res.getString(9),res.getString(10),res.getString(11),res.getString(12))) ;
            }
            return orderList;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
}
