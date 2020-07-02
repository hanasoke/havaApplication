package org.apache.jsp.hava_002dadmin.crud;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addRecipes_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"utf-8\" />\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("  <title>Data Users Page</title>\r\n");
      out.write("  <!-- BOOTSTRAP STYLES-->\r\n");
      out.write("  <link href=\"../assets/css/bootstrap.css\" rel=\"stylesheet\" />\r\n");
      out.write("  <!-- FONTAWESOME STYLES-->\r\n");
      out.write("  <link href=\"../assets/css/font-awesome.css\" rel=\"stylesheet\" />\r\n");
      out.write("  <!-- MORRIS CHART STYLES-->\r\n");
      out.write("\r\n");
      out.write("  <!-- CUSTOM STYLES-->\r\n");
      out.write("  <link href=\"../assets/css/custom.css\" rel=\"stylesheet\" />\r\n");
      out.write("  <!-- GOOGLE FONTS-->\r\n");
      out.write("  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />\r\n");
      out.write("  <!-- TABLE STYLES-->\r\n");
      out.write("  <link href=\"../assets/js/dataTables/dataTables.bootstrap.css\" rel=\"stylesheet\" />\r\n");
      out.write("  \r\n");
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
      out.write("    <div id=\"wrapper\">\r\n");
      out.write("        <nav class=\"navbar navbar-default navbar-cls-top \" role=\"navigation\" style=\"margin-bottom: 0\">\r\n");
      out.write("          <div class=\"navbar-header\">\r\n");
      out.write("            <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".sidebar-collapse\">\r\n");
      out.write("              <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("              <span class=\"icon-bar\"></span>\r\n");
      out.write("              <span class=\"icon-bar\"></span>\r\n");
      out.write("              <span class=\"icon-bar\"></span>\r\n");
      out.write("            </button>\r\n");
      out.write("            <a class=\"navbar-brand\" href=\"../index.jsp\">Admin</a>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div style=\"color: white; padding: 15px 50px 5px 50px; float: right; font-size: 16px;\">\r\n");
      out.write("              <button type=\"button\" class=\"btn btn-danger square-btn-adjust\" onclick=\"signOut()\">Logout</button>\r\n");
      out.write("          </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("        <!-- Start Navbar  -->\r\n");
      out.write("        <nav class=\"navbar-default navbar-side\" role=\"navigation\">\r\n");
      out.write("          <div class=\"sidebar-collapse\">\r\n");
      out.write("            <ul class=\"nav\" id=\"main-menu\">\r\n");
      out.write("              <li class=\"text-center\">\r\n");
      out.write("                <img src=\"../assets/img/find_user.png\" class=\"user-image img-responsive\" />\r\n");
      out.write("              </li>\r\n");
      out.write("              <li>\r\n");
      out.write("                <a href=\"../index.jsp\"><i class=\"fa fa-dashboard fa-3x\"></i> Dashboard</a>\r\n");
      out.write("              </li>\r\n");
      out.write("              <li>\r\n");
      out.write("                <a class=\"active-menu\" href=\"../user_data.jsp\"><i class=\"fa fa-table fa-3x\"></i> User Data</a>\r\n");
      out.write("              </li>\r\n");
      out.write("              <li>\r\n");
      out.write("                  <a href=\"../feedback.jsp\"><i class=\"fa fa-qrcode fa-3x\"></i> Feedback</a>\r\n");
      out.write("              </li>\r\n");
      out.write("              <li>\r\n");
      out.write("                  <a href=\"../subscriber.jsp\"><i class=\"fa fa-table fa-3x\"></i> Subscriber</a>\r\n");
      out.write("              </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("          </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("        <!-- End Navbar  -->\r\n");
      out.write("\r\n");
      out.write("        <div id=\"page-wrapper\">\r\n");
      out.write("          <div id=\"page-inner\">\r\n");
      out.write("\r\n");
      out.write("            <!-- Form Elements -->\r\n");
      out.write("            <div class=\"panel panel-default\">\r\n");
      out.write("                <div class=\"panel-heading\">\r\n");
      out.write("                    User\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"panel-body\">\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-md-5\">\r\n");
      out.write("                            <h3>User</h3>\r\n");
      out.write("                            <form role=\"form\">\r\n");
      out.write("                                \r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <select id=\"kode_menu\" class=\"form-control\">\r\n");
      out.write("                                        <option value=\"\">Pilih Menu</option>\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <label>Password</label>\r\n");
      out.write("                                    <input class=\"form-control\" type=\"password\" placeholder=\"enter password\" id=\"password\"  required autocomplete=\"off\" />\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <button type=\"button\" id=\"saveUser\" class=\"btn btn-warning\">Submit</button>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </form>\r\n");
      out.write("                         </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                 </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- End Form Elements -->        \r\n");
      out.write("          </div>\r\n");
      out.write("          <!-- /. PAGE INNER  -->\r\n");
      out.write("        </div>\r\n");
      out.write("    <!-- /. PAGE WRAPPER  -->\r\n");
      out.write("    </div>   \r\n");
      out.write("    <script src=\"../assets/js/jquery.js\"></script>\r\n");
      out.write("    <!-- BOOTSTRAP SCRIPTS -->\r\n");
      out.write("    <script src=\"../assets/js/bootstrap.min.js\"></script>\r\n");
      out.write("    <!-- METISMENU SCRIPTS -->\r\n");
      out.write("    <script src=\"../assets/js/jquery.metisMenu.js\"></script>\r\n");
      out.write("    <!-- DATA TABLE SCRIPTS -->\r\n");
      out.write("    <script src=\"../assets/js/dataTables/jquery.dataTables.js\"></script>\r\n");
      out.write("    <script src=\"../assets/js/dataTables/dataTables.bootstrap.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("    <!--Sweet Alert-->\r\n");
      out.write("    <script src=\"../assets/js/sweetalert2.all.min.js\"></script>\r\n");
      out.write("    <script>\r\n");
      out.write("        var databaseRef = firebase.database().ref('users/');\r\n");
      out.write("        if(username != null && password != null) {\r\n");
      out.write("            \r\n");
      out.write("        }\r\n");
      out.write("        \r\n");
      out.write("        const saveUser = document.querySelector('#saveUser');\r\n");
      out.write("        \r\n");
      out.write("        saveUser.addEventListener('click',function(){\r\n");
      out.write("            var username = document.getElementById('username').value;\r\n");
      out.write("            var password = document.getElementById('password').value;\r\n");
      out.write("            var upk = firebase.database().ref().child('users').push().key;\r\n");
      out.write("\r\n");
      out.write("            if (username != \"\" && password != \"\" ) {\r\n");
      out.write("                var updates = {};\r\n");
      out.write("                var data = {\r\n");
      out.write("                    username: username,\r\n");
      out.write("                    password: password\r\n");
      out.write("                }\r\n");
      out.write("            \r\n");
      out.write("                updates['/users/' + upk] = data;\r\n");
      out.write("                firebase.database().ref().update(updates);\r\n");
      out.write("                Swal.fire({\r\n");
      out.write("                    title: 'Anda Sudah Menambahkan Pengguna',\r\n");
      out.write("                    icon: 'success',\r\n");
      out.write("                    confirmButtonColor: ' #2ecc71 '\r\n");
      out.write("                }).then((result) => {\r\n");
      out.write("                    if(result.value) {\r\n");
      out.write("                        document.location.href = \"../user_data.jsp\"\r\n");
      out.write("                    }\r\n");
      out.write("                });\r\n");
      out.write("            }            \r\n");
      out.write("            else if(username == \"\" && password != \"\") {\r\n");
      out.write("                Swal.fire({\r\n");
      out.write("                    title: 'Anda Belum mengisi username',\r\n");
      out.write("                    text: 'username wajib diisi',\r\n");
      out.write("                    icon: 'error',\r\n");
      out.write("                    confirmButtonColor: '#3085d6'\r\n");
      out.write("                });\r\n");
      out.write("            }            \r\n");
      out.write("            else if(username != \"\" && password == \"\") {\r\n");
      out.write("                Swal.fire({\r\n");
      out.write("                    title: 'Anda Belum mengisi password',\r\n");
      out.write("                    text: 'password wajib diisi',\r\n");
      out.write("                    icon: 'error',\r\n");
      out.write("                    confirmButtonColor: '#3085d6'\r\n");
      out.write("                });\r\n");
      out.write("            }            \r\n");
      out.write("            else {\r\n");
      out.write("                Swal.fire({\r\n");
      out.write("                    title: 'Anda Belum mengisi data',\r\n");
      out.write("                    text: 'data wajib diisi',\r\n");
      out.write("                    icon: 'error',\r\n");
      out.write("                    confirmButtonColor: '#3085d6'\r\n");
      out.write("                });\r\n");
      out.write("            }  \r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
