<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Login</title>
    </head>
    <style>
        input{
            text-align: center;
        }
        body{
            background-image: url("https://cdn.pixabay.com/photo/2014/06/11/17/00/cook-366875__340.jpg");
            background-size: 100%;
            
        }
    </style>
    <body style=" margin-top: 100px; margin-bottom: 190px">
        
        
        <!--Checking if user has arrived to login from registration page-->
        
        <%
            HttpSession sessionR = request.getSession(true);
            String var = (String) sessionR.getAttribute("success");     //"success" is for checking if user has come from registration page
            sessionR.setAttribute("success", null);
            if(var=="1")
            {
        %>
        <div id='result' class="w3-green w3-center w3-padding-16 "  >Registered Successfully</br><strong>Login to continue</strong></div>
                    
        <% 
            } 
        
            if(var=="2")
            {
        %>
                <div id='result' class="w3-red w3-center w3-padding-16 "  >Invalid Login</br><strong>Check Login Details</strong></div>
        <%    
            }
        %>
        
        <!-- Main code starts from below -->
        
        <%@include file="header_home.jsp" %>
        <div id="myFormlogin" class="w3-center" style="position:absolute;display: inline-block; width: 520px; margin-left: -260px; background-color:#50e598;margin-bottom: 190px; left: 50%;">
            <div class="form-container">
            <form action="Login" class="" method="post" style="width:500px ;padding: 20px; background-color: transparent;background-image: url('https://www.transparenttextures.com/patterns/checkered-pattern.png');">
                <h1 style="color:white;"><strong>LOGIN</strong></h1><hr>
             
                <label for="uname"><b>Username</b></label>
                <input type="text" placeholder="Enter Username" name="uname" required>

                <label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="psw" required>
                
                <label><b>Type</b></label>
                <select name="type">
                    <option value="" disabled="true">Choose Type</option>
                    <option value="1">Donor</option>
                    <option value="0">NGO</option>
                </select>
                
                <button type="submit" class="btn">Login</button>
            </form>
            </div>
            
        </div>
    </body>
    <%@include file="footerhome.jsp" %>
</html>