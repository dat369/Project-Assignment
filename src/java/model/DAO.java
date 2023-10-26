/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.Date;


/**
 *
 * @author ACER
 */
public class DAO {

    public Shipper getShipper(String email, String pass) {

        try {
            String query = "select * from Shipper where email=? and pwd=?";
            Connection connection = new DBContext().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);

            preparedStatement.setString(1, email);
            preparedStatement.setString(2, pass);
            ResultSet res = preparedStatement.executeQuery();
            while (res.next()) {
                return new Shipper(res.getString(1), res.getString(2), res.getString(3), res.getDate(4), res.getString(5), res.getString(6), res.getString(7), res.getString(8), res.getString(9));
            }
            res.close();
            preparedStatement.close();
        } catch (Exception e) {
            System.out.println(e);
        }

        return null;

    }

    public Customer getCustomer(String email, String pass) {
        try {
            String query = "select * from Customer_user where email=? and pwd=?";
            Connection connection = new DBContext().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);

            preparedStatement.setString(1, email);
            preparedStatement.setString(2, pass);
            ResultSet res = preparedStatement.executeQuery();
            while (res.next()) {
                return new Customer(res.getString(1), res.getString(2), res.getString(3), res.getDate(4), res.getString(5), res.getString(6), res.getString(7));
            }
            res.close();
            preparedStatement.close();
        } catch (Exception e) {
            System.out.println(e);
        }

        return null;

    }

    public ArrayList<Order> getOrder() {
        ArrayList<Order> orderList = new ArrayList<>();
        try {
            String query = "SELECT OrderShip.*, Customer_user.cusAddress \n"
                    + "FROM OrderShip \n"
                    + "JOIN Customer_user ON Customer_user.cusID = OrderShip.cusID \n"
                    + "WHERE OrderShip.shipID IS NULL;";
            Connection connection = new DBContext().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet res = preparedStatement.executeQuery();

            while (res.next()) {
                orderList.add(new Order(res.getString(1), res.getString(2), res.getString(3), res.getString(4), res.getString(13), res.getString(5), res.getDate(12), res.getString(6), res.getString(7), res.getString(8), res.getString(9), res.getString(10), res.getString(11)));
            }
            res.close();
            preparedStatement.close();
            return orderList;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public void updateInfor(String id, String name, String phone, Date dob, String address, String cccd, String licensePlates) {
        try {
            String query = "update Shipper set shipName=? , shipPhone=? ,DOB=?, shipAddress=?, CCCD=?, licensePlates=?  where shipID=?";
            Connection connection = new DBContext().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, phone);
            preparedStatement.setDate(3, dob);
            preparedStatement.setString(4, address);
            preparedStatement.setString(5, cccd);
            preparedStatement.setString(6, licensePlates);
            preparedStatement.setString(7, id);
            preparedStatement.executeQuery();
            preparedStatement.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean isEmailExits(String email) {
        try {
            String query = "{CALL dbo.CheckEmailExists(?)}";
            Connection connection = new DBContext().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(2, email);
            ResultSet res = preparedStatement.executeQuery();
            int exits= res.getInt(1);
            if(exits==1){
                return true;
            }else return false;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public int countCus(){
        try {
            String query = "SELECT COUNT(*) as count FROM Customer_user";
            Connection connection = new DBContext().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet res = preparedStatement.executeQuery();
            if(res.next()){
                return res.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    public void addCustomer(String cid, String cusName, String cusPhone,Date dob, String cusAddress, String pwd,String email){
        try {
            String query = "insert into Customer_user(cusID,cusName,cusPhone,DOB,cusAddress,pwd,email )\n"
                    +"values (?,?,?,?,?,?,?)";
            Connection connection = new DBContext().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, cid);
            preparedStatement.setString(2, cusName);
            preparedStatement.setString(3, cusPhone);
            preparedStatement.setDate(4, dob);
            preparedStatement.setString(5, cusAddress);
            preparedStatement.setString(6, pwd);
            preparedStatement.setString(7, email);
            preparedStatement.executeQuery();
            preparedStatement.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
