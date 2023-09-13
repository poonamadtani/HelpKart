package org.apache.jsp.admin.mytheme;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sidebar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<div class=\"left side-menu\">\n");
      out.write("    <div class=\"sidebar-inner slimscrollleft\">\n");
      out.write("        <div class=\"user-details\">\n");
      out.write("            <div class=\"text-center\">\n");
      out.write("                <img src=\"./mytheme/assets/images/users/avatar-1.jpg\" alt=\"\" class=\"img-circle\"></div>\n");
      out.write("            <div class=\"user-info\">\n");
      out.write("                <div class=\"dropdown\">\n");
      out.write("                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\">Kenny\n");
      out.write("                        Rigdon</a><ul class=\"dropdown-menu\">\n");
      out.write("                        <li><a href=\"javascript:void(0)\">Profile</a></li><li><a href=\"javascript:void(0)\">Settings</a></li><li>\n");
      out.write("                            <a href=\"javascript:void(0)\">Lock screen</a></li><li class=\"divider\"></li>\n");
      out.write("                        <li><a href=\"javascript:void(0)\">Logout</a></li></ul>\n");
      out.write("                </div>\n");
      out.write("                <p class=\"text-muted m-0\">\n");
      out.write("                    <i class=\"fa fa-dot-circle-o text-success\"></i>Online</p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"sidebar-menu\">\n");
      out.write("            <ul>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"../index.jsp\" class=\"waves-effect\">\n");
      out.write("                        <i class=\"ti-home\"></i><span>Dashboard</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("                <li class=\"has_sub\">\n");
      out.write("                    <a href=\"javascript:void(0);\" class=\"waves-effect\">\n");
      out.write("                        <i class=\"ti-agenda\"></i>\n");
      out.write("                        <span>NGO Info</span>\n");
      out.write("                        <span class=\"pull-right\"><i class=\"mdi mdi-plus\"></i></span>\n");
      out.write("                    </a>\n");
      out.write("                    <ul class=\"list-unstyled\">\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"view-ngo.jsp\">NGO Details</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"view-ngophotos.jsp\">NGO Photos</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"view-ngoreq.jsp\">NGO Requirements</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("\n");
      out.write("                </li>\n");
      out.write("                   <li class=\"has_sub\">\n");
      out.write("                    <a href=\"javascript:void(0);\" class=\"waves-effect\">\n");
      out.write("                        <i class=\"ti-agenda\"></i>\n");
      out.write("                        <span>Donor Info</span>\n");
      out.write("                        <span class=\"pull-right\"><i class=\"mdi mdi-plus\"></i></span>\n");
      out.write("                    </a>\n");
      out.write("                    <ul class=\"list-unstyled\">\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"view-donor.jsp\">Donor Details</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"view-order.jsp\">Order</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"view-order-detail.jsp\">Order Details</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("\n");
      out.write("                </li>\n");
      out.write("                   <li class=\"has_sub\">\n");
      out.write("                    <a href=\"javascript:void(0);\" class=\"waves-effect\">\n");
      out.write("                        <i class=\"ti-agenda\"></i>\n");
      out.write("                        <span>Product Info</span>\n");
      out.write("                        <span class=\"pull-right\"><i class=\"mdi mdi-plus\"></i></span>\n");
      out.write("                    </a>\n");
      out.write("                    <ul class=\"list-unstyled\">\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"view-procat.jsp\">Product Categories</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"view-prodetail.jsp\">Product Details</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"view-unit.jsp\">Unit Details</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"view-feedback.jsp\" class=\"waves-effect\">\n");
      out.write("                        <i class=\"ti-ruler-pencil\"></i>\n");
      out.write("                        <span>Feedback</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"clearfix\">\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
