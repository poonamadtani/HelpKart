/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package insert;

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
@WebServlet(name = "adddonor", urlPatterns = {"/adddonor"})
public class adddonor extends HttpServlet {

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
        String name = request.getParameter("donor_name");
        String age = request.getParameter("donor_age");
        String gender = request.getParameter("donor_gender");
        String email = request.getParameter("donor_email");
        String pass = request.getParameter("donor_pass");
        String phoneno = request.getParameter("donor_phoneno");
        String city = request.getParameter("donor_city");
        String secque = request.getParameter("donor_seq");
        String ans = request.getParameter("donor_ans");
        String result = DataManager.setData("insert into donor_master (`email_id`, `pass`, `donor_name`, `age`, `gender`, `phone_no`, `city`, `sec_question`, `answer`) values('"+email+"','"+pass+"','"+name+"','"+age+"','"+gender+"','"+phoneno+"','"+city+"','"+secque+"','"+ans+"')");
        response.sendRedirect("admin/donor_regis.jsp?error=" + result);
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
