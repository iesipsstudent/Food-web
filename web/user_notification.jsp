
<%@page import="db.DBConnector"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="com.mysql.jdbc.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>

<%

    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("login.html");
    }

    String pickup;
    
    String query="Select first_name from user where username = '"+username+"'";
    
    try{
           
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
   
    
%>



<!--<html>-->
<!--    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notifications</title>
    </head>
    
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <body class="w3-theme-l5">-->

        <div class="w3-card w3-round w3-white w3-center" style=" margin-top: 50px">
        <div class="w3-container">
            <h1>is Ready To pick up food</h1>
        </div>
      </div>
<!--    </body>
</html>-->
