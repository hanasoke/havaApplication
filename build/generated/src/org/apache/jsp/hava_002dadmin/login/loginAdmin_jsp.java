package org.apache.jsp.hava_002dadmin.login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class loginAdmin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
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
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    \r\n");
      out.write("   <meta charset=\"utf-8\">\r\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("  <meta name=\"description\" content=\"\">\r\n");
      out.write("  <meta name=\"author\" content=\"\">\r\n");
      out.write("  <title>Login</title>\r\n");
      out.write("  \r\n");
      out.write("    <!-- Custom fonts for this template-->\r\n");
      out.write("    <link href=\"../assets/css/all.min.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("    <link\r\n");
      out.write("    href=\"https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i\"\r\n");
      out.write("    rel=\"stylesheet\">\r\n");
      out.write("    <!-- Custom styles for this template-->\r\n");
      out.write("    <link href=\"../assets/css/sb-admin-2.min.css\" rel=\"stylesheet\">\r\n");
      out.write("    \r\n");
      out.write("    <!-- The core Firebase JS SDK is always required and must be listed first -->\r\n");
      out.write("    <script src=\"https://www.gstatic.com/firebasejs/7.15.4/firebase-app.js\"></script>\r\n");
      out.write("    <script src=\"https://www.gstatic.com/firebasejs/7.15.4/firebase-database.js\"></script>\r\n");
      out.write("    <script src=\"https://www.gstatic.com/firebasejs/7.15.4/firebase-analytics.js\"></script>\r\n");
      out.write("    <script src=\"https://www.gstatic.com/firebasejs/7.15.4/firebase-auth.js\"></script>\r\n");
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
      out.write("   \r\n");
      out.write("    \r\n");
      out.write(" </head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <body class=\"bg-gradient-primary\">\r\n");
      out.write("\r\n");
      out.write("    <div class=\"container-fluid\">\r\n");
      out.write("\r\n");
      out.write("      <!-- Outer Row -->\r\n");
      out.write("      <div class=\"row justify-content-center\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"col-xl-10 col-lg-12 col-md-9\">\r\n");
      out.write("\r\n");
      out.write("          <div class=\"card o-hidden border-0 shadow-lg my-5\">\r\n");
      out.write("            <div class=\"card-body p-0\">\r\n");
      out.write("              <!-- Nested Row within Card Body -->\r\n");
      out.write("              <div class=\"row\">\r\n");
      out.write("                <div class=\"col-lg-6 d-none d-lg-block bg-login-image\"></div>\r\n");
      out.write("                <div class=\"col-lg-6\">\r\n");
      out.write("                  <div class=\"p-5\">\r\n");
      out.write("                    <div class=\"text-center\">\r\n");
      out.write("                      <h1 class=\"h4 text-gray-900 mb-4\">Welcome Back!</h1>\r\n");
      out.write("                    </div>\r\n");
      out.write("                      <form class=\"user\" id=\"user_div\">\r\n");
      out.write("                      <div class=\"form-group\">\r\n");
      out.write("                          <input type=\"email\" class=\"form-control form-control-user\" id=\"email\" placeholder=\"Enter Email\">\r\n");
      out.write("                      </div>\r\n");
      out.write("                      <div class=\"form-group\">\r\n");
      out.write("                        <input type=\"password\" class=\"form-control form-control-user\" id=\"password\"\r\n");
      out.write("                          placeholder=\"Password\">\r\n");
      out.write("                      </div>\r\n");
      out.write("                          <button type=\"button\" onclick=\"login()\" class=\"btn btn-primary btn-user btn-block\">Login</button>\r\n");
      out.write("      \r\n");
      out.write("                    </form>\r\n");
      out.write("                    <hr>\r\n");
      out.write("                    <div class=\"text-center\">\r\n");
      out.write("                      <a class=\"small\" href=\"registerAdmin.jsp\">Create an Account!</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("     \r\n");
      out.write("    \r\n");
      out.write("    <!-- Bootstrap core JavaScript-->\r\n");
      out.write("    <script src=\"../assets/js/jquery.js\"></script>\r\n");
      out.write("    <script src=\"../assets/js/bootstrap.bundle.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <!-- Core plugin JavaScript-->\r\n");
      out.write("    <script src=\"../assets/js/jquery.easing.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <!-- Custom scripts for all pages-->\r\n");
      out.write("    <script src=\"../assets/js/sb-admin-2.min.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("    <script>\r\n");
      out.write("        \r\n");
      out.write("        const auth = firebase.auth();\r\n");
      out.write("        \r\n");
      out.write("        function login() {\r\n");
      out.write("            var email = document.getElementById(\"email\");\r\n");
      out.write("            var password = document.getElementById(\"password\");\r\n");
      out.write("            \r\n");
      out.write("            const promise = auth.signInWithEmailAndPassword(email.value, password.value);\r\n");
      out.write("            promise.catch (e => alert(e.message));\r\n");
      out.write("            \r\n");
      out.write("        }\r\n");
      out.write("        \r\n");
      out.write("        auth.onAuthStateChanged(function(user) {\r\n");
      out.write("          \r\n");
      out.write("         if (user) {\r\n");
      out.write("            \r\n");
      out.write("            var email = user.email;\r\n");
      out.write("            var password = user.password;\r\n");
      out.write("            window.location.href = \"../index.jsp\";\r\n");
      out.write("    \r\n");
      out.write("        } else {\r\n");
      out.write("            \r\n");
      out.write("        }\r\n");
      out.write("          \r\n");
      out.write("      });\r\n");
      out.write("    </script>\r\n");
      out.write("    \r\n");
      out.write("  </body>\r\n");
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
