/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package update;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "updatedonor", urlPatterns = {"/updatedonor"})
public class updatedonor extends HttpServlet {

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
        String donorid=request.getParameter("eid");
        String name = request.getParameter("donor_name");
        String age = request.getParameter("donor_age");
        String gender = request.getParameter("donor_gender");
        String email = request.getParameter("donor_email");
        String pass = request.getParameter("donor_pass");
        String phoneno = request.getParameter("donor_phoneno");
        String city = request.getParameter("donor_city");
        String secque = request.getParameter("donor_seq");
        String ans = request.getParameter("donor_ans");
        String result = DataManager.setData("UPDATE `donor_master` SET `email_id`='"+email+"',`pass`='"+pass+"',`donor_name`='"+name+"',`age`='"+age+"',`gender`='"+gender+"',`phone_no`='"+phoneno+"',`city`='"+city+"',`sec_question`='"+secque+"',`answer`='"+ans+"'WHERE donor_id=" +donorid);
        response.sendRedirect("admin/view-donor.jsp?error=" + result);
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
