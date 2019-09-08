package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.LoginAuthenticator;

/**
 *
 * @author Pankaj
 */
public class LoginChecker extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("login.html");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String username=request.getParameter("uname");
        String password=request.getParameter("psw");
        String type = request.getParameter("type");
        LoginAuthenticator authenticator=new LoginAuthenticator();
        
        boolean login=authenticator.isLogin(username, password,type);
        
        if(login)
        {
            HttpSession session=request.getSession(true);
            session.setAttribute("username", username);
            response.sendRedirect("people.jsp");
            
            System.out.println("Session provided to "+username);
        }
        else
        {
            response.sendRedirect("login.html");
        }
        
    }
    
}
