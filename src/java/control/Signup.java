/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import model.Customer;
import model.DAO;

/**
 *
 * @author ACER
 */
public class Signup extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAO dao= new DAO();
        HttpSession session= request.getSession();
        int count= dao.countCus()+1;
        String cid="C"+ count;
        String cusName=request.getParameter("name");
        String cusPhone =request.getParameter("phone");
        Date dob= Date.valueOf(request.getParameter("dob"));
        String city = request.getParameter("city");
        String specificAddress = request.getParameter("specificAddress");
        String pwd =request.getParameter("password");
        String confirmPwd= request.getParameter("confirmPassword");
        String email =request.getParameter("email");

        // Biểu thức chính quy kiểm tra định dạng email
        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";

        Pattern pattern = Pattern.compile(emailRegex);
        Matcher matcher = pattern.matcher(email);
        boolean emailExits= dao.isEmailExits(email);
        if(matcher.matches()) {
            if(!emailExits){
                if(pwd.equals(confirmPwd)){
                    dao.addCustomer(cid, cusName, cusPhone, dob, specificAddress+","+city, pwd, email);
                    Customer customer= new Customer(cid, cusName, cusPhone, dob, specificAddress+","+city, pwd, email);
                    session.setAttribute("customer", customer);
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }else{
                    request.setAttribute("MSG", "Pass Word are not Confirm");
                    request.getRequestDispatcher("signup.jsp").forward(request, response);
                }
            }else{
                request.setAttribute("MSG", "Email has Exits");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            }
        }else{
            request.setAttribute("MSG", "Format email was wrong!");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
