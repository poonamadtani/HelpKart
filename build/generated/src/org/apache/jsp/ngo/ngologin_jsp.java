package org.apache.jsp.ngo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import mysrc.DataManager;
import java.sql.ResultSet;

public final class ngologin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(5);
    _jspx_dependants.add("/ngo/mytheme/headerscripts.jsp");
    _jspx_dependants.add("/ngo/mytheme/preloader.jsp");
    _jspx_dependants.add("/ngo/mytheme/header.jsp");
    _jspx_dependants.add("/ngo/mytheme/footer.jsp");
    _jspx_dependants.add("/ngo/mytheme/scripts.jsp");
  }

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
      out.write("<html dir=\"ltr\" lang=\"en\">\n");
      out.write("\n");
      out.write("    <!-- Mirrored from kodesolution.com/demo/wxyz/w/echarity/v2.0/demo/page-contact4.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 20 Feb 2018 10:32:21 GMT -->\n");
      out.write("    ");
      out.write("<head>\n");
      out.write("\n");
      out.write("<!-- Meta Tags -->\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width,initial-scale=1.0\"/>\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\"/>\n");
      out.write("<meta name=\"description\" content=\"eCharity - Nonprofit, Crowdfunding & Charity HTML5 Template\" />\n");
      out.write("<meta name=\"keywords\" content=\"Charity,Nonprofit,Crowdfunding,Donation & Fundraising\" />\n");
      out.write("<meta name=\"author\" content=\"ThemeMascot\" />\n");
      out.write(" \n");
      out.write("<!-- Page Title -->\n");
      out.write("<title>Help Kart</title>\n");
      out.write("\n");
      out.write("<!-- Favicon and Touch Icons -->\n");
      out.write("<link href=\"mytheme/images/favicon.png\" rel=\"shortcut icon\" type=\"image/png\">\n");
      out.write("<link href=\"mytheme/images/apple-touch-icon.png\" rel=\"apple-touch-icon\">\n");
      out.write("<link href=\"mytheme/images/apple-touch-icon-72x72.png\" rel=\"apple-touch-icon\" sizes=\"72x72\">\n");
      out.write("<link href=\"mytheme/images/apple-touch-icon-114x114.png\" rel=\"apple-touch-icon\" sizes=\"114x114\">\n");
      out.write("<link href=\"mytheme/images/apple-touch-icon-144x144.png\" rel=\"apple-touch-icon\" sizes=\"144x144\">\n");
      out.write("\n");
      out.write("<!-- Stylesheet -->\n");
      out.write("<link href=\"mytheme/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"mytheme/css/jquery-ui.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"mytheme/css/animate.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"mytheme/css/css-plugin-collections.css\" rel=\"stylesheet\"/>\n");
      out.write("<!-- CSS | menuzord megamenu skins -->\n");
      out.write("<link id=\"menuzord-menu-skins\" href=\"mytheme/css/menuzord-skins/menuzord-boxed.css\" rel=\"stylesheet\"/>\n");
      out.write("<!-- CSS | Main style file -->\n");
      out.write("<link href=\"mytheme/css/style-main.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("<!-- CSS | Theme Color -->\n");
      out.write("\n");
      out.write("<link href=\"mytheme/css/colors/theme-skin-orange.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<!-- CSS | Preloader Styles -->\n");
      out.write("<link href=\"mytheme/css/preloader.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<!-- CSS | Custom Margin Padding Collection -->\n");
      out.write("<link href=\"mytheme/css/custom-bootstrap-margin-padding.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<!-- CSS | Responsive media queries -->\n");
      out.write("<link href=\"mytheme/css/responsive.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<!-- CSS | Style css. This is the file where you can place your own custom css code. Just uncomment it and use it. -->\n");
      out.write("<!-- <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\"> -->\n");
      out.write("\n");
      out.write("<!-- external javascripts -->\n");
      out.write("<script src=\"mytheme/js/jquery-2.2.4.min.js\"></script>\n");
      out.write("<script src=\"mytheme/js/jquery-ui.min.js\"></script>\n");
      out.write("<script src=\"mytheme/js/bootstrap.min.js\"></script>\n");
      out.write("<!-- JS | jquery plugin collection for this theme -->\n");
      out.write("<script src=\"mytheme/js/jquery-plugin-collection.js\"></script>\n");
      out.write("\n");
      out.write("<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\n");
      out.write("<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("<!--[if lt IE 9]>\n");
      out.write("  <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n");
      out.write("  <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("<![endif]-->\n");
      out.write("</head>");
      out.write("\n");
      out.write("    <body class=\"\">\n");
      out.write("        <div id=\"wrapper\" class=\"clearfix\">\n");
      out.write("            <!-- preloader -->\n");
      out.write("            ");
      out.write(" <div id=\"preloader\">\n");
      out.write("    <div id=\"spinner\">\n");
      out.write("      <i class=\"flaticon-charity-shelter font-60 text-theme-colored floating\"></i>\n");
      out.write("      <h5 class=\"line-height-50 font-18\">Loading...</h5>\n");
      out.write("    </div>\n");
      out.write("    <div id=\"disable-preloader\" class=\"btn btn-default btn-sm\">Disable Preloader</div>\n");
      out.write("  </div>");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Header -->\n");
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("<header id=\"header\" class=\"header\">\n");
      out.write("    <div class=\"header-top bg-theme-colored sm-text-center\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-2\">\n");
      out.write("                    <div class=\"widget no-border m-0\">\n");
      out.write("                        <ul class=\"styled-icons icon-dark icon-theme-colored icon-sm sm-text-center\">\n");
      out.write("                            <li><a href=\"https://www.facebook.com/poonam.adtani\"><i class=\"fa fa-facebook\"></i></a></li>\n");
      out.write("                            <li><a href=\"https://twitter.com/padtani\"><i class=\"fa fa-twitter\"></i></a></li>\n");
      out.write("                            <li><a href=\"https://plus.google.com/117407049386698270039\"><i class=\"fa fa-google-plus\"></i></a></li>\n");
      out.write("                            <li><a href=\"https://in.linkedin.com/in/poonam-adtani-58b82a12b\"><i class=\"fa fa-linkedin\"></i></a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-8\">\n");
      out.write("                    <div class=\"widget no-border m-0\">\n");
      out.write("                        <ul class=\"list-inline pull-right flip sm-pull-none sm-text-center mt-5\">\n");
      out.write("                            <li class=\"m-0 pl-10 pr-10\"> <i class=\"fa fa-phone text-white\"></i> <a class=\"text-white\" href=\"#\">079-46589647</a> </li>\n");
      out.write("                            <li class=\"text-white m-0 pl-10 pr-10\"> <i class=\"fa fa-clock-o text-white\"></i> Mon-Fri 8:00 to 2:00 </li>\n");
      out.write("                            <li class=\"m-0 pl-10 pr-10\"> <i class=\"fa fa-envelope-o text-white\"></i> <a class=\"text-white\" href=\"#\">info@rexontechnologies.com</a> </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-2\">\n");
      out.write("                    <div class=\"widget no-border m-0\">\n");
      out.write("                        <ul class=\"list-inline pull-right flip sm-pull-none sm-text-center mt-5\">\n");
      out.write("                              ");

                                if (session.getAttribute("id") == null) {
      out.write("\n");
      out.write("                            <li class=\"mt-sm-10 mb-sm-10\">\n");
      out.write("                                <!-- Modal: Appointment Starts -->\n");
      out.write("                                <a class=\"btn btn-default btn-flat btn-xs bg-light p-5 font-11 pl-10 pr-10 ajaxload-popup\" href=\"ngologin.jsp\">Sign In</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"mt-sm-10 mb-sm-10\">\n");
      out.write("                                <a class=\"btn btn-default btn-flat btn-xs bg-light p-5 font-11 pl-10 pr-10 ajaxload-popup\" href=\"ngoregis.jsp\">Join Us</a>\n");
      out.write("                            </li>\n");
      out.write("                            ");
} else {
      out.write("\n");
      out.write("                            <a class=\"btn btn-default btn-flat btn-xs bg-light p-5 font-11 pl-10 pr-10\" href=\"#\">WelCome, ");
      out.print( session.getAttribute("name"));
      out.write(" </a>\n");
      out.write("                            ");
}
                            
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"header-nav\">\n");
      out.write("        <div class=\"header-nav-wrapper navbar-scrolltofixed bg-white\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <nav id=\"menuzord-right\" class=\"menuzord green no-bg\"><a class=\"menuzord-brand pull-left flip xs-pull-center mb-15\" href=\"index-mp-layout1.html\"><img src=\"../logo/logo-wide.jpg\" style=\"height: 180px; width:200px\" alt=\"\"></a>\n");
      out.write("                    <ul class=\"menuzord-menu\">\n");
      out.write("                        <li><a href=\"home.jsp\">Home</a>\n");
      out.write("\n");
      out.write("                        </li>\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        <li><a href=\"ngorequirement.jsp\">Add Requirements</a>\n");
      out.write("                            \n");
      out.write("                        </li>\n");
      out.write("                         <li><a href=\"aboutus.jsp\">About Us</a>\n");
      out.write("                            \n");
      out.write("                        </li>\n");
      out.write("                        \n");
      out.write("                         <li><a href=\"contactus.jsp\">Contact Us</a>\n");
      out.write("                            \n");
      out.write("                        </li>\n");
      out.write("                        <li><a href=\"view-order.jsp\">View Order Placed </a></li>\n");
      out.write("                         <li><a href=\"#\">My Profile</a>\n");
      out.write("                            <ul class=\"dropdown\">\n");
      out.write("                                \n");
      out.write("                                 <li><a href=\"\">Change Password</a></li>\n");
      out.write("                                  <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("                                   \n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        \n");
      out.write("                    </ul>\n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</header>");
      out.write("\n");
      out.write("            <!-- Start main-content -->\n");
      out.write("            <div class=\"main-content\">\n");
      out.write("                <!-- Divider: Google Map -->\n");
      out.write("                <!-- Divider: Contact -->\n");
      out.write("                <section class=\"divider\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row pt-30\">\n");
      out.write("\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <h3 class=\"line-bottom mt-0 mb-30\">Sign in</h3>\n");
      out.write("                                <!-- Contact Form -->\n");
      out.write("                                <form id=\"contact_form\" name=\"contact_form\" class=\"\" action=\"../ngo_login\" method=\"post\">\n");
      out.write("                                    ");

                                        if (request.getParameter("error") != null) {
                                            if (request.getParameter("error").equals("1")) {
                                                out.println("<div class='alert alert-success'> Login Successful </div>");
                                            } else {
                                                out.println("<div class='alert alert-danger'>Invalid Login Details</div>");
                                            }
                                        }
                                    
      out.write("\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-sm-12\">\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <label>Email <small>*</small></label>\n");
      out.write("                                                <input name=\"email\" class=\"form-control\" type=\"email\" placeholder=\"Enter Email\" required=\"\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-sm-12\">\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <label>Password <small>*</small></label>\n");
      out.write("                                                <input name=\"pass\" class=\"form-control required email\" type=\"password\" placeholder=\"Enter Password\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <input name=\"form_botcheck\" class=\"form-control\" type=\"hidden\" value=\"\" />\n");
      out.write("                                        <button type=\"submit\" class=\"btn btn-dark btn-theme-colored btn-flat mr-5\" data-loading-text=\"Please wait...\">Submit</button>\n");
      out.write("                                        <button type=\"reset\" class=\"btn btn-default btn-flat btn-theme-colored\">Reset</button>\n");
      out.write("                                    </div>\n");
      out.write("                                </form>\n");
      out.write("\n");
      out.write("                                <!-- Contact Form Validation-->\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </section>\n");
      out.write("            </div>\n");
      out.write("            <!-- end main-content -->\n");
      out.write("\n");
      out.write("            <!-- Footer -->\n");
      out.write("            ");
      out.write("<footer id=\"footer\" class=\"bg-black-222\">\n");
      out.write("    \n");
      out.write("    <div class=\"footer-bottom bg-black-333\">\n");
      out.write("      <div class=\"container pt-20 pb-20\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-md-6\">\n");
      out.write("            <p class=\"font-11 text-black-777 m-0\">Copyright &copy;2018 All Rights Reserved</p>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-md-6 text-right\">\n");
      out.write("            <div class=\"widget no-border m-0\">\n");
      out.write("              <ul class=\"list-inline sm-text-center mt-5 font-12\">\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"home.jsp\">Home</a>\n");
      out.write("                </li>\n");
      out.write("                <li>|</li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"aboutus.jsp\">About Us</a>\n");
      out.write("                </li>\n");
      out.write("                <li>|</li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"contactus.jsp\">Contact Us</a>\n");
      out.write("                </li>\n");
      out.write("              </ul>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </footer>");
      out.write("\n");
      out.write("            <a class=\"scrollToTop\" href=\"#\"><i class=\"fa fa-angle-up\"></i></a>\n");
      out.write("        </div>\n");
      out.write("        <!-- end wrapper -->\n");
      out.write("\n");
      out.write("        <!-- Footer Scripts -->\n");
      out.write("        <!-- JS | Custom script for all pages -->\n");
      out.write("        ");
      out.write("<script src=\"mytheme/js/custom.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
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
