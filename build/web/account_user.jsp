
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file = "header.jsp" %> 
  
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Aldrich" rel="stylesheet">


<%
    String username = (String) session.getAttribute("username");
    String city=(String) session.getAttribute("city");
    String email=(String) session.getAttribute("email");
    String mob=(String) session.getAttribute("mo_number");
    String address=(String) session.getAttribute("address");
    if (username == null) {
        response.sendRedirect("login.html");
    }
%>

<style>
    body{
        background-image: url("images/GreyPolygons.jpg");
        background-size: 110%;
    }
</style>

<body>
    <div style=" width: 100%; margin-top:100px;">

        <!-- Left Column -->
        <!-- Profile -->
                <div class="w3-card w3-container w3-round w3-white "  style="width:50%;  background-color: #c0a0de;  width: 450px; display: block;  margin-left: auto;  margin-right: auto; background-image: url('https://www.transparenttextures.com/patterns/batthern.png');">
                
                
                    <h2 class="w3-center" style="font-family: 'Aldrich', sans-serif;"><b>My Profile</b></h2>
                    <p class="w3-center">
                        <img src="images/avatar3.png" class="w3-circle" style="height:106px;width:106px" alt="Avatar">
                    </p>
                    <hr>
                    <table style="width:85%; margin-left:15%; margin-bottom:15px;">
                        
                        <tr>
                            <td><i class="fas fa-user fa-fw w3-margin-right w3-text-theme"></i><b>Username :- </b></td>
                            <td><%= username%></td>
                        </tr>
                        
                        <tr>
                            <td><i class="fas fa-envelope-open-text w3-margin-right w3-text-theme"></i><b>Email :- </b></td>
                            <td><%= email%></td>
                        </tr>
                        
                        <tr>
                            <td><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i><b>Address :- </b></td>
                            <td><%= address%></td>
                        </tr>
                        
                        <tr>
                            <td><i class="fas fa-building fa-fw w3-margin-right w3-text-theme"></i><b>City :- </b></td>
                            <td><%= city%></td>
                        </tr>
                        
                        <tr>
                            <td><i class="fas fa-mobile fa-fw w3-margin-right w3-text-theme"></i><b>Contact :- </b></td>
                            <td><%= mob%></td>
                        </tr>
                <!--<p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i> April 1, 1988</p>-->
                    </table>
                </div>
    </div>    
  <!-- End Grid -->


<%@include file = "footer.jsp" %>
</body>