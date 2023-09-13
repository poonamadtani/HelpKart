/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ngo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import login.checkLogin;
import mysrc.DataManager;

/**
 *
 * @author admin
 */
@WebServlet(name = "ngo_login", urlPatterns = {"/ngo_login"})
public class ngo_login extends HttpServlet {

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
       String email = request.getParameter("email");
        String password = request.getParameter("pass");
        ResultSet rs = DataManager.getData("Select * from ngo_master  where email_id='" + email + "' and pass='" + password + "'");
        try {
            if (rs.next()) {
                HttpSession   session = request.getSession();
                session.setAttribute("id", rs.getString(1));
                session.setAttribute("emailid", rs.getString(2));
                session.setAttribute("pass", rs.getString(3));
                session.setAttribute("name", rs.getString(4));
                session.setAttribute("address", rs.getString(5));
                session.setAttribute("phoneno", rs.getString(6));
                session.setAttribute("city", rs.getString(7));
                session.setAttribute("desc", rs.getString(8));
                
                response.sendRedirect("ngo/home.jsp");
            }else{                

                response.sendRedirect("ngo/ngo_login.jsp?error=" +rs);
            }
        } catch (SQLException ex) {
            Logger.getLogger(checkLogin.class.getName()).log(Level.SEVERE, null, ex);
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
