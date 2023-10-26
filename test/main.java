
import model.DAO;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author ACER
 */
public class main {
    public static void main(String[]agrs){
        DAO dao= new DAO();
        dao.getShipper("S001@gmail.com", "1234");
    }
}
