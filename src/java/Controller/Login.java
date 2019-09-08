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

import model.Main;
import model.UserAccount;

/**
 *
 * @author Alok Hirwe
 */
public class Login extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("index.jsp");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String username=request.getParameter("uname");
        String password=request.getParameter("psw");
        String type=request.getParameter("type");
        
          Main m=new Main();
//        boolean login=m.isLogin(username, password,type);
        UserAccount user = m.isLogin(username, password,type);
        if(user != null)
        {
            HttpSession session=request.getSession(true);
            session.setAttribute("username", username);
            session.setAttribute("type",type);
            session.setAttribute("city",user.getCity());
            session.setAttribute("address",user.getAddress());
            session.setAttribute("email",user.getEmail());
            session.setAttribute("mo_number",user.getMobileno());
            session.setAttribute("user_id",user.getUserID());
            
            if(type.equals("1"))
            {
                response.sendRedirect("people.jsp");
               
            }
            if(type.equals("0"))
            {
                
                response.sendRedirect("ngo_login.jsp");
            }
        }
        else
        {
            String success = "2";
            HttpSession sessionR=request.getSession(true);
            sessionR.setAttribute("success", success);

            response.sendRedirect("Login.jsp");
            
        }
    }

}
