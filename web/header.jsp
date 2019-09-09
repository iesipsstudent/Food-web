
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@page session="true" %>--%>
<%
    String type = (String) session.getAttribute("type");

    if (session.getAttribute("username") == null || session.getAttribute("type").equals("0")) {
        response.sendRedirect("index.jsp");
    }


%>
<!DOCTYPE html>
<html>
    <title>User</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        html, body, h1, h2, h3, h4, h5 {font-family: "Open Sans", sans-serif}
    </style>
    <body class="w3-theme-l5">

        <!-- Navbar -->
        <div class="w3-top">
            <div class="w3-bar w3-theme-d2 w3-left-align w3-large">
                <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
                <a href="people.jsp" class="" style=""><img src="images/FinalAnnaPurti.png" class="fa fa-home w3-margin-right" style=" zoom: 100%; height: 57px;" align='left'></a>
                <!--<a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="News"><i class="fa fa-globe"></i></a>-->
                <a href="account_user.jsp" class="w3-bar-item w3-button w3-hide-small" style="padding: 15px 30px 15px 30px; margin-left:-15px; " title="Account"><i class="fa fa-user"></i></a>
                <!--<a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Messages"><i class="fa fa-envelope"></i></a>-->
                <div class="w3-dropdown-hover w3-hide-small">
                    <%    try {
                            Statement st = DBConnector.getStatement();
                            String user_id = (String) session.getAttribute("user_id");

                            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
                            LocalDate today = LocalDate.now();
                            
                            String query = "SELECT COUNT(req_id) FROM user_request natural join feed_form WHERE user_id='" + user_id + "' and ngo_id!=0 and date>='"+today.minusDays(2)+"' ;";

                            ResultSet rs = st.executeQuery(query);

                            if (rs.next()) {
                                int number = Integer.parseInt(rs.getString(1));
                                System.out.println("number of requests " + number);
                    %>

                    <button class="w3-button" style="padding-top:15px;padding-bottom:15px" onclick="notification();" title="Notifications">
                        <i class="fa fa-bell"></i>
                        <span class="w3-badge w3-right w3-small w3-green"><%= number%></span>
                    </button>     

                    <%   }

                        } catch (SQLException e) {
                            System.out.println(e);
                        }


                    %>     
                    <!--                    <button class="w3-button w3-padding-large" title="Notifications"><i class="fa fa-bell"></i><span class="w3-badge w3-right w3-small w3-green">3</span></button>     -->
                </div>
<!--                <a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-padding-large w3-hover-white" onmouseenter="logout();" onmouseleave="mouseout();" title="My Account">
                    <img src="images/avatar2.png" class="w3-circle" style="height:30px;width:30px"onclick="account();" alt="Avatar">
                    
                </a>-->
                <div class="w3-dropdown-hover w3-hide-small w3-right">

                    <button class="w3-button w3-padding-large w3-hover-white"><img src="images/avatar2.png" class="w3-circle" style="height:30px;"></button>     
     
                    <!--                    <button class="w3-button w3-padding-large" title="Notifications"><i class="fa fa-bell"></i><span class="w3-badge w3-right w3-small w3-green">3</span></button>     -->
                    <div class="w3-dropdown-content w3-card-4 w3-bar-block" style="width:150px; margin-left: -80px">
                        <a href="account_user.jsp" class="w3-bar-item w3-button w3-center">Account</a>
                        <a href="index.jsp" class="w3-bar-item w3-button w3-text-red w3-center">Logout</a>
<!--                        <a href="#" class="w3-bar-item w3-button">Jane likes your post</a>-->
                    </div>
                </div>
                        
            </div>
        </div>

        <!-- Navbar on small screens -->
        <div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium w3-large">
            <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
            <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 2</a>
            <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 3</a>
            <a href="#" class="w3-bar-item w3-button w3-padding-large">My Profile</a>
        </div>

        <!-- Page Container -->

        <div class="w3-container w3-content" style="max-width:1450px;margin-top:40px"> 

            <!--                <div class="w3-container w3-padding-large"style="max-width:1400px;margin-top:80px">
                                
                            </div>-->
            <div id ="logout" onmouseenter="logout();" onmouseleave="mouseout();" style="position:fixed;z-index:1; top:50px;right:10px;visibility:hidden;">
                <div class="w3-card w3-round w3-white w3-center">
                    <div class="w3-container">
                        <p>   </p>
                        <img src="images/avatar2.png" alt="Avatar" style="height:30px;width:30px"><br>
                        <span><%=(String) session.getAttribute("username")%></span>

                        <div class="w3-row w3-opacity">
                            <form action="Logout" method="post">
                                <div>
                                    <button class="w3-button" style="color:red;">Logout</button>
                                </div>
                            </form>   
                        </div>
                    </div>
                </div>
            </div>

            <script>
                function account()
                {
                    window.location.replace("account_user.jsp");
                }
                function logout()
                {
                    document.getElementById("logout").style.visibility = 'visible';
                }
                function mouseout()
                {
                    document.getElementById("logout").style.visibility = 'hidden';
                }
                function notification()
                {
                    window.location.replace("notification_user.jsp");
                }
            </script>


