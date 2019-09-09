
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page session="true" %>

<%
    String type = (String) session.getAttribute("type");

    if (session.getAttribute("username") == null) 
    {
        response.sendRedirect("index.jsp");
    }
%>


<html>
    
    <title>NGO</title>
    
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
                <a href="ngo_login.jsp" class=""><img src="images/FinalAnnaPurti.png" class="fa fa-home w3-margin-right" style=" height:55px; zoom: 100%; padding-bottom: 0px;padding-top: 0px;" align='left'"></a>
                <!--<a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="News"><i class="fa fa-globe"></i></a>-->
                <a href="account.jsp" class="w3-bar-item w3-button w3-hide-small" style="padding: 19px 30px 19px 30px; margin-left:-15px; " title="Account"><i class="fa fa-user"></i></a>
                <div class="w3-dropdown-hover w3-hide-small">
                    <!-- Calculating the toatal number of requesting and putting them into a variable "number"-->
                    
                    <%    try {
                            Statement st = DBConnector.getStatement();
                            
                             DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
                             LocalDate today = LocalDate.now();

                            String query = "SELECT COUNT(req_id) FROM annapurti.feed_form WHERE date>='"+today.minusDays(2)+"';";

                            ResultSet rs = st.executeQuery(query);

                            if (rs.next()) {
                                int number = Integer.parseInt(rs.getString(1));
                                System.out.println("number of requests " + number); 
                    %>
                    
<!--                <button class="w3-button w3-padding-large" onclick="notification();" title="Notifications">
                    <i class="fa fa-bell"></i>
                    <span class="w3-badge w3-right w3-small w3-green">
                        <%= number %>
                    </span>
                </button>-->
                                        
                    <button class="w3-button" style="padding-top:19px;padding-bottom:19px" onclick="notification();" title="Notifications">
                        <i class="fa fa-bell"></i>
                        <span class="w3-badge w3-right w3-small w3-green"><%= number%></span>
                    </button>
                          
                    <%   }

                                } catch (SQLException e) {
                                    System.out.println(e);
                                }


                            %>
                            
<!--                <button class="w3-button w3-padding-large" title="Notifications"><i class="fa fa-bell"></i><span class="w3-badge w3-right w3-small w3-green">3</span></button>     
                    <div class="w3-dropdown-content w3-card-4 w3-bar-block" style="width:300px">
                        <a href="#" class="w3-bar-item w3-button">One new friend request</a>
                        <a href="#" class="w3-bar-item w3-button">John Doe posted on your wall</a>
                        <a href="#" class="w3-bar-item w3-button">Jane likes your post</a>
                    </div>-->
                </div>
                <div class="w3-dropdown-hover w3-hide-small w3-right">

                    <button class="w3-button w3-padding-large w3-hover-white" onclick="notification();" title="Notifications"><img src="images/avatar2.png" class="w3-circle" style="height:30px;"></button>     
     
                    <!--                    <button class="w3-button w3-padding-large" title="Notifications"><i class="fa fa-bell"></i><span class="w3-badge w3-right w3-small w3-green">3</span></button>     -->
                    <div class="w3-dropdown-content w3-card-4 w3-bar-block" style="width:150px; margin-left: -80px">
                        <a href="account.jsp" class="w3-bar-item w3-button w3-center">Account</a>
                        <a href="index.jsp" class="w3-bar-item w3-button w3-text-red w3-center">Logout</a>
<!--                        <a href="#" class="w3-bar-item w3-button">Jane likes your post</a>-->
                    </div>
                </div>
                            
                            
<!--                <a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-padding-large w3-hover-white" onmouseenter="logout();" onmouseleave="mouseout();" title="My Account">
                    <img src="images/avatar2.png" class="w3-circle" style="height:30px;width:30px"onclick="account();" alt="Avatar">
                </a>-->
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

        <div class="w3-container w3-content" style="position:relative;  max-width:1450px;margin-top:40px"> 

            <!--                <div class="w3-container w3-padding-large"style="max-width:1400px;margin-top:80px">
                                
                            </div>-->
            
            
            
            <!-- Enable the below division for logout-->
<!--            <div id ="logout" onmouseenter="logout();" onmouseleave="mouseout();" style="position;z-index:1; top:14px;right:10px;visibility:hidden;">
                <div class="w3-card w3-round w3-white w3-center">
                    <div class="w3-container">
                        <p>   </p>
                        <img src="images/avatar2.png" alt="Avatar" style="height:30px;width:30px"><br>
                        <span><//%//=//(String) session.getAttribute("username")%></span>

                        <div class="w3-row w3-opacity">
                            <form action="Logout" method="post">
                                <div>
                                    <//%
//                                        System.out.println(session.getAttribute("username")+"Logged out");
                                    %>
                                    <button class="w3-button" style="color:red;">Logout</button>
                                </div>
                            </form>   
                        </div>
                    </div>
                </div>
            </div>-->
             
                                                

            <script>
                function account()
                {
                    window.location.replace("account.jsp");
                }
                  function notification()
                {
                    window.location.replace("notification_ngo.jsp");
                }
                function logout()
                {
                    document.getElementById("logout").style.visibility = 'visible';
                }
                function mouseout()
                {
                    document.getElementById("logout").style.visibility = 'hidden';
                }
            </script>



