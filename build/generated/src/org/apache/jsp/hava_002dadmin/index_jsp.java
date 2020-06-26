package org.apache.jsp.hava_002dadmin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("﻿<!DOCTYPE html>\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\" />\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("  <title>Hava Recipe</title>\n");
      out.write("  <!-- BOOTSTRAP STYLES-->\n");
      out.write("  <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" />\n");
      out.write("  <!-- FONTAWESOME STYLES-->\n");
      out.write("  <link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("  <!-- MORRIS CHART STYLES-->\n");
      out.write("  <link href=\"assets/js/morris/morris-0.4.3.min.css\" rel=\"stylesheet\" />\n");
      out.write("  <!-- CUSTOM STYLES-->\n");
      out.write("  <link href=\"assets/css/custom.css\" rel=\"stylesheet\" />\n");
      out.write("  <!-- GOOGLE FONTS-->\n");
      out.write("  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("  <div id=\"wrapper\">\n");
      out.write("    <nav class=\"navbar navbar-default navbar-cls-top \" role=\"navigation\" style=\"margin-bottom: 0\">\n");
      out.write("      <div class=\"navbar-header\">\n");
      out.write("        <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".sidebar-collapse\">\n");
      out.write("          <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("          <span class=\"icon-bar\"></span>\n");
      out.write("          <span class=\"icon-bar\"></span>\n");
      out.write("          <span class=\"icon-bar\"></span>\n");
      out.write("        </button>\n");
      out.write("        <a class=\"navbar-brand\" href=\"index.html\">Admin</a>\n");
      out.write("      </div>\n");
      out.write("      <div style=\"color: white; padding: 15px 50px 5px 50px; float: right; font-size: 16px;\">\n");
      out.write("        <a href=\"#\" class=\"btn btn-danger square-btn-adjust\">Logout</a>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("    <!-- Start Navbar  -->\n");
      out.write("    <nav class=\"navbar-default navbar-side\" role=\"navigation\">\n");
      out.write("      <div class=\"sidebar-collapse\">\n");
      out.write("        <ul class=\"nav\" id=\"main-menu\">\n");
      out.write("          <li class=\"text-center\">\n");
      out.write("            <img src=\"assets/img/find_user.png\" class=\"user-image img-responsive\" />\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a class=\"active-menu\" href=\"index.jsp\"><i class=\"fa fa-dashboard fa-3x\"></i> Dashboard</a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"user_data.jsp\"><i class=\"fa fa-table fa-3x\"></i> User Data</a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"feedback.jsp\"><i class=\"fa fa-qrcode fa-3x\"></i> Testimonial</a>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("    <!-- End Navbar  -->\n");
      out.write("\n");
      out.write("    <div id=\"page-wrapper\">\n");
      out.write("      <div id=\"page-inner\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-md-12\">\n");
      out.write("            <h2>Admin Dashboard</h2>\n");
      out.write("            <h5>Welcome Hanas , Love to see you back. </h5>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Start Card  -->\n");
      out.write("        <hr />\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-md-4 col-sm-4 col-xs-12\">\n");
      out.write("            <div class=\"panel panel-back noti-box\">\n");
      out.write("              <span class=\"icon-box bg-color-red set-icon\">\n");
      out.write("                <i class=\"fa fa-envelope-o\"></i>\n");
      out.write("              </span>\n");
      out.write("              <div class=\"text-box\">\n");
      out.write("                <p class=\"main-text\">124 Recipe</p>\n");
      out.write("                <p class=\"text-muted\">Messages</p>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-md-4 col-sm-4 col-xs-12\">\n");
      out.write("            <div class=\"panel panel-back noti-box\">\n");
      out.write("              <span class=\"icon-box bg-color-green set-icon\">\n");
      out.write("                <i class=\"fa fa-bars\"></i>\n");
      out.write("              </span>\n");
      out.write("              <div class=\"text-box\">\n");
      out.write("                <p class=\"main-text\">121 User</p>\n");
      out.write("                <p class=\"text-muted\">Remaining</p>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-md-4 col-sm-4 col-xs-12\">\n");
      out.write("            <div class=\"panel panel-back noti-box\">\n");
      out.write("              <span class=\"icon-box bg-color-blue set-icon\">\n");
      out.write("                <i class=\"fa fa-bell-o\"></i>\n");
      out.write("              </span>\n");
      out.write("              <div class=\"text-box\">\n");
      out.write("                <p class=\"main-text\">24 Fedback</p>\n");
      out.write("                <p class=\"text-muted\">Notifications</p>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- End Card  -->\n");
      out.write("        <hr />\n");
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-md-12 col-sm-12 col-xs-12\">\n");
      out.write("            <div class=\"panel panel-default\">\n");
      out.write("              <div class=\"panel-heading text-center\">\n");
      out.write("                Drinks and Foods Recipe\n");
      out.write("              </div>\n");
      out.write("              <div class=\"panel-body\">\n");
      out.write("                <div class=\"table-responsive\">\n");
      out.write("                  <table class=\"table table-striped table-bordered table-hover\">\n");
      out.write("                    <thead>\n");
      out.write("                      <tr>\n");
      out.write("                        <th>No</th>\n");
      out.write("                        <th>Menu</th>\n");
      out.write("                        <th>Category</th>\n");
      out.write("                        <th>Preparation Time</th>\n");
      out.write("                        <th>Cooking Time</th>\n");
      out.write("                        <th>Bahan</th>\n");
      out.write("                        <th>Cara Membuat</th>\n");
      out.write("                        <th>Gambar</th>\n");
      out.write("                      </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody>\n");
      out.write("                      <tr>\n");
      out.write("                        <td>1</td>\n");
      out.write("                        <td>Sushi Goreng</td>\n");
      out.write("                        <td>Makanan</td>\n");
      out.write("                        <td>5 Minutes</td>\n");
      out.write("                        <td>40 Minutes</td>\n");
      out.write("                        <td>Join Table</td>\n");
      out.write("                        <td>Join Table</td>\n");
      out.write("                        <td>sushi.png</td>\n");
      out.write("                      </tr>\n");
      out.write("                      <tr>\n");
      out.write("                        <td>1</td>\n");
      out.write("                        <td>Sushi Goreng</td>\n");
      out.write("                        <td>Makanan</td>\n");
      out.write("                        <td>5 Minutes</td>\n");
      out.write("                        <td>40 Minutes</td>\n");
      out.write("                        <td>Join Table</td>\n");
      out.write("                        <td>Join Table</td>\n");
      out.write("                        <td>sushi.png</td>\n");
      out.write("                      </tr>\n");
      out.write("                    </tbody>\n");
      out.write("                  </table>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <!-- /. PAGE INNER  -->\n");
      out.write("    </div>\n");
      out.write("    <!-- /. PAGE WRAPPER  -->\n");
      out.write("  </div>\n");
      out.write("  <!-- /. WRAPPER  -->\n");
      out.write("  <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->\n");
      out.write("  <!-- JQUERY SCRIPTS -->\n");
      out.write("  <script src=\"assets/js/jquery.js\"></script>\n");
      out.write("  <!-- BOOTSTRAP SCRIPTS -->\n");
      out.write("  <script src=\"assets/js/bootstrap.min.js\"></script>\n");
      out.write("  <!-- METISMENU SCRIPTS -->\n");
      out.write("  <script src=\"assets/js/jquery.metisMenu.js\"></script>\n");
      out.write("  <!-- MORRIS CHART SCRIPTS -->\n");
      out.write("  <script src=\"assets/js/morris/raphael-2.1.0.min.js\"></script>\n");
      out.write("  <script src=\"assets/js/morris/morris.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
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
