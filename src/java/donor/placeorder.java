/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package donor;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mysrc.DataManager;

/**
 *
 * @author Poonam
 */
@WebServlet(name = "placeorder", urlPatterns = {"/placeorder"})
public class placeorder extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String donorid = session.getAttribute("id").toString();
        String ngoid = request.getParameter("ngo_id");
        Date d1 = new Date();        
        SimpleDateFormat s1 = new SimpleDateFormat("yyyy-MM-dd");
        String orderdate = s1.format(d1);
        String orderstatus = "In Progress";
        String result = DataManager.setData("insert into order_master (`date`, `status`, `donor_id`, `ngo_id`) values('" + orderdate + "','" + orderstatus + "','" + donorid + "','" + ngoid + "')");
        ResultSet result1 = DataManager.getData("select max(order_id) from order_master");
        try {
            if (result1.next()) {
                ResultSet r1 = DataManager.getData("select * from cart where donor_id=" + donorid);
                while (r1.next()) {
                    out.print("INSERT INTO `order_detail`( `order_id`, `product_id`, `qty`, `price`) VALUES ('" + result1.getString(1) + "','" + r1.getString(2) + "','" + r1.getString(6) + "','" + r1.getString(5) + "')");
                    String r2 = DataManager.setData("INSERT INTO `order_detail`( `order_id`, `product_id`, `qty`, `price`) VALUES ('" + result1.getString(1) + "','" + r1.getString(2) + "','" + r1.getString(6) + "','" + r1.getString(5) + "')");
                }
                
                String r3 = DataManager.setData("delete from cart where donor_id=" + donorid);
                    response.sendRedirect("donor/thankyou.jsp");
             
            }
        } catch (SQLException ex) {
            Logger.getLogger(placeorder.class.getName()).log(Level.SEVERE, null, ex);
        }
       // response.sendRedirect("admin/order.jsp?error=" + result);
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
