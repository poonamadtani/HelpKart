/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package update;

import insert.addngophotos;
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
@WebServlet(name = "updateprodetail", urlPatterns = {"/updateprodetail"})
public class updateprodetail extends HttpServlet {

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
            String eid = "";
            String imagename = "";
            String catid = "";
            String name = "";
            String price = "";
            String qty = "";
            String unitid = "";
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
                        if (fi.getFieldName().equals("pro_name")) {
                            name = fi.getString();
                        } else if (fi.getFieldName().equals("pro_desc")) {
                            desc = fi.getString();
                        } else if (fi.getFieldName().equals("pro_price")) {
                            price = fi.getString();
                        } else if (fi.getFieldName().equals("pro_qty")) {
                            qty = fi.getString();
                        } else if (fi.getFieldName().equals("unit_id")) {
                            unitid = fi.getString();
                        } else if (fi.getFieldName().equals("cat_id")) {
                            catid = fi.getString();
                        }else if (fi.getFieldName().equals("eid")) {
                            eid = fi.getString();
                        }
                    } else {
                        imagename = fi.getName();
                        if (!imagename.equals("")) {
                            File f1 = new File(getServletContext().getRealPath("/") + "productphotos\\" + imagename);
                            fi.write(f1);
                        }
                    }
                }
                String result = "";
                if (!imagename.equals("")) {
                    result = DataManager.setData("UPDATE `product_detail` SET `cat_id`='" + catid + "',`product_name`='" + name + "',`price`='" + price + "',`qty`='" + qty + "',`description`='" + desc + "',`product_image`='" + imagename + "',`unit_id`='" + unitid + "' WHERE product_id=" + eid);
                } else {
                    result = DataManager.setData("UPDATE `product_detail` SET `cat_id`='" + catid + "',`product_name`='" + name + "',`price`='" + price + "',`qty`='" + qty + "',`description`='" + desc + "',`unit_id`='" + unitid + "' WHERE product_id=" + eid);
                }
                response.sendRedirect("admin/view-prodetail.jsp?error=" + result);
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
