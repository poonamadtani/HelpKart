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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import login.changepass;
import mysrc.DataManager;

/**
 *
 * @author Poonam
 */
@WebServlet(name = "changepassdonor", urlPatterns = {"/changepassdonor"})
public class changepassdonor extends HttpServlet {

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
        String old_pass = request.getParameter("opass");
        String new_pass = request.getParameter("npass");
        String c_new_pass = request.getParameter("cpass");
        HttpSession session = request.getSession();
        ResultSet rs = DataManager.getData("Select pass from donor_master where donor_id='" + session.getAttribute("id") + "'");
        try {
            if (rs.next()) {
                if (rs.getString(1).equals(old_pass)) {
                    if (new_pass.equals(c_new_pass)) {
                        String rows = DataManager.setData("Update donor_master set pass='" + new_pass + "' where donor_id='" + session.getAttribute("id") + "'");
                        response.sendRedirect("donor/changepass.jsp?error=" + rows);
                    } else {
                        response.sendRedirect("donor/changepass.jsp?error=New and Confirm New Password donot match");
                    }
                } else {
                    response.sendRedirect("donor/changepass.jsp?error=Old Password donot match");
                }
            } else {
                response.sendRedirect("donor_login.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(changepass.class.getName()).log(Level.SEVERE, null, ex);
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
