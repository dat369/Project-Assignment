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
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ACER
 */
public class DAO {

    public void add(String cusID, String orderName, String orderPhone, String orderAddress, Date dateOfDelivery, String orderType, float orderVolume, float orderWeight, String orderDeliveryType, float orderTransaction, String shipID, String note){
        try {

            String sql = "INSERT INTO OrderShip (cusID, orderName, orderPhone, orderAddress, orderDate, orderType, orderVolume,orderWeight,orderDeliveryType,orderTransaction,orderStatus, note) VALUES (?,?,?,?,?,?,?,?,?,?,?,?);";
            Connection connection = new DBContext().getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, cusID);
            ps.setString(2, orderName);
            ps.setString(3, orderPhone);
            ps.setString(4, orderAddress);
            ps.setDate(5, dateOfDelivery);
            ps.setString(6, Character.toString(orderType.charAt(0)));
            ps.setFloat(7, orderVolume);
            ps.setFloat(8, orderWeight);
            ps.setString(9, Character.toString(orderDeliveryType.charAt(0)));
            ps.setFloat(10, orderTransaction);
            ps.setString(11, "Shipper đang lấy hàng");
            ps.setString(12, note);
            ps.execute();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ArrayList<Order> getAllOrdersByCusId(String id) throws SQLException, Exception {
        ArrayList<Order> orders = new ArrayList<>();
        try {
            String sql = "SELECT OrderShip.*, Customer_user.cusAddress \n"
                    + "FROM OrderShip \n"
                    + "JOIN Customer_user ON Customer_user.cusID = OrderShip.cusID \n"
                    + "WHERE OrderShip.cusID=? and OrderShip.orderStatus!=?;";
            Connection connection = new DBContext().getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, "Đơn hàng đã giao thành công");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order order = new Order();
                order.setOrderID(rs.getInt(1));
                order.setCusID(rs.getString(2));
                order.setOrderName(rs.getString(3));
                order.setOrderPhone(rs.getString(4));
                order.setSenderAddress(rs.getString(15));
                order.setOrderAddress(rs.getString(5));
                order.setDateOfDelivery(rs.getDate(6));
                order.setOrderType(rs.getString(7).charAt(0));
                order.setOrderVolume(rs.getFloat(8));
                order.setOrderWeight(rs.getFloat(9));
                order.setOrderDeliveryType(rs.getString(13).charAt(0));
                order.setOrderStatus(rs.getString(11));
                order.setOrderTransaction(rs.getFloat(10));
                order.setShipID(rs.getString(12));
                order.setNote(rs.getString(14));
                orders.add(order);
            }
            connection.close();
            return orders;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Order> getAllOrdersByCusIdFinish(String id) throws SQLException, Exception {
        ArrayList<Order> orders = new ArrayList<>();
        try {
            String sql = "SELECT OrderShip.*, Customer_user.cusAddress \n"
                    + "FROM OrderShip \n"
                    + "JOIN Customer_user ON Customer_user.cusID = OrderShip.cusID \n"
                    + "WHERE OrderShip.cusID=? and OrderShip.orderStatus=?;";
            Connection connection = new DBContext().getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, "Đơn hàng đã giao thành công");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order order = new Order();
                order.setOrderID(rs.getInt(1));
                order.setCusID(rs.getString(2));
                order.setOrderName(rs.getString(3));
                order.setOrderPhone(rs.getString(4));
                order.setSenderAddress(rs.getString(15));
                order.setOrderAddress(rs.getString(5));
                order.setDateOfDelivery(rs.getDate(12));
                order.setOrderType(rs.getString(6).charAt(0));
                order.setOrderVolume(rs.getFloat(7));
                order.setOrderWeight(rs.getFloat(8));
                order.setOrderDeliveryType(rs.getString(13).charAt(0));
                order.setOrderStatus(rs.getString(10));
                order.setOrderTransaction(rs.getFloat(9));
                order.setShipID(rs.getString(11));
                order.setNote(rs.getString(14));
                orders.add(order);
            }
            connection.close();
            return orders;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void rateShipper(ShipperEvaluation spe) {
        try {
            String sql = "INSERT INTO ShipperEvaluation(orderStar,orderNote) values (?,?,?);";
            Connection connection = new DBContext().getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, spe.orderID);
            ps.setInt(2, spe.orderStar);
            ps.setString(3, spe.orderNote);
            ps.execute();
            ps.close();
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Shipper getShipper(String email, String pass) {

        try {
            String query = "select shipID,shipName,shipPhone,DOB,shipAddress,CCCD,licensePlates,pwd,email from Shipper where email=? and pwd=? and status=?";
            Connection connection = new DBContext().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);

            preparedStatement.setString(1, email);
            preparedStatement.setString(2, pass);
            preparedStatement.setString(3, "A");
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
                    + "WHERE OrderShip.shipID is null;";
            Connection connection = new DBContext().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet res = preparedStatement.executeQuery();
            while (res.next()) {
                orderList.add(new Order(res.getInt(1), res.getString(2), res.getString(3), res.getString(4), res.getString(15), res.getString(5), res.getDate(6), res.getString(7).charAt(0), res.getFloat(8), res.getFloat(9), res.getString(13).charAt(0), res.getFloat(10), res.getString(11), res.getString(12), res.getString(14)));
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

    public void changePwd(String shipId, String email, String pass) {
        try {
            String query = "update Shipper set email=? , pwd=? where shipID=?";
            Connection connection = new DBContext().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, pass);
            preparedStatement.setString(3, shipId);
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
            int exits = res.getInt(1);
            if (exits == 1) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public int countCus() {
        try {
            String query = "SELECT COUNT(*) as count FROM Customer_user";
            Connection connection = new DBContext().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet res = preparedStatement.executeQuery();
            if (res.next()) {
                return res.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public void addCustomer(String cid, String cusName, String cusPhone, Date dob, String cusAddress, String pwd, String email) {
        try {
            String query = "insert into Customer_user(cusID,cusName,cusPhone,DOB,cusAddress,pwd,email )\n"
                    + "values (?,?,?,?,?,?,?)";
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

    public void acceptOrder(String shipId, int orderId) {
        try {
            String query = "update OrderShip set shipID=?  where orderID=?";
            Connection connection = new DBContext().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, shipId);
            preparedStatement.setInt(2, orderId);
            preparedStatement.executeQuery();
            preparedStatement.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean raceCondition(int orderId) {
        try {
            String query = "select shipID from OrderShip where orderID=?";
            Connection connection = new DBContext().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, orderId);
            ResultSet res = preparedStatement.executeQuery();

            if (!res.next()) {
                return true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public ArrayList<Order> ordersOfShipper(String shipId) {

        ArrayList<Order> orderList = new ArrayList<>();
        try {
            String query = "SELECT OrderShip.*, Customer_user.cusAddress \n"
                    + "FROM OrderShip \n"
                    + "JOIN Customer_user ON Customer_user.cusID = OrderShip.cusID \n"
                    + "WHERE OrderShip.shipID=?;";
            Connection connection = new DBContext().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, shipId);
            ResultSet res = preparedStatement.executeQuery();

            while (res.next()) {
                orderList.add(new Order(res.getInt(1), res.getString(2), res.getString(3), res.getString(4), res.getString(15), res.getString(5), res.getDate(6), res.getString(7).charAt(0), res.getFloat(8), res.getFloat(9), res.getString(13).charAt(0), res.getFloat(10), res.getString(11), res.getString(12), res.getString(14)));
            }
            res.close();
            preparedStatement.close();
            return orderList;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Order> ordersStatus(String shipId) {

        ArrayList<Order> orderList = new ArrayList<>();
        try {
            String query = "SELECT OrderShip.*, Customer_user.cusAddress \n"
                    + "FROM OrderShip \n"
                    + "JOIN Customer_user ON Customer_user.cusID = OrderShip.cusID \n"
                    + "WHERE OrderShip.shipID=? and OrderShip.orderStatus!=?";
            Connection connection = new DBContext().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, shipId);
            preparedStatement.setString(2, "Đơn hàng đã giao thành công");
            ResultSet res = preparedStatement.executeQuery();

            while (res.next()) {
                orderList.add(new Order(res.getInt(1), res.getString(2), res.getString(3), res.getString(4), res.getString(15), res.getString(5), res.getDate(6), res.getString(7).charAt(0), res.getFloat(8), res.getFloat(9), res.getString(13).charAt(0), res.getFloat(10), res.getString(11), res.getString(12), res.getString(14)));
            }
            res.close();
            preparedStatement.close();
            return orderList;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Order> ordersPickUp(String shipId) {

        ArrayList<Order> orderList = new ArrayList<>();
        try {
            String query = "SELECT OrderShip.*, Customer_user.cusAddress \n"
                    + "FROM OrderShip \n"
                    + "JOIN Customer_user ON Customer_user.cusID = OrderShip.cusID \n"
                    + "WHERE OrderShip.shipID=? and OrderShip.orderStatus=?";
            Connection connection = new DBContext().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, shipId);
            preparedStatement.setString(2, "Shipper đang lấy hàng");
            ResultSet res = preparedStatement.executeQuery();

            while (res.next()) {
                orderList.add(new Order(res.getInt(1), res.getString(2), res.getString(3), res.getString(4), res.getString(15), res.getString(5), res.getDate(6), res.getString(7).charAt(0), res.getFloat(8), res.getFloat(9), res.getString(13).charAt(0), res.getFloat(10), res.getString(11), res.getString(12), res.getString(14)));
            }
            res.close();
            preparedStatement.close();
            return orderList;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public void updateOrderStatus(int id, String status) {
        try {
            String query = "update OrderShip set orderStatus=?  where orderID=?";
            Connection connection = new DBContext().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, status);
            preparedStatement.setInt(2, id);
            preparedStatement.executeQuery();
            preparedStatement.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
