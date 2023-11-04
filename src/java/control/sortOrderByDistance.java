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
import java.util.ArrayList;
import model.DAO;
import model.FeeCalculator;
import model.Order;
import model.Shipper;

/**
 *
 * @author ACER
 */
public class sortOrderByDistance extends HttpServlet {

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
        DAO dao = new DAO();
        HttpSession session = request.getSession();
        ArrayList<Order> orderList = new ArrayList();
        ArrayList<Order> sortList = new ArrayList();
        FeeCalculator fee= new FeeCalculator();
        
        String action = request.getParameter("action");
        Shipper shipper = (Shipper) session.getAttribute("shipper");

        orderList = dao.ordersPickUp(shipper.getId());
        
        float smallDistance = 0;
        String visited= shipper.getAddress();
        while (!orderList.isEmpty()) {
            Order choose= new Order();
            for (Order order : orderList) {
                String distanceString= fee.calculateDistance(visited, order.getSenderAddress());
                float distance= fee.convertDistanceToFloat(distanceString);
                if(smallDistance==0 || distance<smallDistance){
                    choose= order;
                    smallDistance=distance;
                    visited= order.getSenderAddress();
                }
            }
            sortList.add(choose);
            orderList.remove(choose);      
        }
        request.setAttribute("OrderList", sortList);
        request.getRequestDispatcher("PrintShippingRoute.jsp").forward(request, response);
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
        processRequest(request, response);
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
