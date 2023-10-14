/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author ACER
 */
public class DBContext {
    
    public Connection getConnection()throws Exception {
        String url = "jdbc:sqlserver://"+serverName+":"+portNumber +";databaseName="+dbName;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, userId, passWord);
    }
    private final String serverName="DESKTOP-ARH9RDE\\DE170074";
    private final String dbName= "GiaoHangAnToan";
    private final String portNumber="1433";
    private final String instance="";
    private final String userId="sa";
    private final String passWord="sa";
}

