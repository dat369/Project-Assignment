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
import java.text.ParseException;
import java.sql.Date;
import model.DAO;
import model.Shipper;

/**
 *
 * @author ACER
 */
public class Update extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     * @throws ParseException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session= request.getSession();
        Shipper shipper= (Shipper) session.getAttribute("shipper");

        String name = request.getParameter("name");
        shipper.setName(name);
        String phone = request.getParameter("phone");
        shipper.setPhone(phone);
        Date dob= Date.valueOf(request.getParameter("dob"));
        shipper.setDob(dob);
        String city = request.getParameter("city");
        String specificAddress = request.getParameter("specificAddress");
        shipper.setAddress( specificAddress+", "+city);
        String cccd = request.getParameter("cccd");
        shipper.setCccd(cccd);
        String licensePlates = request.getParameter("licensePlates");
        shipper.setLicensePlates(licensePlates);
        session.setAttribute("shipper", shipper);
        
        DAO dao= new DAO();
        dao.updateInfor(shipper.getId(), name, phone, dob, specificAddress+", "+city, cccd, licensePlates);
        request.getRequestDispatcher("ShowOrderOfShipper.jsp").forward(request, response);
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
