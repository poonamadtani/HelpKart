package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import mysrc.DataManager;
import java.sql.ResultSet;

public final class view_002dngophotos_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(5);
    _jspx_dependants.add("/admin/mytheme/header.jsp");
    _jspx_dependants.add("/admin/mytheme/topbar.jsp");
    _jspx_dependants.add("/admin/mytheme/sidebar.jsp");
    _jspx_dependants.add("/admin/mytheme/footer.jsp");
    _jspx_dependants.add("/admin/mytheme/scripts.jsp");
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

      out.write('\n');

    if (request.getParameter("did") != null) {
        String did = request.getParameter("did");
        String rows = DataManager.setData("delete from ngo_photo where photo_id='" + did + "'");
        response.sendRedirect("view-ngophotos.jsp?error=" + rows);
    }

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        ");
      out.write("<meta charset=\"utf-8\" />\n");
      out.write("    <title>Xadmino - Responsive Admin Dashboard Template</title>\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\" />\n");
      out.write("    <meta content=\"Admin Dashboard\" name=\"description\" />\n");
      out.write("    <meta content=\"ThemeDesign\" name=\"author\" />\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n");
      out.write("    <link rel=\"shortcut icon\" href=\"./mytheme/assets/images/favicon.ico\">\n");
      out.write("    <link href=\"./mytheme/assets/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    <link href=\"./mytheme/assets/css/icons.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    <link href=\"./mytheme/assets/css/style.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    <script>        (function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', '../../www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-86308552-1', 'auto'); ga('send', 'pageview');</script>");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body class=\"fixed-left\">\n");
      out.write("        <div id=\"wrapper\">\n");
      out.write("            ");
      out.write("<div class=\"topbar\">\n");
      out.write("            <div class=\"topbar-left\">\n");
      out.write("                <div class=\"text-center\">\n");
      out.write("                    <a href=\"index.html\" class=\"logo\">\n");
      out.write("                        <img src=\"./mytheme/assets/images/logo_white_2.png\" height=\"28\"></a> <a href=\"index.html\" class=\"logo-sm\">\n");
      out.write("                            <img src=\"./mytheme/assets/images/logo_sm.png\" height=\"36\"></a></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"navbar navbar-default\" role=\"navigation\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"\">\n");
      out.write("                        <div class=\"pull-left\">\n");
      out.write("                            <button type=\"button\" class=\"button-menu-mobile open-left waves-effect waves-light\">\n");
      out.write("                                <i class=\"ion-navicon\"></i>\n");
      out.write("                            </button>\n");
      out.write("                            <span class=\"clearfix\"></span>\n");
      out.write("                        </div>\n");
      out.write("                        <form class=\"navbar-form pull-left\" role=\"search\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-control search-bar\" placeholder=\"Search...\"></div>\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-search\">\n");
      out.write("                            <i class=\"fa fa-search\"></i>\n");
      out.write("                        </button>\n");
      out.write("                        </form>\n");
      out.write("                        <ul class=\"nav navbar-nav navbar-right pull-right\">\n");
      out.write("                            <li class=\"dropdown hidden-xs\"><a href=\"#\" data-target=\"#\" class=\"dropdown-toggle waves-effect waves-light\"\n");
      out.write("                                data-toggle=\"dropdown\" aria-expanded=\"true\"><i class=\"fa fa-bell\"></i><span class=\"badge badge-xs badge-danger\">\n");
      out.write("                                    3</span> </a>\n");
      out.write("                                <ul class=\"dropdown-menu dropdown-menu-lg\">\n");
      out.write("                                    <li class=\"text-center notifi-title\">Notification <span class=\"badge badge-xs badge-success\">\n");
      out.write("                                        3</span></li><li class=\"list-group\"><a href=\"javascript:void(0);\" class=\"list-group-item\">\n");
      out.write("                                            <div class=\"media\">\n");
      out.write("                                                <div class=\"media-heading\">\n");
      out.write("                                                    Your order is placed</div>\n");
      out.write("                                                <p class=\"m-0\">\n");
      out.write("                                                    <small>Dummy text of the printing and typesetting industry.</small></p>\n");
      out.write("                                            </div>\n");
      out.write("                                        </a><a href=\"javascript:void(0);\" class=\"list-group-item\">\n");
      out.write("                                            <div class=\"media\">\n");
      out.write("                                                <div class=\"media-body clearfix\">\n");
      out.write("                                                    <div class=\"media-heading\">\n");
      out.write("                                                        New Message received</div>\n");
      out.write("                                                    <p class=\"m-0\">\n");
      out.write("                                                        <small>You have 87 unread messages</small></p>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </a><a href=\"javascript:void(0);\" class=\"list-group-item\">\n");
      out.write("                                            <div class=\"media\">\n");
      out.write("                                                <div class=\"media-body clearfix\">\n");
      out.write("                                                    <div class=\"media-heading\">\n");
      out.write("                                                        Your item is shipped.</div>\n");
      out.write("                                                    <p class=\"m-0\">\n");
      out.write("                                                        <small>It is a long established fact that a reader will</small></p>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </a><a href=\"javascript:void(0);\" class=\"list-group-item\"><small class=\"text-primary\">\n");
      out.write("                                            See all notifications</small> </a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"hidden-xs\"><a href=\"#\" id=\"btn-fullscreen\" class=\"waves-effect waves-light\">\n");
      out.write("                                <i class=\"fa fa-crosshairs\"></i></a></li>\n");
      out.write("                            <li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle profile waves-effect waves-light\"\n");
      out.write("                                data-toggle=\"dropdown\" aria-expanded=\"true\">\n");
      out.write("                                <img src=\"./mytheme/assets/images/users/avatar-1.jpg\" alt=\"user-img\" class=\"img-circle\">\n");
      out.write("                            </a>\n");
      out.write("                                <ul class=\"dropdown-menu\">\n");
      out.write("                                    <li><a href=\"javascript:void(0)\">Profile</a></li><li><a href=\"javascript:void(0)\"><span\n");
      out.write("                                        class=\"badge badge-success pull-right\">5</span> Settings </a></li>\n");
      out.write("                                    <li><a href=\"javascript:void(0)\">Lock screen</a></li><li class=\"divider\"></li>\n");
      out.write("                                    <li><a href=\"javascript:void(0)\">Logout</a></li></ul>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("            ");
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
      out.write("                            <a href=\"view-order.jsp\">Order List</a>\n");
      out.write("                        </li>\n");
      out.write("                      \n");
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
      out.write("\n");
      out.write("            <div class=\"content-page\">\n");
      out.write("                <div class=\"content\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-md-12\">\n");
      out.write("                                <div class=\"panel panel-primary\">\n");
      out.write("                                    <div class=\"panel-heading\">\n");
      out.write("                                        <h3 class=\"panel-title\">\n");
      out.write("                                            NGO Photos Details</h3>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"panel-body\">\n");
      out.write("                                        ");
                                              if (request.getParameter("error") != null) {
                                                if (request.getParameter("error").equals("1")) {
                                                    out.println("<div class='alert alert-success'> NGO Photos Deleted Successfully </div>");
                                                } else {
                                                    out.println("<div class='alert alert-danger'>" + request.getParameter("error") + "</div>");
                                                }
                                            }
                                        
      out.write("\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-12 col-sm-12 col-xs-12\">\n");
      out.write("                                                <table id=\"datatable\" class=\"table table-striped table-bordered\">\n");
      out.write("                                                    <thead>\n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <th>\n");
      out.write("                                                                Photo Id\n");
      out.write("                                                            </th>\n");
      out.write("                                                            <th>\n");
      out.write("                                                                Photo URL\n");
      out.write("                                                            </th>\n");
      out.write("                                                            <th>\n");
      out.write("                                                                NGO Id\n");
      out.write("                                                            </th>\n");
      out.write("                                                            <th>\n");
      out.write("                                                                Caption\n");
      out.write("                                                            </th>\n");
      out.write("\n");
      out.write("                                                            <th>    \n");
      out.write("                                                            </th>    \n");
      out.write("                                                        </tr>\n");
      out.write("                                                    </thead>\n");
      out.write("                                                    <tbody>\n");
      out.write("                                                        ");

                                                            ResultSet rs = DataManager.getData("SELECT P.photo_id,P.photo_url,P.photo_caption,M.ngo_name FROM ngo_photo P INNER JOIN ngo_master M ON (P.`ngo_id`=M.`ngo_id`)");
                                                            while (rs.next()) {
      out.write("\n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <td>\n");
      out.write("                                                                 ");
      out.print( rs.getString(1));
      out.write(" \n");
      out.write("                                                            </td>\n");
      out.write("                                                            <td>\n");
      out.write("                                                                <img src=\"../ngophotos//");
      out.print( rs.getString(2));
      out.write("\" height=\"100px\" width=\"100px\" />\n");
      out.write("                                                            </td>\n");
      out.write("                                                            <td>\n");
      out.write("                                                                ");
      out.print( rs.getString(3));
      out.write(" \n");
      out.write("                                                            </td>\n");
      out.write("                                                            <td>\n");
      out.write("                                                                ");
      out.print( rs.getString(4));
      out.write(" \n");
      out.write("                                                            </td>\n");
      out.write("\n");
      out.write("                                                            <td>\n");
      out.write("                                                                <a href=\"update-ngophotos.jsp?eid=");
      out.print( rs.getString(1) );
      out.write("\">Edit</a> |  <a href=\"?did=");
      out.print( rs.getString(1));
      out.write("\">Delete</a>\n");
      out.write("                                                            </td>\n");
      out.write("                                                        </tr>\n");
      out.write("                                                        ");
}
                                                        
      out.write("\n");
      out.write("                                                    </tbody>\n");
      out.write("                                                </table>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            ");
      out.write(" <footer class=\"footer\"> 2016 © Xadmino. </footer>");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        ");
      out.write("<script src=\"./mytheme/assets/js/jquery.min.js\"></script>\n");
      out.write("    <script src=\"./mytheme/assets/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"./mytheme/assets/js/modernizr.min.js\"></script>\n");
      out.write("    <script src=\"./mytheme/assets/js/detect.js\"></script>\n");
      out.write("    <script src=\"./mytheme/assets/js/fastclick.js\"></script>\n");
      out.write("    <script src=\"./mytheme/assets/js/jquery.slimscroll.js\"></script>\n");
      out.write("    <script src=\"./mytheme/assets/js/jquery.blockUI.js\"></script>\n");
      out.write("    <script src=\"./mytheme/assets/js/waves.js\"></script>\n");
      out.write("    <script src=\"./mytheme/assets/js/wow.min.js\"></script>\n");
      out.write("    <script src=\"./mytheme/assets/js/jquery.nicescroll.js\"></script>\n");
      out.write("    <script src=\"./mytheme/assets/js/jquery.scrollTo.min.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"./mytheme/assets/plugins/parsleyjs/parsley.min.js\"></script>\n");
      out.write("    <script src=\"./mytheme/assets/js/app.js\"></script>\n");
      out.write("    <script type=\"text/javascript\">        $(document).ready(function () { $('form').parsley(); });</script>");
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
