
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 *
 * @author Alok Hirwe
 */
public class Logout extends HttpServlet {

  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("login.html");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
         HttpSession session=request.getSession(true);
         System.out.println((String)session.getAttribute("username"));
         
        session.invalidate();
        response.sendRedirect("index.jsp");
          
    }
}
