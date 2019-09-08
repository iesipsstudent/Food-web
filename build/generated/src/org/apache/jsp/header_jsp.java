package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <title>W3.CSS Template</title>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://www.w3schools.com/lib/w3-theme-blue-grey.css\">\n");
      out.write("    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("    <style>\n");
      out.write("        html, body, h1, h2, h3, h4, h5 {font-family: \"Open Sans\", sans-serif}\n");
      out.write("    </style>\n");
      out.write("    <body class=\"w3-theme-l5\">\n");
      out.write("\n");
      out.write("        <!-- Navbar -->\n");
      out.write("        <div class=\"w3-top\">\n");
      out.write("            <div class=\"w3-bar w3-theme-d2 w3-left-align w3-large\">\n");
      out.write("                <a class=\"w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2\" href=\"javascript:void(0);\" onclick=\"openNav()\"><i class=\"fa fa-bars\"></i></a>\n");
      out.write("                <a href=\"#\" class=\"w3-bar-item w3-button w3-padding-large w3-theme-d4\"><i class=\"fa fa-home w3-margin-right\"></i>Logo</a>\n");
      out.write("                <a href=\"#\" class=\"w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white\" title=\"News\"><i class=\"fa fa-globe\"></i></a>\n");
      out.write("                <a href=\"#\" class=\"w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white\" title=\"Account Settings\"><i class=\"fa fa-user\"></i></a>\n");
      out.write("                <a href=\"#\" class=\"w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white\" title=\"Messages\"><i class=\"fa fa-envelope\"></i></a>\n");
      out.write("                <div class=\"w3-dropdown-hover w3-hide-small\">\n");
      out.write("                    <button class=\"w3-button w3-padding-large\" title=\"Notifications\"><i class=\"fa fa-bell\"></i><span class=\"w3-badge w3-right w3-small w3-green\">3</span></button>     \n");
      out.write("                    <div class=\"w3-dropdown-content w3-card-4 w3-bar-block\" style=\"width:300px\">\n");
      out.write("                        <a href=\"#\" class=\"w3-bar-item w3-button\">One new friend request</a>\n");
      out.write("                        <a href=\"#\" class=\"w3-bar-item w3-button\">John Doe posted on your wall</a>\n");
      out.write("                        <a href=\"#\" class=\"w3-bar-item w3-button\">Jane likes your post</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <a href=\"#\" class=\"w3-bar-item w3-button w3-hide-small w3-right w3-padding-large w3-hover-white\" title=\"My Account\">\n");
      out.write("                    <img src=\"/w3images/avatar2.png\" class=\"w3-circle\" style=\"height:23px;width:23px\" alt=\"Avatar\">\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Navbar on small screens -->\n");
      out.write("        <div id=\"navDemo\" class=\"w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium w3-large\">\n");
      out.write("            <a href=\"#\" class=\"w3-bar-item w3-button w3-padding-large\">Link 1</a>\n");
      out.write("            <a href=\"#\" class=\"w3-bar-item w3-button w3-padding-large\">Link 2</a>\n");
      out.write("            <a href=\"#\" class=\"w3-bar-item w3-button w3-padding-large\">Link 3</a>\n");
      out.write("            <a href=\"#\" class=\"w3-bar-item w3-button w3-padding-large\">My Profile</a>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Page Container -->\n");
      out.write("\n");
      out.write("        <div class=\"w3-container w3-content\">\n");
      out.write("            <div class=\"w3-row\">\n");
      out.write("                <div class=\"w3-container w3-padding-large\"style=\"max-width:1400px;margin-top:80px\">\n");
      out.write("                    <h1>Login Page</h1>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>  \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Footer -->\n");
      out.write("        <footer class=\"w3-container w3-theme-d3 w3-padding-16\">\n");
      out.write("            <h5>Footer</h5>\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("        <footer class=\"w3-container w3-theme-d5\">\n");
      out.write("            <p>Powered by <a href=\"https://www.w3schools.com/w3css/default.asp\" target=\"_blank\">w3.css</a></p>\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("        // Accordion\n");
      out.write("            function myFunction(id) {\n");
      out.write("                var x = document.getElementById(id);\n");
      out.write("                if (x.className.indexOf(\"w3-show\") == -1) {\n");
      out.write("                    x.className += \" w3-show\";\n");
      out.write("                    x.previousElementSibling.className += \" w3-theme-d1\";\n");
      out.write("                } else {\n");
      out.write("                    x.className = x.className.replace(\"w3-show\", \"\");\n");
      out.write("                    x.previousElementSibling.className =\n");
      out.write("                            x.previousElementSibling.className.replace(\" w3-theme-d1\", \"\");\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        // Used to toggle the menu on smaller screens when clicking on the menu button\n");
      out.write("            function openNav() {\n");
      out.write("                var x = document.getElementById(\"navDemo\");\n");
      out.write("                if (x.className.indexOf(\"w3-show\") == -1) {\n");
      out.write("                    x.className += \" w3-show\";\n");
      out.write("                } else {\n");
      out.write("                    x.className = x.className.replace(\" w3-show\", \"\");\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html> \n");
      out.write("\n");
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
