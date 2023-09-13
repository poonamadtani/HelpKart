/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package insert;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mysrc.DataManager;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author AI-LAPTOP
 */
@WebServlet(name = "addprocat", urlPatterns = {"/addprocat"})
public class addprocat extends HttpServlet {

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
        
        if (ServletFileUpload.isMultipartContent(request)) {
            
            String imagename = "";
            String catname = "";
            String desc = "";
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            List items;
            try {
                items = upload.parseRequest(request);
                Iterator i1 = items.iterator();
                while (i1.hasNext()) {
                    FileItem fi = (FileItem) i1.next();
                    if (fi.isFormField()) {
                        if (fi.getFieldName().equals("procat_name")) {
                            catname = fi.getString();
                        } else if (fi.getFieldName().equals("procat_desc")) {
                            desc = fi.getString();
                            
                        }
                    } else {
                        imagename = fi.getName();
                        File f1 = new File(getServletContext().getRealPath("/") + "procatphotos\\" + imagename);
                        fi.write(f1);
                    }
                }
                
                String result = DataManager.setData("insert into product_cat(`cat_name`,`description`,`cat_image`) values('" + catname + "','" + desc + "','" + imagename + "')");
                response.sendRedirect("admin/product_cat.jsp?error=" + result);
            } catch (FileUploadException ex) {
               
                Logger.getLogger(addngophotos.class.getName()).log(Level.SEVERE, null, ex);
            } catch (Exception ex) {
                
                Logger.getLogger(addngophotos.class.getName()).log(Level.SEVERE, null, ex);
            }

        } else {
            out.print("error");
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
