package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class MyTeam_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header_home.jsp");
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

      out.write("<link href=\"https://fonts.googleapis.com/css?family=Bowlby+One+SC\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Lato\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Montserrat\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("    <style>\n");
      out.write("        body,h1,h2,h3,h4,h5,h6 {font-family: \"Lato\", sans-serif}\n");
      out.write("        .w3-bar,h1,button {font-family: \"Montserrat\", sans-serif}\n");
      out.write("        .fa-anchor,.fa-coffee {font-size:200px}\n");
      out.write("\n");
      out.write("        body {font-family: Arial, Helvetica, sans-serif;}\n");
      out.write("        * {box-sizing: border-box;}\n");
      out.write("\n");
      out.write("        /* Button used to open the contact form - fixed at the bottom of the page */\n");
      out.write("        .open-button {\n");
      out.write("            background-color: #555;\n");
      out.write("            color: white;\n");
      out.write("            padding: 16px 20px;\n");
      out.write("            border: none;\n");
      out.write("            cursor: pointer;\n");
      out.write("            opacity: 0.8;\n");
      out.write("            position: fixed;\n");
      out.write("            bottom: 23px;\n");
      out.write("            right: 28px;\n");
      out.write("            width: 280px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* The popup form - hidden by default */\n");
      out.write("        .form-popup {\n");
      out.write("            display: none;\n");
      out.write("            position: absolute;\n");
      out.write("            bottom: 45px;\n");
      out.write("            right: 15px;\n");
      out.write("            border: 3px solid #f1f1f1;\n");
      out.write("            z-index: 9;\n");
      out.write("        }\n");
      out.write("        .form-popup-login {\n");
      out.write("            display: none;\n");
      out.write("            position: absolute;\n");
      out.write("            top:70;\n");
      out.write("            right: 15px;\n");
      out.write("            border: 0px solid black;\n");
      out.write("            box-shadow:0 0 20px rgba(0,0,0,0.8);\n");
      out.write("\n");
      out.write("            box-shadow: 10px 10px 5px #4d636g;\n");
      out.write("            z-index: 9;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Add styles to the form container */\n");
      out.write("        .form-container {\n");
      out.write("            max-width: 300px;\n");
      out.write("            padding: 10px;\n");
      out.write("            background-color:transparent;\n");
      out.write("\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Full-width input fields */\n");
      out.write("        .form-container select,.form-container input[type=text], .form-container input[type=password] {\n");
      out.write("            width: 100%;\n");
      out.write("            padding: 15px;\n");
      out.write("            margin: 5px 0 22px 0;\n");
      out.write("            border: none;\n");
      out.write("            background: #f1f1f1;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* When the inputs get focus, do something */\n");
      out.write("        .form-container select:focus, .form-container input[type=text]:focus, .form-container input[type=password]:focus {\n");
      out.write("            background-color: #ddd;\n");
      out.write("            outline: none;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Set a style for the submit/login button */\n");
      out.write("        .form-container .btn {\n");
      out.write("            background-color: #4CAF50;\n");
      out.write("            color: white;\n");
      out.write("            padding: 16px 20px;\n");
      out.write("            border: none;\n");
      out.write("            cursor: pointer;\n");
      out.write("            width: 100%;\n");
      out.write("            margin-bottom:10px;\n");
      out.write("            opacity: 0.8;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Add a red background color to the cancel button */\n");
      out.write("        .form-container .cancel {\n");
      out.write("            background-color: red;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Add some hover effects to buttons */\n");
      out.write("        .form-container .btn:hover, .open-button:hover {\n");
      out.write("            opacity: 1;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        /* For keeping top bar button in middle */\n");
      out.write("        .topmenubarbutton{\n");
      out.write("        margin-top: 5px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("<!--        <div class=\"w3-top\">\n");
      out.write("            <div class=\"w3-bar w3-red w3-card w3-left-align w3-large\">\n");
      out.write("                <a class=\"w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red\" href=\"javascript:void(0);\" onclick=\"myFunction()\" title=\"Toggle Navigation Menu\"><i class=\"fa fa-bars\"></i></a>\n");
      out.write("                <a href=\"index.jsp\" class=\"w3-bar-item w3-button w3-padding-large w3-white\">Home</a>\n");
      out.write("                <a href=\"about.jsp\" class=\"w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white\">About Us</a>\n");
      out.write("                <a href=\"#\" class=\"w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white\">Link 2</a>\n");
      out.write("\n");
      out.write("            </div>-->\n");
      out.write("<div class=\"w3-top\" style=\" color: white\">\n");
      out.write("    <div class=\"w3-bar w3-left-align w3-large\" style= \" background-image: url('images/black-linen.png')\" ><!--   Add \"w3-red\" for red on MEnu AND \" w3-card\" for bottom shadow   -->\n");
      out.write("      <strong>\n");
      out.write("         <a class=\"w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red\" href=\"javascript:void(0);\" onclick=\"myFunction()\" title=\"Toggle Navigation Menu\"><i class=\"fa fa-bars\"></i></a>\n");
      out.write("<!--         <a href=\"#\" class=\" w3-bar-item w3-button w3-hover-opacity\"><img src=\"images\\annapurti_logo2.png\" style=\" zoom: 25%\"></a>-->\n");
      out.write("<a href=\"index.jsp\"><img src=\"images\\FinalAnnaPurti.png\" class=\"\" style=\" zoom: 42%; padding-right: 10px; padding-left: 10px; margin-left: 5%\" align='left'></a>\n");
      out.write("         <a href=\"index.jsp\" class=\"w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white topmenubarbutton\" style=' margin-left: 30%'>Home</a>\n");
      out.write("         <a href=\"about.jsp\" class=\"w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white topmenubarbutton\">About Us</a>\n");
      out.write("         <a href=\"MyTeam.jsp\" class=\"w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white topmenubarbutton\">Our Team</a>\n");
      out.write("      </strong>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("    \n");
      out.write("    <!-- WARNING :- Do not disable the buttons as it may cause serious damage. Also , Keep them everywhere-->\n");
      out.write("  <!-- Navbar on small screens///// Are of no use  -->\n");
      out.write("  <div id=\"navDemo\" class=\"w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large\">\n");
      out.write("    <a href=\"#\" class=\"w3-bar-item w3-button w3-padding-large\">Link 1</a>\n");
      out.write("    <a href=\"#\" class=\"w3-bar-item w3-button w3-padding-large\">Link 2</a>\n");
      out.write("    <a href=\"#\" class=\"w3-bar-item w3-button w3-padding-large\">Link 3</a>\n");
      out.write("    <a href=\"#\" class=\"w3-bar-item w3-button w3-padding-large\">Link 4</a>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("            \n");
      out.write("    <script>\n");
      out.write("    function myFunction() {\n");
      out.write("                var x = document.getElementById(\"navDemo\");\n");
      out.write("                if (x.className.indexOf(\"w3-show\") === -1) {\n");
      out.write("                    x.className += \" w3-show\";\n");
      out.write("                } else {\n");
      out.write("                    x.className = x.className.replace(\" w3-show\", \"\");\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            function openForm() {\n");
      out.write("                document.getElementById(\"myForm\").style.display = \"block\";\n");
      out.write("                document.getElementById(\"myFormlogin\").style.display = \"none\";\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function closeForm() {\n");
      out.write("                document.getElementById(\"myForm\").style.display =       }\n");
      out.write("            function openForml() {\n");
      out.write("                document.getElementById(\"myFormlogin\").style.display = \"block\";\n");
      out.write("                document.getElementById(\"myForm\").style.display = \"none\";\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function closeForml() {\n");
      out.write("                document.getElementById(\"myFormlogin\").style.display = \"none\";\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Our Team</title>\n");
      out.write("    </head>\n");
      out.write("<!--            width: 40%;\n");
      out.write("            height:40%;\n");
      out.write("            margin-left:100px;\n");
      out.write("            margin-bottom:25px;\n");
      out.write("        }-->\n");
      out.write("     <style>\n");
      out.write("        body{\n");
      out.write("            background-image: url(\"images/BackTeam.jpg\");\n");
      out.write("            margin-top: 100px;\n");
      out.write("        }\n");
      out.write("        .mohit{\n");
      out.write("            float:left;\n");
      out.write("            width: 40%;\n");
      out.write("            height:40%;\n");
      out.write("            margin-left:100px;\n");
      out.write("            margin-bottom:25px;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <div class=\"w3-card w3-container w3-round w3-white mohit\"  style=\" position:relative;display: block;background-image: url('https://www.transparenttextures.com/patterns/batthern.png');\">\n");
      out.write("            \n");
      out.write("            <h1 class=\"w3-left w3-center\" style=\"font-family: 'Bowlby One SC', cursive; margin-top:100px;\"><b>Ritansh Bangre</b></h1>\n");
      out.write("            <div class=\"\" style=\" position: absolute; margin-top:0px; right: 15px;\">\n");
      out.write("            <p class=\"w3-center\">\n");
      out.write("            <img src=\"images/Ritansh.jpg\" style=\"height:225px;width:225px\" alt=\"Avatar\">\n");
      out.write("            </p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"w3-card w3-container w3-round w3-white mohit\"  style=\" position:relative;display: block;background-image: url('https://www.transparenttextures.com/patterns/batthern.png');\">\n");
      out.write("            \n");
      out.write("            <h1 class=\"w3-left w3-center\" style=\"font-family: 'Bowlby One SC', cursive; margin-top:100px;\"><b>Atisha Raikar</b></h1>\n");
      out.write("            <div class=\"\" style=\" position: absolute; margin-top:0px; right: 15px;\">\n");
      out.write("            <p class=\"w3-center\">\n");
      out.write("            <img src=\"images/Atisha.jpg\" style=\"height:225px;width:225px\" alt=\"Avatar\">\n");
      out.write("            </p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("                <div class=\"w3-card w3-container w3-round w3-white mohit\"  style=\" position:relative;display: block;background-image: url('https://www.transparenttextures.com/patterns/batthern.png');\">\n");
      out.write("            \n");
      out.write("            <h2 class=\"w3-left w3-center\" style=\"font-family: 'Bowlby One SC', cursive; margin-top:100px;\"><b>Nishkarsh Sharma</b></h2>\n");
      out.write("            <div class=\"\" style=\" position: absolute; margin-top:0px; right: 15px;\">\n");
      out.write("            <p class=\"w3-center\">\n");
      out.write("            <img src=\"images/nishkarsh.jpeg\" style=\"height:225px;width:225px\" alt=\"Avatar\">\n");
      out.write("            </p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("                <div class=\"w3-card w3-container w3-round w3-white mohit\"  style=\" position:relative;display: block;background-image: url('https://www.transparenttextures.com/patterns/batthern.png');\">\n");
      out.write("            \n");
      out.write("            <h1 class=\"w3-left w3-center\" style=\"font-family: 'Bowlby One SC', cursive; margin-top:100px;\"><b>Pawan Patidar</b></h1>\n");
      out.write("            <div class=\"\" style=\" position: absolute; margin-top:0px; right: 15px;\">\n");
      out.write("            <p class=\"w3-center\">\n");
      out.write("            <img src=\"images/pawan2.jpeg\" style=\"height:225px;width:225px\" alt=\"Avatar\">\n");
      out.write("            </p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("            \n");
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
