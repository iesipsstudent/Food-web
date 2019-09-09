
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
        .w3-bar,h1,button {font-family: "Montserrat", sans-serif}
        .fa-anchor,.fa-coffee {font-size:200px}

        body {font-family: Arial, Helvetica, sans-serif;}
        * {box-sizing: border-box;}

        /* Button used to open the contact form - fixed at the bottom of the page */
        .open-button {
            background-color: #555;
            color: white;
            padding: 16px 20px;
            border: none;
            cursor: pointer;
            opacity: 0.8;
            position: fixed;
            bottom: 23px;
            right: 28px;
            width: 280px;
        }

        /* The popup form - hidden by default */
        .form-popup {
            display: none;
            position: absolute;
            bottom: 45px;
            right: 15px;
            border: 3px solid #f1f1f1;
            z-index: 9;
        }
        .form-popup-login {
            display: none;
            position: absolute;
            top:70;
            right: 15px;
            border: 0px solid black;
            box-shadow:0 0 20px rgba(0,0,0,0.8);

            box-shadow: 10px 10px 5px #4d636g;
            z-index: 9;
        }

        /* Add styles to the form container */
        .form-container {
            max-width: 300px;
            padding: 10px;
            background-color:transparent;


        }

        /* Full-width input fields */
        .form-container select,.form-container input[type=text], .form-container input[type=password] {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            border: none;
            background: #f1f1f1;
        }

        /* When the inputs get focus, do something */
        .form-container select:focus, .form-container input[type=text]:focus, .form-container input[type=password]:focus {
            background-color: #ddd;
            outline: none;
        }

        /* Set a style for the submit/login button */
        .form-container .btn {
            background-color: #4CAF50;
            color: white;
            padding: 16px 20px;
            border: none;
            cursor: pointer;
            width: 100%;
            margin-bottom:10px;
            opacity: 0.8;
        }

        /* Add a red background color to the cancel button */
        .form-container .cancel {
            background-color: red;
        }

        /* Add some hover effects to buttons */
        .form-container .btn:hover, .open-button:hover {
            opacity: 1;
        }
        
        /* For keeping top bar button in middle */
        .topmenubarbutton{
        margin-top: 5px;
    }

    </style>
    <body>
<!--        <div class="w3-top">
            <div class="w3-bar w3-red w3-card w3-left-align w3-large">
                <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
                <a href="index.jsp" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
                <a href="about.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">About Us</a>
                <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Link 2</a>

            </div>-->
<div class="w3-top" style=" color: white">
    <div class="w3-bar w3-left-align w3-large" style= " background-image: url('images/black-linen.png')" ><!--   Add "w3-red" for red on MEnu AND " w3-card" for bottom shadow   -->
      <strong>
         <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
<!--         <a href="#" class=" w3-bar-item w3-button w3-hover-opacity"><img src="images\annapurti_logo2.png" style=" zoom: 25%"></a>-->
<a href="index.jsp"><img src="images\FinalAnnaPurti.png" class="" style=" zoom: 42%; padding-right: 10px; padding-left: 10px; margin-left: 5%" align='left'></a>
         <a href="index.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white topmenubarbutton" style=' margin-left: 30%'>Home</a>
         <a href="about.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white topmenubarbutton">About Us</a>
         <a href="MyTeam.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white topmenubarbutton">Our Team</a>
      </strong>
  </div>

    
    <!-- WARNING :- Do not disable the buttons as it may cause serious damage. Also , Keep them everywhere-->
  <!-- Navbar on small screens///// Are of no use  -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 2</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 3</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 4</a>
  </div>
</div>

    </body>
            
    <script>
    function myFunction() {
                var x = document.getElementById("navDemo");
                if (x.className.indexOf("w3-show") === -1) {
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
                document.getElementById("myForm").style.display =       }
            function openForml() {
                document.getElementById("myFormlogin").style.display = "block";
                document.getElementById("myForm").style.display = "none";
            }

            function closeForml() {
                document.getElementById("myFormlogin").style.display = "none";
            }
        </script>
</html>
