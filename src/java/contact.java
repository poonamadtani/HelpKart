/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.NoSuchProviderException;
import javax.mail.internet.AddressException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mysrc.DataManager;

/**
 *
 * @author admin
 */
@WebServlet(urlPatterns = {"/contact"})
public class contact extends HttpServlet {

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
        String form_name = request.getParameter("form_name");
        String form_email = request.getParameter("form_email");
        String form_subject = request.getParameter("form_subject");
        String form_phone = request.getParameter("form_phone");
        String form_message = request.getParameter("form_message");

        String text = "<table>"
                + "<tr>"
                + "<td>Name</td>"
                + "<td>" + form_name + "</td></tr>"
                + "<tr><td>Email</td>"
                + "<td>" + form_email + "</td></tr>"
                + "<tr><td>Subject</td>"
                + "<td>" + form_subject + "</td></tr>"
                + "<tr><td>Phone</td>"
                + "<td>" + form_phone + "</td></tr>"
                + "<tr><td>Message</td>"
                + "<td>" + form_message + "</td>"
                + "</tr>"
                + "</table>";
        
        DataManager dm = new DataManager();
        try {
            dm.sendMail("poonamadtani95@gmail.com", "Contact Form", text);
            response.sendRedirect("ngo/contactus.jsp");
        } catch (NoSuchProviderException ex) {
            Logger.getLogger(contact.class.getName()).log(Level.SEVERE, null, ex);
        } catch (AddressException ex) {
            Logger.getLogger(contact.class.getName()).log(Level.SEVERE, null, ex);
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