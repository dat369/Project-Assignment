/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.DAO;
import model.Shipper;

/**
 *
 * @author ACER
 */
public class LoginShip extends HttpServlet {

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
        DAO dao = new DAO();
        HttpSession session = request.getSession();
        Cookie[] cookies = request.getCookies();
        String email = request.getParameter("email");
        String pwd = request.getParameter("password");

        Shipper shipper = dao.getShipper(email, pwd);

        String remember = request.getParameter("rememberMe");

        if (shipper == null) {
            request.setAttribute("ShipperLoginFailed", "User Name or Pass Word is Invalid.");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            if (remember != null) {
                Cookie cookieU = new Cookie("user", email);
                cookieU.setMaxAge(7 * 24 * 60 * 60);
                response.addCookie(cookieU);

                Cookie cookieP = new Cookie("pass", pwd);
                cookieP.setMaxAge(7 * 24 * 60 * 60);
                response.addCookie(cookieP);
            }
            session.setAttribute("shipper", shipper);
            request.getRequestDispatcher("/ShowInforShip.jsp").forward(request, response);
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
