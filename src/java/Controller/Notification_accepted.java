/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Main;
import model.UserAccount;

/**
 *
 * @author Alok Hirwe
 */
public class Notification_accepted extends HttpServlet {

   public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("login.html");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        System.out.println("Notification_ngo");
        String req_id = request.getParameter("req_id");
       
        HttpSession session=request.getSession(true);
        String ngo_id = (String)session.getAttribute("user_id");
        
        Main m=new Main();
        boolean done=m.model_request_locked(req_id,ngo_id);
        
        
        if(done)
        {
               String success = "1";
               HttpSession sessionR=request.getSession(true);
               sessionR.setAttribute("success", success);
               System.out.println("Inside Notification ngo");
               response.sendRedirect("notification_ngo.jsp");
              
        }
        else
        {
            System.out.println("no");
            response.sendRedirect("feed_form.html");
        }
    }
    

}
