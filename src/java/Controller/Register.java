/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.LoginAuthenticator;
import model.Main;

/**
 *
 * @author Alok Hirwe
 */
public class Register extends HttpServlet {
     @Override
     public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("login.html");
        System.out.println("Redirected to home via doGet()");
    }
    
     @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        System.out.println("Entered into doPost()");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String mo_number = request.getParameter("mobileno");
        String password = request.getParameter("password");
        String city = request.getParameter("city");
        String address = request.getParameter("address");
        String type = request.getParameter("type");
        
        Main m=new Main();
        
        boolean register=m.register(username, password,email,mo_number,city,address,type);
        
        
        if(register)
        {
               String success = "1";
               HttpSession sessionR=request.getSession(true);
               sessionR.setAttribute("success", success);
               
               
              response.sendRedirect("Login.jsp");
              System.out.println("Registration form successfull");
              
//            response.sendRedirect("people.jsp");
        }
        else
        {
             String success = "2";
               HttpSession sessionR=request.getSession(true);
               sessionR.setAttribute("success", success);
            System.out.println("Registration Form Failed");
            response.sendRedirect("Registration.jsp");
        }
    }
    


}
