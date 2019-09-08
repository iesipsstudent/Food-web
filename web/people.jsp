

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file = "header.jsp" %>
<%
    String username=(String)session.getAttribute("username");
%>
<link href="https://fonts.googleapis.com/css?family=Orbitron|Caveat+Brush" rel="stylesheet">

<style>
.container {
  position: relative;
}

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
   background-image: url("https://cdn.pixabay.com/photo/2014/06/11/17/00/cook-366875__340.jpg");
       background-repeat: no-repeat;
       background-size:cover;
    margin-top:100px;
}
</style>

<div style="width:100%;">
<!--    <div class="text-block" onclick="feed_form();" style=" left:40%;">
        <p><b>Donate Now</b>
        </p>
    </div>-->
        <%
            HttpSession sessionR = request.getSession(true);
            String var = (String) sessionR.getAttribute("success");
                //                out.println(var);
            session.removeAttribute("success");
                
        if (var != null) 
        {   
        %>
       
            <%
            if (var.equals("1")) 
            { 
            %>
                <div id='result' class="w3-green w3-xlarge" style="text-align:center; margin-top:-10px" >Request Successfully Sent.....!</div>
                <br><br>
            <%
            }
            %>
            
            <%
            if (var.equals("2")) 
            { 
            %>
                <div id='result' class="w3-red w3-xlarge" style="text-align:center; margin-top: -10px " >Request Not Sent......!</div>
                <br><br>
            <%
            }
            %>

            <%
        } 
        else 
        {
           %>
            <div id='result' > </div>
        <%
        }
        %>
        
            <div class="w3-card w3-green" style="">
    <h1 style=" text-align: center;font-family: 'Caveat Brush', cursive; font-weight: 900; color: black; font-size: 48px;">Welcome <%=username.substring(0,1).toUpperCase()+username.substring(1)%></h1>
    </div>
    <button class="text-block w3-button w3-padding-32" onclick="feed_form()" style="left:45%; opacity: 1; background-color: #f4b342; border: thick solid #6b41f4;"><strong>Donate Now</strong></button>
</div>
<script>
    function feed_form()
    {
        window.location.href = "feed_form.jsp";
//         window.location.replace("feed_form.jsp");
    }
    </script>

<%@include file = "footer.jsp" %>