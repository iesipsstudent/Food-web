<!DOCTYPE html>
<html lang="en">
<title>AnnaPurti</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.0/css/all.css" integrity="sha384-Mmxa0mLqhmOeaE8vgOSbKacftZcsNYDjQzuCOm6D02luYSzBG8vpaOykv9lFQ51Y" crossorigin="anonymous">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}


    body
    {
         background-image: url("images/street.jpg");
         background-position: top;
         background-repeat: no-repeat;
         background-size: 100%;
         margin-top:225px;
    }
    
    .topmenubarbutton{
        margin-top: 5px;
    }

</style>

<!--The Body tag in HTML 5 does not use the background image, so it is declared inside the styke tag -->

<body>
<!-- Navbar -->
<div class="w3-top" style=" color: white">
    
    <div class="w3-bar w3-left-align w3-large" style= " background-image: url('images/black-linen.png')" ><!--   Add "w3-red" for red on MEnu AND " w3-card" for bottom shadow   -->
      <strong>
        <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
        <a class="" href="index.jsp"><img src="images\FinalAnnaPurti.png" class="" style=" zoom: 42%; padding-right: 10px; padding-left: 10px; margin-left: 5%" align='left'></a>
        <a href="index.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small w3-hover-white topmenubarbutton" style=' margin-left: 30%'>Home</a>
        <a href="about.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white topmenubarbutton">About Us</a>
        <a href="MyTeam.jsp"         class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white topmenubarbutton">Our Team</a>
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

<!-- Header -->
<img src="images\FinalAnnaPurti.png" style=" width: 50%; margin-left: auto; margin-right: auto; display: block; height: 50%; margin-top: 120px" >
<header class="w3-container w3-center" style="padding:100px 37%; ">               <!--   Adjust this to make get involved/ login on center of the screen   -->

    <div class="w3-center">   <!-- Preffered to use this beacuse of w3-center class  -->
        <form action="Registration.jsp">
            <button class="w3-button w3-red w3-padding-large w3-large w3-margin-top"><b>Get Involved</b></button>
        </form>
               
        <form action="Login.jsp">
            <button class="w3-button w3-red w3-padding-large w3-large w3-margin-top" ><b>Login</b></button>
        </form>
    </div>
</header>

<!--  First Left Grid   -->
<div style="margin-top:100px;">
    <div class="w3-row-padding w3-padding-64 w3-container">
        
        <div class="w3-content">
            <div class=" w3-twothird w3-center">
                <h1 style=" font-family: arial; font-size: 100px; color: greenyellow; font-weight: 900"> 15.2%</h1>
                <h3 class=" w3-padding-32" style=" font-family: times new roman">of Indian population is <b>undernourished</b></h3>
            </div>
        </div>
    
        <div class=" w3-third w3-center">
            <i class="fas fa-hamburger fa-10x w3-padding-64 w3-text-red"></i>
        </div>
    </div>


<!-- Second Right Grid-->
    <div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
        <div class=" w3-content">
            <div class=" w3-third w3-center">
                <i class="fas fa-male fa-10x w3-text-red"></i>
                <i class="fas fa-male fa-6x w3-padding-64 w3-text-red"></i>
            </div>
        
            <div class=" w3-twothird w3-center">
                <h1 style=" font-family: arial; font-size: 100px; color: greenyellow; font-weight: 900"> 38.5%</h1>
                <h3 class=" w3-padding-32" style=" font-family: times new roman"> of childern under 5 are <b>stunted</b> (low height for their age), reflecting chronic undernutrition.</h3>
            </div>
        </div>
    </div>

<!--  Third Left Grid   -->
    <div class="w3-row-padding w3-padding-64 w3-container">
        <div class=" w3-content">
            <div class=" w3-twothird w3-center">
                <h1 style=" font-family: arial; font-size: 100px; color: greenyellow; font-weight: 900"> 15.1%</h1>
                <h3 class=" w3-padding-32" style=" font-family: times new roman">of children under five are <b>wasted</b>(low weight for their height), reflecting acute undernutrition</h3>
            </div>
        </div>
    
        <div class=" w3-third w3-center">
            <i class="fas fa-weight fa-10x w3-padding-64 w3-text-red"></i>
        </div>
    </div>


<!--  Fourth Rigth Grid   -->

    <div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
        <div class=" w3-content">
             <div class=" w3-third w3-center">
                 <i class="fas fa-baby fa-10x w3-text-red"></i>
<!--             <i class="fas fa-baby fa-6x w3-padding-64 w3-text-red"></i>-->
             </div>
        
            <div class=" w3-twothird w3-center">
                <h1 style=" font-family: arial; font-size: 100px; color: greenyellow; font-weight: 900"> 4.8%</h1>
                <h3 class=" w3-padding-32" style=" font-family: times new roman"> of children <b>die</b> before the age of five.</h3>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-black w3-center w3-opacity">  
    <div class="w3-xlarge w3-padding-32">
        <i class="fab fa-facebook w3-hover-opacity"></i>
        <i class="fab fa-instagram w3-hover-opacity"></i>
        <i class="fab fa-twitter w3-hover-opacity"></i>
    </div>
    
    <div class=" w3-text-grey">
        <p> &#169 AnnaPurti 2019</p>
    </div>
</footer>

<!--Do not Change Below Script-->
<script>
// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") === -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}
</script>

</body>
</html>
