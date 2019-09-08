package org.apache.jsp;

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
      out.write("<html lang=\"en\">\n");
      out.write("<title>AnnaPurti</title>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Lato\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Montserrat\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.0/css/all.css\" integrity=\"sha384-Mmxa0mLqhmOeaE8vgOSbKacftZcsNYDjQzuCOm6D02luYSzBG8vpaOykv9lFQ51Y\" crossorigin=\"anonymous\">\n");
      out.write("<style>\n");
      out.write("body,h1,h2,h3,h4,h5,h6 {font-family: \"Lato\", sans-serif}\n");
      out.write(".w3-bar,h1,button {font-family: \"Montserrat\", sans-serif}\n");
      out.write(".fa-anchor,.fa-coffee {font-size:200px}\n");
      out.write("\n");
      out.write("\n");
      out.write("    body\n");
      out.write("    {\n");
      out.write("         background-image: url(\"images/street.jpg\");\n");
      out.write("         background-position: top;\n");
      out.write("         background-repeat: no-repeat;\n");
      out.write("         background-size: 100%;\n");
      out.write("         margin-top:225px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .topmenubarbutton{\n");
      out.write("        margin-top: 5px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<!--The Body tag in HTML 5 does not use the background image, so it is declared inside the styke tag -->\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("<!-- Navbar -->\n");
      out.write("<div class=\"w3-top\" style=\" color: white\">\n");
      out.write("    \n");
      out.write("    <div class=\"w3-bar w3-left-align w3-large\" style= \" background-image: url('images/black-linen.png')\" ><!--   Add \"w3-red\" for red on MEnu AND \" w3-card\" for bottom shadow   -->\n");
      out.write("      <strong>\n");
      out.write("        <a class=\"w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red\" href=\"javascript:void(0);\" onclick=\"myFunction()\" title=\"Toggle Navigation Menu\"><i class=\"fa fa-bars\"></i></a>\n");
      out.write("        <a class=\"\" href=\"index.jsp\"><img src=\"images\\FinalAnnaPurti.png\" class=\"\" style=\" zoom: 42%; padding-right: 10px; padding-left: 10px; margin-left: 5%\" align='left'></a>\n");
      out.write("        <a href=\"index.jsp\" class=\"w3-bar-item w3-button w3-padding-large w3-hide-small w3-hover-white topmenubarbutton\" style=' margin-left: 30%'>Home</a>\n");
      out.write("        <a href=\"about.jsp\" class=\"w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white topmenubarbutton\">About Us</a>\n");
      out.write("        <a href=\"MyTeam.jsp\"         class=\"w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white topmenubarbutton\">Our Team</a>\n");
      out.write("      </strong>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    \n");
      out.write("  <!-- WARNING :- Do not disable the buttons as it may cause serious damage. Also , Keep them everywhere-->\n");
      out.write("  <!-- Navbar on small screens///// Are of no use  -->\n");
      out.write("    <div id=\"navDemo\" class=\"w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large\">\n");
      out.write("        <a href=\"#\" class=\"w3-bar-item w3-button w3-padding-large\">Link 1</a>\n");
      out.write("        <a href=\"#\" class=\"w3-bar-item w3-button w3-padding-large\">Link 2</a>\n");
      out.write("        <a href=\"#\" class=\"w3-bar-item w3-button w3-padding-large\">Link 3</a>\n");
      out.write("        <a href=\"#\" class=\"w3-bar-item w3-button w3-padding-large\">Link 4</a>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- Header -->\n");
      out.write("<img src=\"images\\FinalAnnaPurti.png\" style=\" width: 50%; margin-left: auto; margin-right: auto; display: block; height: 50%; margin-top: 120px\" >\n");
      out.write("<header class=\"w3-container w3-center\" style=\"padding:100px 37%; \">               <!--   Adjust this to make get involved/ login on center of the screen   -->\n");
      out.write("\n");
      out.write("    <div class=\"w3-center\">   <!-- Preffered to use this beacuse of w3-center class  -->\n");
      out.write("        <form action=\"Registration.jsp\">\n");
      out.write("            <button class=\"w3-button w3-red w3-padding-large w3-large w3-margin-top\"><b>Get Involved</b></button>\n");
      out.write("        </form>\n");
      out.write("               \n");
      out.write("        <form action=\"Login.jsp\">\n");
      out.write("            <button class=\"w3-button w3-red w3-padding-large w3-large w3-margin-top\" ><b>Login</b></button>\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("</header>\n");
      out.write("\n");
      out.write("<!--  First Left Grid   -->\n");
      out.write("<div style=\"margin-top:100px;\">\n");
      out.write("    <div class=\"w3-row-padding w3-padding-64 w3-container\">\n");
      out.write("        \n");
      out.write("        <div class=\"w3-content\">\n");
      out.write("            <div class=\" w3-twothird w3-center\">\n");
      out.write("                <h1 style=\" font-family: arial; font-size: 100px; color: greenyellow; font-weight: 900\"> 15.2%</h1>\n");
      out.write("                <h3 class=\" w3-padding-32\" style=\" font-family: times new roman\">of Indian population is <b>undernourished</b></h3>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    \n");
      out.write("        <div class=\" w3-third w3-center\">\n");
      out.write("            <i class=\"fas fa-hamburger fa-10x w3-padding-64 w3-text-red\"></i>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Second Right Grid-->\n");
      out.write("    <div class=\"w3-row-padding w3-light-grey w3-padding-64 w3-container\">\n");
      out.write("        <div class=\" w3-content\">\n");
      out.write("            <div class=\" w3-third w3-center\">\n");
      out.write("                <i class=\"fas fa-male fa-10x w3-text-red\"></i>\n");
      out.write("                <i class=\"fas fa-male fa-6x w3-padding-64 w3-text-red\"></i>\n");
      out.write("            </div>\n");
      out.write("        \n");
      out.write("            <div class=\" w3-twothird w3-center\">\n");
      out.write("                <h1 style=\" font-family: arial; font-size: 100px; color: greenyellow; font-weight: 900\"> 38.5%</h1>\n");
      out.write("                <h3 class=\" w3-padding-32\" style=\" font-family: times new roman\"> of childern under 5 are <b>stunted</b> (low height for their age), reflecting chronic undernutrition.</h3>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("<!--  Third Left Grid   -->\n");
      out.write("    <div class=\"w3-row-padding w3-padding-64 w3-container\">\n");
      out.write("        <div class=\" w3-content\">\n");
      out.write("            <div class=\" w3-twothird w3-center\">\n");
      out.write("                <h1 style=\" font-family: arial; font-size: 100px; color: greenyellow; font-weight: 900\"> 15.1%</h1>\n");
      out.write("                <h3 class=\" w3-padding-32\" style=\" font-family: times new roman\">of children under five are <b>wasted</b>(low weight for their height), reflecting acute undernutrition</h3>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    \n");
      out.write("        <div class=\" w3-third w3-center\">\n");
      out.write("            <i class=\"fas fa-weight fa-10x w3-padding-64 w3-text-red\"></i>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--  Fourth Rigth Grid   -->\n");
      out.write("\n");
      out.write("    <div class=\"w3-row-padding w3-light-grey w3-padding-64 w3-container\">\n");
      out.write("        <div class=\" w3-content\">\n");
      out.write("             <div class=\" w3-third w3-center\">\n");
      out.write("                 <i class=\"fas fa-baby fa-10x w3-text-red\"></i>\n");
      out.write("<!--             <i class=\"fas fa-baby fa-6x w3-padding-64 w3-text-red\"></i>-->\n");
      out.write("             </div>\n");
      out.write("        \n");
      out.write("            <div class=\" w3-twothird w3-center\">\n");
      out.write("                <h1 style=\" font-family: arial; font-size: 100px; color: greenyellow; font-weight: 900\"> 4.8%</h1>\n");
      out.write("                <h3 class=\" w3-padding-32\" style=\" font-family: times new roman\"> of children <b>die</b> before the age of five.</h3>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- Footer -->\n");
      out.write("<footer class=\"w3-container w3-padding-64 w3-black w3-center w3-opacity\">  \n");
      out.write("    <div class=\"w3-xlarge w3-padding-32\">\n");
      out.write("        <i class=\"fab fa-facebook w3-hover-opacity\"></i>\n");
      out.write("        <i class=\"fab fa-instagram w3-hover-opacity\"></i>\n");
      out.write("        <i class=\"fab fa-twitter w3-hover-opacity\"></i>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    <div class=\" w3-text-grey\">\n");
      out.write("        <p> &#169 AnnaPurti 2019</p>\n");
      out.write("    </div>\n");
      out.write("</footer>\n");
      out.write("\n");
      out.write("<!--Do not Change Below Script-->\n");
      out.write("<script>\n");
      out.write("// Used to toggle the menu on small screens when clicking on the menu button\n");
      out.write("function myFunction() {\n");
      out.write("  var x = document.getElementById(\"navDemo\");\n");
      out.write("  if (x.className.indexOf(\"w3-show\") === -1) {\n");
      out.write("    x.className += \" w3-show\";\n");
      out.write("  } else { \n");
      out.write("    x.className = x.className.replace(\" w3-show\", \"\");\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
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
