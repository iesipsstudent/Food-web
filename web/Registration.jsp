
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <title>Get Involved</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <style>
        input{
            text-align: center;
        }
        
        body{
            background-image: url("images/registerbg.jpg");
        }

    </style>
    <body style=" margin-top: 100px; margin-bottom: 190px">
        
        <%@include file="header_home.jsp" %>
  
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
                <div id='result' class="w3-red w3-center w3-padding-16 "  >Username Already Registered</br><strong>Check Login Details</strong></div>
        <%    
            }
        %>
        

        <!-- First Grid -->
      
            <div id="register" class=" w3-center" style="position:absolute;display: inline-block; width: 520px; background-color: yellow; margin-left: -250px;margin-bottom: 190px; margin-right: 0px; left: 50%;">
                
                <div class="form-container" style="">
                    <form  action="Register" class="" style="width:500px;padding: 20px; background-color: transparent;background-image: url('https://www.transparenttextures.com/patterns/checkered-pattern.png');" method="post">
                        
                        <h1 style="text-align:center; color: white; "><strong>REGISTER</strong></h1><hr>
                        
                        <label for="email" style=""><b>Choose Username</b></label>
                        <input type="text" placeholder="Enter Name" name="username" required>

                        <label for="email"><b>Mobile no.</b></label>
                        <input type="text" placeholder="Enter Mobile No." name="mobileno" pattern="[0-9]{10}" required>

                        <label for="email"><b>Email</b></label>
                        <input type="text" placeholder="Enter Email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
                        
                        <label for="city"><b>City</b></label>
                        <input type="text" placeholder="Enter City" name="city" required>

                        <label for="email"><b>Address</b></label>
                        <input type="text" placeholder="Enter Address" name="address" required>

                        <label for="psw"><b>Choose Password</b></label>
                        <input type="password" placeholder="Enter Password" name="password" required>

                        <label for="type"><b>Type</b></label>
                            <select name="type">
                                <option disabled="true">Choose Account Type</option>
                                <option value="1">Donor</option>
                                <option value="0">NGO</option>

                            </select>

                    <button type="submit" class="btn">Register</button>
                    
                    </form>
            </div>
                
            </div>

            <!-- Footer -->
<!--            <footer class="w3-container w3-padding-64 w3-center w3-opacity w3-black">  
                <div class="w3-xlarge w3-padding-32">
                    <i class="fa fa-facebook-official w3-hover-opacity"></i>
                    <i class="fa fa-instagram w3-hover-opacity"></i>
                    <i class="fa fa-twitter w3-hover-opacity"></i>
                </div>
                <p><a href="index.jsp" target="_self"> &COPY; AnnaPurti 2019</a></p>
            </footer>-->

            <script>
                // Used to toggle the menu on small screens when clicking on the menu button
                function myFunction() {
                    var x = document.getElementById("navDemo");
                    if (x.className.indexOf("w3-show") == -1) {
                        x.className += " w3-show";
                    } else {
                        x.className = x.className.replace(" w3-show", "");
                    }
                }
                function openForm() {
                    document.getElementById("myForm").style.display = "block";
                    document.getElementById("myFormlogin").style.display = "none";
                }

                function closeForm() {
                    document.getElementById("myForm").style.display = "none";
                }
                function openForml() {
                    document.getElementById("myFormlogin").style.display = "block";
                    document.getElementById("myForm").style.display = "none";
                }

                function closeForml() {
                    document.getElementById("myFormlogin").style.display = "none";
                }
            </script>
<%@include file="footerhome.jsp" %>
    </body>
</html>