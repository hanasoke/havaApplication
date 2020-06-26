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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("﻿<!DOCTYPE html>\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\" />\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("  <title>Feedback Page</title>\n");
      out.write("  <!-- BOOTSTRAP STYLES-->\n");
      out.write("  <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" />\n");
      out.write("  <!-- FONTAWESOME STYLES-->\n");
      out.write("  <link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("  <!-- MORRIS CHART STYLES-->\n");
      out.write("\n");
      out.write("  <!-- CUSTOM STYLES-->\n");
      out.write("  <link href=\"assets/css/custom.css\" rel=\"stylesheet\" />\n");
      out.write("  <!-- GOOGLE FONTS-->\n");
      out.write("  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />\n");
      out.write("  <!-- TABLE STYLES-->\n");
      out.write("  <link href=\"assets/js/dataTables/dataTables.bootstrap.css\" rel=\"stylesheet\" />\n");
      out.write("  \n");
      out.write("  <!-- The core Firebase JS SDK is always required and must be listed first -->\n");
      out.write("    <script src=\"https://www.gstatic.com/firebasejs/7.15.4/firebase-app.js\"></script>\n");
      out.write("    <script src=\"https://www.gstatic.com/firebasejs/7.15.4/firebase-database.js\"></script>\n");
      out.write("    <script src=\"https://www.gstatic.com/firebasejs/7.15.4/firebase-analytics.js\"></script>\n");
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
      out.write("        <a class=\"navbar-brand\" href=\"index.html\">Binary admin</a>\n");
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
      out.write("            <img src=\"assets/img/find_user.png\" class=\"user-image img-responsive\" />\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"index.html\"><i class=\"fa fa-dashboard fa-3x\"></i> Dashboard</a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"user_data.jsp\"><i class=\"fa fa-table fa-3x\"></i> User Data</a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"feedback.jsp\" class=\"active-menu\"><i class=\"fa fa-qrcode fa-3x\"></i> Feedback</a>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("    <!-- End Navbar  -->\n");
      out.write("\n");
      out.write("    <div id=\"page-wrapper\">\n");
      out.write("      <div id=\"page-inner\">\n");
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-md-12\">\n");
      out.write("            <div class=\"jumbotron\">\n");
      out.write("              <h1 class=\"text-center\">Testimonial</h1>\n");
      out.write("              <p>Berikut ini adalah kesan dan pesan dari pelanggan setiap Hava Recipe.Kesan dan Pesan ini untuk membuat\n");
      out.write("                Hava-Recipe lebih baik kedepannya</p>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Start Table  -->\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-md-12\">\n");
      out.write("            <!-- Advanced Tables -->\n");
      out.write("            <div class=\"panel panel-default\">\n");
      out.write("              <div class=\"panel-heading\">\n");
      out.write("                User Table\n");
      out.write("              </div>\n");
      out.write("              <div class=\"panel-body\">\n");
      out.write("                <div class=\"table-responsive\">\n");
      out.write("                    <table class=\"table table-striped table-bordered table-hover\"  id=\"tb_feedback\">\n");
      out.write("                    <thead>\n");
      out.write("                      <tr>\n");
      out.write("                        <th>No</th>\n");
      out.write("                        <th>Full Name</th>\n");
      out.write("                        <th>Email</th>\n");
      out.write("                        <th>category</th>\n");
      out.write("                        <th>Message</th>\n");
      out.write("                      </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody>\n");
      out.write("\n");
      out.write("                    </tbody>\n");
      out.write("                  </table>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <!--End Table -->\n");
      out.write("\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("\n");
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
      out.write("  <!-- DATA TABLE SCRIPTS -->\n");
      out.write("  <script src=\"assets/js/dataTables/jquery.dataTables.js\"></script>\n");
      out.write("  <script src=\"assets/js/dataTables/dataTables.bootstrap.js\"></script>\n");
      out.write("  <script>\n");
      out.write("    \n");
      out.write("    var tbFeedback = document.getElementById('tb_feedback');\n");
      out.write("    var databaseRef = firebase.database().ref('feedback/');\n");
      out.write("    var rowIndex = 1;\n");
      out.write("\n");
      out.write("    databaseRef.once('value', function(snapshot) {\n");
      out.write("            snapshot.forEach(function(childSnapshot) {\n");
      out.write("    var childKey = childSnapshot.key;\n");
      out.write("    var childData = childSnapshot.val();\n");
      out.write("\n");
      out.write("    var row = tbFeedback.insertRow(rowIndex);\n");
      out.write("    var cellId = row.insertCell(0);\n");
      out.write("    var cellName = row.insertCell(1);\n");
      out.write("    var cellEmail = row.insertCell(2);\n");
      out.write("    var cellRecipe = row.insertCell(3);\n");
      out.write("    var cellMessage = row.insertCell(4);\n");
      out.write("    cellId.appendChild(document.createTextNode(childKey));\n");
      out.write("    cellName.appendChild(document.createTextNode(childData.name));\n");
      out.write("    cellEmail.appendChild(document.createTextNode(childData.email));\n");
      out.write("    cellRecipe.appendChild(document.createTextNode(childData.recipe));\n");
      out.write("    cellMessage.appendChild(document.createTextNode(childData.message));\n");
      out.write("    rowIndex = rowIndex + 1;\n");
      out.write("    });\n");
      out.write("\n");
      out.write("    var table = document.getElementById(\"tb_feedback\");\n");
      out.write("    var rows = table.getElementsByTagName(\"tr\");\n");
      out.write("    for (i = 0; i < rows.length; i++) {\n");
      out.write("            var currentRow = table.rows[i];\n");
      out.write("            var createClickHandler = function(row) {\n");
      out.write("                    return function() {\n");
      out.write("                            var cell1 = row.getElementsByTagName(\"td\")[0];\n");
      out.write("                            var cell2 = row.getElementsByTagName(\"td\")[1];\n");
      out.write("                            var cell3 = row.getElementsByTagName(\"td\")[2];\n");
      out.write("                            var cell4 = row.getElementsByTagName(\"td\")[3];\n");
      out.write("                            var cell5 = row.getElementsByTagName(\"td\")[4];\n");
      out.write("                            var send = cell1.innerHTML;\n");
      out.write("                            var name = cell2.innerHTML;\n");
      out.write("                            var email = cell3.innerHTML;\n");
      out.write("                            var recipe = cell4.innerHTML;\n");
      out.write("                            var message = cell5.innerHTML;\n");
      out.write("                            document.getElementById('send').value = send;\n");
      out.write("                            document.getElementById('name').value = name;\n");
      out.write("                            document.getElementById('email').value = email;\n");
      out.write("                            document.getElementById('recipe').value = recipe;\n");
      out.write("                            document.getElementById('message').value = message;\n");
      out.write("                    };\n");
      out.write("            };\n");
      out.write("            currentRow.onclick = createClickHandler(currentRow);\n");
      out.write("            }\n");
      out.write("    });\n");
      out.write("    \n");
      out.write("  </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
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
