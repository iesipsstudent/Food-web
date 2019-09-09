

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "header_ngo.jsp" %>

<link href="https://fonts.googleapis.com/css?family=Orbitron|Caveat+Brush" rel="stylesheet">

<style>
.container {
  position: relative;
}
<%
    String username=(String)session.getAttribute("username");
%>
/* Bottom right text */
.text-block {
  position: absolute;
  bottom: 400px;
  left: 60px;
  background-color:#decc87d6;
  color: #2a3f5ffa;
  padding-left: 20px;
  padding-right: 20px;
}

body{
    background-image: url("images/Spots.jpg");
    background-size:110%;
    margin-top: 100px;
}

.mySlides 
{
    display:hidden;
}

</style>

<body>
    <div class="w3-card w3-green" style="">
    <h1 style=" text-align: center;font-family: 'Caveat Brush', cursive; font-weight: 900; color: black; font-size: 48px;">Welcome <%=username.substring(0,1).toUpperCase()+username.substring(1)%></h1>
    </div>
    <div>
    <div class="w3-content w3-section" style="max-width:750px; max-height: 100px;">
        <img class="mySlides w3-animate-right" src="images/orphans.jpg" style="width:100%;border-style:solid;border-width: thick;">
        <!--<img class="mySlides w3-animate-right" src="images/registerbg.jpg" style="width:100%">-->
        <img class="mySlides w3-animate-right" src="images/poor-kids.jpg" style="width:100%;border-style:solid; border-width: thick;" >
        <img class="mySlides w3-animate-right" src="images/people.jpg" style="width:100%;border-style:solid;border-width: thick;">
    </div>
    </div>
</body>

<!-- The script is nowhere used in ngo_logi.jsp   It may be a part of user login-->
<script>
    function feed_form()
    {
         window.location.replace("feed_form.jsp");
    }
    
    var myIndex = 0;
    carousel();

    function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) 
    {
        x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2500);    
}
</script>



<%@include file="footer.jsp" %>