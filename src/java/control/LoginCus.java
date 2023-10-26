/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Customer;
import model.DAO;

/**
 *
 * @author ACER
 */
public class LoginCus extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
        response.setContentType("text/html;charset=UTF-8");
        String email = request.getParameter("email");
        String pwd = request.getParameter("password");
        DAO dao = new DAO();
        HttpSession session = request.getSession();
        String remember = request.getParameter("rememberMe");
        
        Customer customer = dao.getCustomer(email, pwd);
        if (customer != null) {
            if (remember != null) {
                Cookie cookieU = new Cookie("user", email);
                cookieU.setMaxAge(7 * 24 * 60 * 60);
                response.addCookie(cookieU);

                Cookie cookieP = new Cookie("pass", pwd);
                cookieP.setMaxAge(7 * 24 * 60 * 60);
                response.addCookie(cookieP);
            }
            session.setAttribute("customer", customer);
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        } else {
            request.setAttribute("CustomerLoginFailed", "User Name or Pass Word is Invalid.");
            request.getRequestDispatcher("/index.jsp").forward(request, response);
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
