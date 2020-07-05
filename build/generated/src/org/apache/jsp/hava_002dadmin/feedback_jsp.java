package org.apache.jsp.hava_002dadmin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class feedback_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("﻿<!DOCTYPE html>\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"utf-8\" />\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("  <title>Feedback Page</title>\r\n");
      out.write("  <!-- BOOTSTRAP STYLES-->\r\n");
      out.write("  <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" />\r\n");
      out.write("  <!-- FONTAWESOME STYLES-->\r\n");
      out.write("  <link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\" />\r\n");
      out.write("  <!-- MORRIS CHART STYLES-->\r\n");
      out.write("\r\n");
      out.write("  <!-- CUSTOM STYLES-->\r\n");
      out.write("  <link href=\"assets/css/custom.css\" rel=\"stylesheet\" />\r\n");
      out.write("  <!-- GOOGLE FONTS-->\r\n");
      out.write("  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />\r\n");
      out.write("  <!-- TABLE STYLES-->\r\n");
      out.write("  <link href=\"assets/js/dataTables/dataTables.bootstrap.css\" rel=\"stylesheet\" />\r\n");
      out.write("  \r\n");
      out.write("  <!-- The core Firebase JS SDK is always required and must be listed first -->\r\n");
      out.write("    <script src=\"https://www.gstatic.com/firebasejs/7.15.4/firebase-app.js\"></script>\r\n");
      out.write("    <script src=\"https://www.gstatic.com/firebasejs/7.15.4/firebase-database.js\"></script>\r\n");
      out.write("    <script src=\"https://www.gstatic.com/firebasejs/7.15.4/firebase-analytics.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("      // Your web app's Firebase configuration\r\n");
      out.write("      var firebaseConfig = {\r\n");
      out.write("        apiKey: \"AIzaSyAEJ-yMYB6RY8wqisHbrmculO2K8NiTSCQ\",\r\n");
      out.write("        authDomain: \"hava-recipe.firebaseapp.com\",\r\n");
      out.write("        databaseURL: \"https://hava-recipe.firebaseio.com\",\r\n");
      out.write("        projectId: \"hava-recipe\",\r\n");
      out.write("        storageBucket: \"hava-recipe.appspot.com\",\r\n");
      out.write("        messagingSenderId: \"190122979219\",\r\n");
      out.write("        appId: \"1:190122979219:web:2bf4915d4501ba5afe0266\",\r\n");
      out.write("        measurementId: \"G-M4CBVWWPC2\"\r\n");
      out.write("      };\r\n");
      out.write("      // Initialize Firebase\r\n");
      out.write("      firebase.initializeApp(firebaseConfig);\r\n");
      out.write("      firebase.analytics();\r\n");
      out.write("    </script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("  <div id=\"wrapper\" style=\"margin-top: -20px;\">\r\n");
      out.write("    <nav class=\"navbar navbar-default navbar-cls-top \" role=\"navigation\" style=\"margin-bottom: 0\">\r\n");
      out.write("      <div class=\"navbar-header\">\r\n");
      out.write("        <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".sidebar-collapse\">\r\n");
      out.write("          <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("          <span class=\"icon-bar\"></span>\r\n");
      out.write("          <span class=\"icon-bar\"></span>\r\n");
      out.write("          <span class=\"icon-bar\"></span>\r\n");
      out.write("        </button>\r\n");
      out.write("        <a class=\"navbar-brand\" href=\"index.html\">Binary admin</a>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div style=\"color: white;\r\n");
      out.write("padding: 15px 50px 5px 50px;\r\n");
      out.write("float: right;\r\n");
      out.write("font-size: 16px;\"> Last access : 30 May 2014 &nbsp; <button type=\"button\" class=\"btn btn-danger square-btn-adjust\" onclick=\"signOut()\">Logout</button>\r\n");
      out.write("      </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("    <!-- Start Navbar  -->\r\n");
      out.write("    <nav class=\"navbar-default navbar-side\" role=\"navigation\">\r\n");
      out.write("      <div class=\"sidebar-collapse\">\r\n");
      out.write("        <ul class=\"nav\" id=\"main-menu\">\r\n");
      out.write("          <li class=\"text-center\">\r\n");
      out.write("            <img src=\"assets/img/find_user.png\" class=\"user-image img-responsive\" />\r\n");
      out.write("          </li>\r\n");
      out.write("          <li>\r\n");
      out.write("            <a href=\"index.jsp\"><i class=\"fa fa-dashboard fa-3x\"></i> Dashboard</a>\r\n");
      out.write("          </li>\r\n");
      out.write("          <li>\r\n");
      out.write("              <a href=\"recipe_data.jsp\"><i class=\"fa fa-table fa-3x\"></i> Recipes Data</a>\r\n");
      out.write("          </li>\r\n");
      out.write("          <li>\r\n");
      out.write("            <a href=\"#\" class=\"active-menu\"><i class=\"fa fa-qrcode fa-3x\"></i> Feedback</a>\r\n");
      out.write("          </li>\r\n");
      out.write("          <li>\r\n");
      out.write("            <a href=\"subscriber.jsp\"><i class=\"fa fa-table fa-3x\"></i> Subscriber</a>\r\n");
      out.write("          </li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("    <!-- End Navbar  -->\r\n");
      out.write("\r\n");
      out.write("    <div id=\"page-wrapper\">\r\n");
      out.write("      <div id=\"page-inner\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("          <div class=\"col-md-12\">\r\n");
      out.write("            <div class=\"jumbotron\">\r\n");
      out.write("              <h1 class=\"text-center\">Testimonial</h1>\r\n");
      out.write("              <p>Berikut ini adalah kesan dan pesan dari pelanggan setia Hava Recipe.Kesan dan Pesan ini untuk membuat\r\n");
      out.write("                Hava-Recipe lebih baik kedepannya</p>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!-- Start Table  -->\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("          <div class=\"col-md-12\">\r\n");
      out.write("            <!-- Advanced Tables -->\r\n");
      out.write("            <div class=\"panel panel-default\">\r\n");
      out.write("              <div class=\"panel-heading\">\r\n");
      out.write("                User Table\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"panel-body\">\r\n");
      out.write("                <div class=\"table-responsive\">\r\n");
      out.write("                    <table class=\"table table-striped table-bordered table-hover\"  id=\"tb_feedback\">\r\n");
      out.write("                    <thead>\r\n");
      out.write("                      <tr>\r\n");
      out.write("                        <th>No</th>\r\n");
      out.write("                        <th>Full Name</th>\r\n");
      out.write("                        <th>Email</th>\r\n");
      out.write("                        <th>category</th>\r\n");
      out.write("                        <th>Message</th>\r\n");
      out.write("                      </tr>\r\n");
      out.write("                    </thead>\r\n");
      out.write("                    <tbody>\r\n");
      out.write("\r\n");
      out.write("                    </tbody>\r\n");
      out.write("                  </table>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--End Table -->\r\n");
      out.write("\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("      <!-- /. PAGE INNER  -->\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- /. PAGE WRAPPER  -->\r\n");
      out.write("  </div>\r\n");
      out.write("  <!-- /. WRAPPER  -->\r\n");
      out.write("  <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->\r\n");
      out.write("  <!-- JQUERY SCRIPTS -->\r\n");
      out.write("  <script src=\"assets/js/jquery.js\"></script>\r\n");
      out.write("  <!-- BOOTSTRAP SCRIPTS -->\r\n");
      out.write("  <script src=\"assets/js/bootstrap.min.js\"></script>\r\n");
      out.write("  <!-- METISMENU SCRIPTS -->\r\n");
      out.write("  <script src=\"assets/js/jquery.metisMenu.js\"></script>\r\n");
      out.write("  <!-- DATA TABLE SCRIPTS -->\r\n");
      out.write("  <script src=\"assets/js/dataTables/jquery.dataTables.js\"></script>\r\n");
      out.write("  <script src=\"assets/js/dataTables/dataTables.bootstrap.js\"></script>\r\n");
      out.write("  <script>\r\n");
      out.write("    \r\n");
      out.write("    var tbFeedback = document.getElementById('tb_feedback');\r\n");
      out.write("    var databaseRef = firebase.database().ref('feedback/');\r\n");
      out.write("    var rowIndex = 1;\r\n");
      out.write("\r\n");
      out.write("    databaseRef.once('value', function(snapshot) {\r\n");
      out.write("            snapshot.forEach(function(childSnapshot) {\r\n");
      out.write("    var childKey = childSnapshot.key;\r\n");
      out.write("    var childData = childSnapshot.val();\r\n");
      out.write("\r\n");
      out.write("    var row = tbFeedback.insertRow(rowIndex);\r\n");
      out.write("    var cellId = row.insertCell(0);\r\n");
      out.write("    var cellName = row.insertCell(1);\r\n");
      out.write("    var cellEmail = row.insertCell(2);\r\n");
      out.write("    var cellRecipe = row.insertCell(3);\r\n");
      out.write("    var cellMessage = row.insertCell(4);\r\n");
      out.write("    cellId.appendChild(document.createTextNode(childKey));\r\n");
      out.write("    cellName.appendChild(document.createTextNode(childData.name));\r\n");
      out.write("    cellEmail.appendChild(document.createTextNode(childData.email));\r\n");
      out.write("    cellRecipe.appendChild(document.createTextNode(childData.recipe));\r\n");
      out.write("    cellMessage.appendChild(document.createTextNode(childData.message));\r\n");
      out.write("    rowIndex = rowIndex + 1;\r\n");
      out.write("    });\r\n");
      out.write("\r\n");
      out.write("    var table = document.getElementById(\"tb_feedback\");\r\n");
      out.write("    var rows = table.getElementsByTagName(\"tr\");\r\n");
      out.write("    for (i = 0; i < rows.length; i++) {\r\n");
      out.write("            var currentRow = table.rows[i];\r\n");
      out.write("            var createClickHandler = function(row) {\r\n");
      out.write("                    return function() {\r\n");
      out.write("                            var cell1 = row.getElementsByTagName(\"td\")[0];\r\n");
      out.write("                            var cell2 = row.getElementsByTagName(\"td\")[1];\r\n");
      out.write("                            var cell3 = row.getElementsByTagName(\"td\")[2];\r\n");
      out.write("                            var cell4 = row.getElementsByTagName(\"td\")[3];\r\n");
      out.write("                            var cell5 = row.getElementsByTagName(\"td\")[4];\r\n");
      out.write("                            var send = cell1.innerHTML;\r\n");
      out.write("                            var name = cell2.innerHTML;\r\n");
      out.write("                            var email = cell3.innerHTML;\r\n");
      out.write("                            var recipe = cell4.innerHTML;\r\n");
      out.write("                            var message = cell5.innerHTML;\r\n");
      out.write("                            document.getElementById('send').value = send;\r\n");
      out.write("                            document.getElementById('name').value = name;\r\n");
      out.write("                            document.getElementById('email').value = email;\r\n");
      out.write("                            document.getElementById('recipe').value = recipe;\r\n");
      out.write("                            document.getElementById('message').value = message;\r\n");
      out.write("                    };\r\n");
      out.write("            };\r\n");
      out.write("            currentRow.onclick = createClickHandler(currentRow);\r\n");
      out.write("            }\r\n");
      out.write("    });\r\n");
      out.write("    \r\n");
      out.write("  </script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
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
