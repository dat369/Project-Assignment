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
import model.Order;
import model.Shipper;

/**
 *
 * @author ACER
 */
public class OrderOfShip extends HttpServlet {

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

        String action = request.getParameter("action");
        Shipper shipper = (Shipper) session.getAttribute("shipper");

        if (action.equals("yourlist")) {
            orderList = dao.ordersOfShipper(shipper.getId());
            if (orderList.isEmpty()) {
                request.getRequestDispatcher("ShowOrderOfShipper.jsp").forward(request, response);
            } else {
                request.setAttribute("OrderList", orderList);
                request.getRequestDispatcher("ShowOrderOfShipper.jsp").forward(request, response);
            }

        } else if (action.equals("update")) {
            orderList = dao.ordersStatus(shipper.getId());
            if (orderList.isEmpty()) {
                request.getRequestDispatcher("UpdateProgress.jsp").forward(request, response);
            } else {
                request.setAttribute("OrderList", orderList);
                request.getRequestDispatcher("UpdateProgress.jsp").forward(request, response);
            }

        } else {
            orderList = dao.getOrder();
            if (orderList.isEmpty()) {
                request.getRequestDispatcher("showOrder.jsp").forward(request, response);
            } else {
                String[] shipperAddress = shipper.getAddress().split(",");
                String shipperCity = shipperAddress[shipperAddress.length - 1].trim();

                for (int i = 0; i < orderList.size(); i++) {
                    String[] orderCity = orderList.get(i).getSenderAddress().split(",");
                    if (!shipperCity.equals(orderCity[orderCity.length - 1].trim())) {
                        orderList.remove(orderList.get(i));
                    }
                }

                request.setAttribute("OrderList", orderList);
                request.getRequestDispatcher("showOrder.jsp").forward(request, response);
            }

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
