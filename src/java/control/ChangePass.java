/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Customer;
import model.DAO;
import model.Shipper;

/**
 *
 * @author ACER
 */
public class ChangePass extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

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
        processRequest(request, response);
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
        Shipper shipper = (Shipper) session.getAttribute("shipper");
        Customer customer = (Customer) session.getAttribute("customer");

        if (shipper != null) {
            String email = request.getParameter("email");
            String oldPwd = request.getParameter("OldPassword");
            String newPwd = request.getParameter("NewPass");
            String confirmPwd = request.getParameter("ConfrimPass");

            if (newPwd.equals(confirmPwd)) {
                if (shipper.getEmail().equals(email) && shipper.getPwd().equals(oldPwd)) {
                    dao.changePwd(shipper.getId(), email, newPwd);
                    request.getRequestDispatcher("/ordersofship?action=yourlist").forward(request, response);
                } else {
                    request.setAttribute("MSG", "Invalid email or password");
                    request.getRequestDispatcher("ChangePass.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("MSG", "New pass and confirm pass must constain.");
                request.getRequestDispatcher("ChangePass.jsp").forward(request, response);
            }
        }else{
            String email = request.getParameter("email");
            String oldPwd = request.getParameter("OldPassword");
            String newPwd = request.getParameter("NewPass");
            String confirmPwd = request.getParameter("ConfrimPass");
            
            if (newPwd.equals(confirmPwd)) {
                if (customer.getEmail().equals(email) && customer.getPwd().equals(oldPwd)) {
                    dao.changePwd(customer.getCid(), email, newPwd);
                    request.getRequestDispatcher("/history").forward(request, response);
                } else {
                    request.setAttribute("MSG", "Invalid email or password");
                    request.getRequestDispatcher("ChangePass.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("MSG", "New pass and confirm pass must constain.");
                request.getRequestDispatcher("ChangePass.jsp").forward(request, response);
            }
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
