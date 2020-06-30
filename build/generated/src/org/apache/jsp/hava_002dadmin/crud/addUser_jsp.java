package org.apache.jsp.hava_002dadmin.crud;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addUser_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\" />\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("  <title>Data Users Page</title>\n");
      out.write("  <!-- BOOTSTRAP STYLES-->\n");
      out.write("  <link href=\"../assets/css/bootstrap.css\" rel=\"stylesheet\" />\n");
      out.write("  <!-- FONTAWESOME STYLES-->\n");
      out.write("  <link href=\"../assets/css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("  <!-- MORRIS CHART STYLES-->\n");
      out.write("\n");
      out.write("  <!-- CUSTOM STYLES-->\n");
      out.write("  <link href=\"../assets/css/custom.css\" rel=\"stylesheet\" />\n");
      out.write("  <!-- GOOGLE FONTS-->\n");
      out.write("  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />\n");
      out.write("  <!-- TABLE STYLES-->\n");
      out.write("  <link href=\"../assets/js/dataTables/dataTables.bootstrap.css\" rel=\"stylesheet\" />\n");
      out.write("  \n");
      out.write("  <!-- The core Firebase JS SDK is always required and must be listed first -->\n");
      out.write("    <script src=\"../https://www.gstatic.com/firebasejs/7.15.4/firebase-app.js\"></script>\n");
      out.write("    <script src=\"../https://www.gstatic.com/firebasejs/7.15.4/firebase-database.js\"></script>\n");
      out.write("    <script src=\"../https://www.gstatic.com/firebasejs/7.15.4/firebase-analytics.js\"></script>\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("      // Your web app's Firebase configuration\n");
      out.write("      var firebaseConfig = {\n");
      out.write("        apiKey: \"AIzaSyAEJ-yMYB6RY8wqisHbrmculO2K8NiTSCQ\",\n");
      out.write("        authDomain: \"hava-recipe.firebaseapp.com\",\n");
      out.write("        databaseURL: \"https://hava-recipe.firebaseio.com\",\n");
      out.write("        projectId: \"hava-recipe\",\n");
      out.write("        storageBucket: \"hava-recipe.appspot.com\",\n");
      out.write("        messagingSenderId: \"190122979219\",\n");
      out.write("        appId: \"1:190122979219:web:2bf4915d4501ba5afe0266\",\n");
      out.write("        measurementId: \"G-M4CBVWWPC2\"\n");
      out.write("      };\n");
      out.write("      // Initialize Firebase\n");
      out.write("      firebase.initializeApp(firebaseConfig);\n");
      out.write("      firebase.analytics();\n");
      out.write("    </script>\n");
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
      out.write("        <a class=\"navbar-brand\" href=\"index.html\">Hava Admin</a>\n");
      out.write("      </div>\n");
      out.write("      <div style=\"color: white;\n");
      out.write("padding: 15px 50px 5px 50px;\n");
      out.write("float: right;\n");
      out.write("font-size: 16px;\"> Last access : 30 May 2014 &nbsp; <a href=\"#\" class=\"btn btn-danger square-btn-adjust\">Logout</a>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("    <!-- Start Navbar  -->\n");
      out.write("    <nav class=\"navbar-default navbar-side\" role=\"navigation\">\n");
      out.write("      <div class=\"sidebar-collapse\">\n");
      out.write("        <ul class=\"nav\" id=\"main-menu\">\n");
      out.write("          <li class=\"text-center\">\n");
      out.write("            <img src=\"../assets/img/find_user.png\" class=\"user-image img-responsive\" />\n");
      out.write("          </li>\n");
      out.write("\n");
      out.write("          <li>\n");
      out.write("            <a href=\"index.html\"><i class=\"fa fa-dashboard fa-3x\"></i> Dashboard</a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a class=\"active-menu\" href=\"user_data.jsp\"><i class=\"fa fa-table fa-3x\"></i> User Data</a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("              <a href=\"feedback.jsp\"><i class=\"fa fa-qrcode fa-3x\"></i> Testimonial</a>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("    <!-- End Navbar -->\n");
      out.write("\n");
      out.write("    <!-- Start Header  -->\n");
      out.write("    <div id=\"page-wrapper\">\n");
      out.write("      <div id=\"page-inner\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-md-12\">\n");
      out.write("            <h2>User Database</h2>\n");
      out.write("            <h5>Welcome Hanas , Love to see you back. </h5>\n");
      out.write("\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- End Header  -->\n");
      out.write("        <hr />\n");
      out.write("        <!-- Form Elements -->\n");
      out.write("                    <div class=\"panel panel-default\">\n");
      out.write("                        <div class=\"panel-heading\">\n");
      out.write("                            Form Admin\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"panel-body\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-md-6\">\n");
      out.write("                                    <h3>Admin Hava Recipe </h3>\n");
      out.write("                                    <form role=\"form\">\n");
      out.write("                                    \t\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Username</label>\n");
      out.write("                                            <input class=\"form-control\" placeholder=\"enter username\" id=\"username\"/>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Password</label>\n");
      out.write("                                            <input class=\"form-control\" placeholder=\"enter password\" id=\"password\" />\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                        <input type=\"button\" value=\"Save\" onclick=\"save_user();\"\n");
      out.write("                                        class=\"btn btn-warning\"></input>\n");
      out.write("                                        \n");
      out.write("                                           \n");
      out.write("                                        </div>\n");
      out.write("                                         </form>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                     <!-- End Form Elements -->\n");
      out.write("                     \n");
      out.write("                     <script>\n");
      out.write("                     \n");
      out.write("                     var databaseRef = firebase.database().ref('users/');\n");
      out.write("                     function save_user(){\n");
      out.write("                     \n");
      out.write("                     var username = document.getElementById('username').value;\n");
      out.write("                     var password = document.getElementById('password').value;\n");
      out.write("                     var upk = firebase.database().ref().child('users').push().key;\n");
      out.write("                     \n");
      out.write("                     var data = {\n");
      out.write("                     username: username,\n");
      out.write("                     password: password\n");
      out.write("                     }\n");
      out.write("                     \n");
      out.write("                     var updates = {};\n");
      out.write("                     updates['/users/' + upk] = data;\n");
      out.write("                     firebase.database().ref().update(updates);\n");
      out.write("                     alert('admin created successfully!');\n");
      out.write("                     reload_page();\n");
      out.write("                     }\n");
      out.write("                     function reload_page(){\n");
      out.write("                     window.location.reload();\n");
      out.write("                     }\n");
      out.write("                     </script>\n");
      out.write("</body>\n");
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
