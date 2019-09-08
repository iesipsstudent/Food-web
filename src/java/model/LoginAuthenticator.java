package model;

import db.DBConnector;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Pankaj
 */
public class LoginAuthenticator 
{
    public boolean isLogin(String username,String password,String type)
    {
        String tablePassword="";
        try
        {
            Statement st=DBConnector.getStatement();
            
            String query="Select password,type from user where username='"+username+"'";
            
            ResultSet rs=st.executeQuery(query);
           
            if(rs.next() && rs.getString("type").equals(type))
            {
                System.out.println("Type Matched");                             ////This is Unused. Main method wala kaam kar raha
                tablePassword=rs.getString("password");
                
            }
            else
            {
                System.out.println("Type Not Matched");
                return false;
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        if(username!=null && password!=null && !username.trim().equals("") && !password.trim().equals("") && password.equals(tablePassword))
        {
            System.out.println("User Login Valid  "+username+password);
            return true;
        }
       return false;
         
    }
}
