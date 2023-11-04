/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;
import model.*;

/**
 *
 * @author quang
 */
public class OrderingServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet OrderingServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrderingServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        response.setContentType("text/html;charset=UTF-8");
        try {
            HttpSession session = request.getSession();
            Customer customer = (Customer) session.getAttribute("customer");
            
            String orderName = request.getParameter("orderName");
            String orderPhone = request.getParameter("orderPhone");
            String senderAddress= request.getParameter("senderAddress");
            String orderAddress = request.getParameter("orderAddress");
            Date dateOfDeliveryString = Date.valueOf(request.getParameter("dateOfDelivery"));

            String orderType = request.getParameter("orderType");
            float orderVolume = Float.parseFloat(request.getParameter("orderVolume"));
            float orderWeight = Float.parseFloat(request.getParameter("orderWeight"));
            String orderDeliveryType = request.getParameter("orderShippingType");
            System.out.println(senderAddress+ orderAddress+ orderType+orderVolume+orderDeliveryType);
            FeeCalculator cal= new FeeCalculator();
            float fee = cal.calculateShippingFee(orderType.charAt(0), orderDeliveryType.charAt(0), orderVolume,senderAddress,orderAddress );
            System.out.println(fee);
            String orderStatus = request.getParameter("orderStatus");
            String orderNote= request.getParameter("note");
            DAO dao = new DAO();
            dao.add(customer.getCid(),orderName,orderPhone,orderAddress, dateOfDeliveryString, orderType, orderVolume,orderWeight, orderDeliveryType, fee, orderStatus, orderNote);
            request.getRequestDispatcher("/ordercustomer").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        
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
