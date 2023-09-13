package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class changepass_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <title>Change Password</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\" />\n");
      out.write("        <meta content=\"Admin Dashboard\" name=\"description\" />\n");
      out.write("        <meta content=\"ThemeDesign\" name=\"author\" />\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n");
      out.write("        <link rel=\"shortcut icon\" href=\"assets/images/favicon.ico\">\n");
      out.write("        <link href=\"mytheme/assets/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"mytheme/assets/css/icons.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"mytheme/assets/css/style.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <script>\n");
      out.write("            (function (i, s, o, g, r, a, m) {\n");
      out.write("                i['GoogleAnalyticsObject'] = r;\n");
      out.write("                i[r] = i[r] || function () {\n");
      out.write("                    (i[r].q = i[r].q || []).push(arguments)\n");
      out.write("                }, i[r].l = 1 * new Date();\n");
      out.write("                a = s.createElement(o), m = s.getElementsByTagName(o)[0];\n");
      out.write("                a.async = 1;\n");
      out.write("                a.src = g;\n");
      out.write("                m.parentNode.insertBefore(a, m)\n");
      out.write("            })(window, document, 'script', '../../www.google-analytics.com/analytics.js', 'ga');\n");
      out.write("            ga('create', 'UA-86308552-1', 'auto');\n");
      out.write("            ga('send', 'pageview');</script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"accountbg\"></div>\n");
      out.write("        <div class=\"wrapper-page\">\n");
      out.write("            <div class=\"panel panel-color panel-primary panel-pages\">\n");
      out.write("                <div class=\"panel-body\">\n");
      out.write("                    <h3 class=\"text-center m-t-0 m-b-30\"><span class=\"\">\n");
      out.write("                            <img src=\"mytheme/assets/images/logo_dark.png\" alt=\"logo\" height=\"32\"></span></h3>\n");
      out.write("                    <h4 class=\"text-muted text-center m-t-0\"><b>Change Password</b></h4>\n");
      out.write("                    <form class=\"form-horizontal m-t-20\" action=\"../changepass\" method=\"post\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            ");

                                if (request.getParameter("error") != null) {
                                    if (request.getParameter("error").equals("1")) {
                                        out.println("<div class='alert alert-success'>valid Login  Details</div>");
                                    } else {
                                        out.println("<div class='alert alert-danger'>Invalid Password Details</div>");
                                    }
                                }
                            
      out.write("\n");
      out.write("                            <div class=\"col-xs-12\">\n");
      out.write("                                <input name=\"txtold\" class=\"form-control\" type=\"text\" required=\"\" placeholder=\"Current Password\"></div>\n");
      out.write("                        </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                            <div class=\"col-xs-12\">\n");
      out.write("                                <input name=\"txtoldc\" class=\"form-control\" type=\"password\" required=\"\" placeholder=\"New Password\"></div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <div class=\"col-xs-12\">\n");
      out.write("                                <input name=\"txtnew\" class=\"form-control\" type=\"password\" required=\"\" placeholder=\"Confirm New Password\"></div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <div class=\"col-xs-12\">\n");
      out.write("                                <div class=\"checkbox checkbox-primary\">\n");
      out.write("                                    <input id=\"checkbox-signup\" type=\"checkbox\">\n");
      out.write("                                    <label for=\"checkbox-signup\">Remember me </label>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group text-center m-t-20\">\n");
      out.write("                            <div class=\"col-xs-12\">\n");
      out.write("                                <button class=\"btn btn-primary w-md waves-effect waves-light\" type=\"submit\">Log In</button></div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group m-t-30 m-b-0\">\n");
      out.write("                            <div class=\"col-sm-7\"><a href=\"pages-recoverpw.html\" class=\"text-muted\"><i class=\"fa fa-lock m-r-5\"></i>Forgot your password?</a></div>\n");
      out.write("                            <div class=\"col-sm-5 text-right\"><a href=\"pages-register.html\" class=\"text-muted\">Create an account</a></div>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"mytheme/assets/js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"mytheme/assets/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"mytheme/assets/js/modernizr.min.js\"></script>\n");
      out.write("        <script src=\"mytheme/assets/js/detect.js\"></script>\n");
      out.write("        <script src=\"mytheme/assets/js/fastclick.js\"></script>\n");
      out.write("        <script src=\"mytheme/assets/js/jquery.slimscroll.js\"></script>\n");
      out.write("        <script src=\"mytheme/assets/js/jquery.blockUI.js\"></script>\n");
      out.write("        <script src=\"mytheme/assets/js/waves.js\"></script>\n");
      out.write("        <script src=\"mytheme/assets/js/wow.min.js\"></script>\n");
      out.write("        <script src=\"mytheme/assets/js/jquery.nicescroll.js\"></script>\n");
      out.write("        <script src=\"mytheme/assets/js/jquery.scrollTo.min.js\"></script>\n");
      out.write("        <script src=\"mytheme/assets/js/app.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
