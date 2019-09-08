/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;
import java.time.LocalDate;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Main;
import java.time.format.DateTimeFormatter; 
import java.time.LocalDateTime;   



/**
 *
 * @author Alok Hirwe
 */
public class Feed_info extends HttpServlet {

 @Override
     public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("login.html");
    }
    
     @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        HttpSession session=request.getSession(true);
        String account_name = (String)session.getAttribute("username");
        String user_id = (String)session.getAttribute("user_id");
        
        
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        LocalDateTime now = LocalDateTime.now();
        System.out.println(session);
           
        System.out.println(dtf.format(now));
             String date = dtf.format(now);
             System.out.println(date);
               
        String location = request.getParameter("location");
        String type = request.getParameter("type");
        String quantity = request.getParameter("quantity");
        String contact = request.getParameter("contact");
//        String d = date.valueOf(str);
//        
        
       
        
        Main m=new Main();
        boolean feeded=m.feed_form(account_name,user_id,location, type,quantity,contact,date);
        
        
        if(feeded)
        {
               String success = "1";
               HttpSession sessionR=request.getSession(true);
               sessionR.setAttribute("success", success);
               
              response.sendRedirect("people.jsp");
              
//            response.sendRedirect("people.jsp");
        }
        else
        {
            
            String success="2";
            HttpSession sessionR=request.getSession(true);
            sessionR.setAttribute("success",success);
            System.out.println("nhiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii");
            response.sendRedirect("people.html");
        }
    }
    
}
