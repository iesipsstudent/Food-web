/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


/**
 *
 * @author Alok Hirwe
 */
public class Main {

    private UserAccount user;

    public UserAccount isLogin(String username, String password, String type) {
        String tablePassword = "";
        try {
            Statement st = DBConnector.getStatement();

            String query = "Select * from user where username='" + username + "'";

            ResultSet rs = st.executeQuery(query);

            user = new UserAccount();
            if (rs.next() && rs.getString("type").equals(type)) {
                System.out.println("Login Currect hai ......!");
                user.setUsername(rs.getString("username"));
                user.setAddress(rs.getString("address"));
                user.setEmail(rs.getString("email"));
                user.setMobileno(rs.getString("mo_number"));
                user.setCity(rs.getString("city"));
                user.setUserID(rs.getString("user_id"));

                tablePassword = rs.getString("password");

            } else {
                return null;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        if (username != null && password != null && !username.trim().equals("") && !password.trim().equals("") && password.equals(tablePassword)) {
            return user;
        }
        return null;
    }

    public boolean register(String username, String password, String email, String mo_number, String city, String address, String type) {

        try {
            Statement st = DBConnector.getStatement();

            String query = "insert into user(username,password,email,mo_number,city,address,type) values('" + username + "','" + password + "','" + email + "','" + mo_number + "','" + city + "','" + address + "','" + type + "')";

            int i = st.executeUpdate(query);

            if (i > 0) {
                System.out.println(i + " Record Inserted...");
                return true;
            } else {
                System.out.println("Recoed Insertion Fail..");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;

    }

    public boolean feed_form(String account_name, String user_id, String location, String type, String quantity, String contact, String date) {

        try {
            Statement st = DBConnector.getStatement();

            String query = "insert into feed_form(account_name,location,TYPE,quantity,contact,date) values('" + account_name + "','" + location + "','" + type + "','" + quantity + "','" + contact + "','" + date + "') ";
            String query1 = "insert into user_request(req_id,user_id) values(LAST_INSERT_ID(),'" + user_id + "') ";
            int i = st.executeUpdate(query);
            int j = st.executeUpdate(query1);

            if (i > 0 && j > 0) {
                System.out.println(i + " Record Inserted...");
                return true;
            } else {
                System.out.println("Recoed Insertion Fail..");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;

    }

    public boolean model_request_locked(String req_id, String ngo_id) {

        try {
            Statement st = DBConnector.getStatement();

            String query = "update user_request set ngo_id='" + ngo_id + "' where req_id='" + req_id + "'  ";
            int i = st.executeUpdate(query);

            if (i > 0) {
                System.out.println(i + " Record Inserted...");
                return true;
            } else {
                System.out.println("Recoed Insertion Fail..");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;

    }

    public boolean model_request_reject(String req_id, String ngo_id) {

        try {
            Statement st = DBConnector.getStatement();

            String query = "update user_request set ngo_id=0 where req_id='" + req_id + "' and ngo_id=" + ngo_id + " ";
            int i = st.executeUpdate(query);

            if (i > 0) {
                System.out.println(i + " Request Rejected...");
                return true;
            } else {
                System.out.println("Request Rejection Fail..");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;

    }

    public boolean model_request_done(String req_id, String user_id) {

        try {
            Statement st = DBConnector.getStatement();

            String query = "update user_request set done=1 where req_id='" + req_id + "'  ";
            int i = st.executeUpdate(query);

            if (i > 0) {
                System.out.println(i + " Record Inserted...");
                return true;
            } else {
                System.out.println("Recoed Insertion Fail..");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;

    }
   
     public String[] ngo_info(String req_id)
    {
        String a[] = new String[10];
      try {
            Statement st = DBConnector.getStatement();

            String query = "select * from user where user_id=(select ngo_id from user_request where req_id='"+req_id+"' )";

            ResultSet rs = st.executeQuery(query);

           
            if(rs.next()) {
                System.out.println("Data AA rha hai ......!");
                a[0]=rs.getString("username");
                a[1]=rs.getString("mo_number");
                a[2]=rs.getString("email");
                a[3]=rs.getString("city");
                a[4]=rs.getString("address");
                
                return a;
                 
                 } else {
                a[0]="";
                a[1]="";
                a[2]="";
                a[3]="";
                a[4]="";
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
       return null; 
    }
      public String[] donor_info(String req_id)
    {
        String a[] = new String[10];
      try {
            Statement st = DBConnector.getStatement();

            String query = "select * from user where user_id=(select ngo_id from user_request where req_id='"+req_id+"' )";

            ResultSet rs = st.executeQuery(query);

           
            if(rs.next()) {
                System.out.println("Data AA rha hai ......!");
                a[0]=rs.getString("username");
                a[1]=rs.getString("mo_number");
                a[2]=rs.getString("email");
                a[3]=rs.getString("city");
                a[4]=rs.getString("address");
                
                return a;
                 
                 } else {
                a[0]="";
                a[1]="";
                a[2]="";
                a[3]="";
                a[4]="";
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
       return null; 
    }
}
