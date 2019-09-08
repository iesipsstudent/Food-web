

<%@page import="java.time.format.DateTimeFormatter" %>
<%@page import =" java.time.LocalDateTime" %> 
<%@page import =" java.time.LocalDate" %> 
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Date"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "header_ngo.jsp" %>


<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Baloo+Chettan" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Teko" rel="stylesheet">

<style>
    .container {
        position:relative;
    }

    /* Bottom right text */
    .text-block {
        position: absolute;
        bottom: 400px;
        left: 60px;
        background-color:white;
        color: #2a3f5ffa;
        padding-left: 20px;
        padding-right: 20px;
    }
    .inside {
        position: absolute;
        z-index:0;
        left: 0;
        top: 0;
    }
    .stamp {
        /*        transform: rotate(12deg);*/
        color: #555;
        /*        font-size: 3rem;*/
        /*        font-weight: 700;*/
        border: 0.25rem solid #555;
        display: inline-block;
        padding: 0.1rem 1rem;
        text-transform: uppercase;
        border-radius: 1rem;
        font-family: 'Courier';
        -webkit-mask-image: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/8399/grunge.png');
        -webkit-mask-size: 944px 604px;
        mix-blend-mode: multiply;
    }

    .is-approved {
        content:"SAMPLE";
        display: flex;
        color: #0A9928;
        border: 0.5rem solid #0A9928;
        -webkit-mask-position: 13rem 6rem;
        /*	transform: rotate(-14deg);*/
        border-radius: 0;
    }
    
    body{
        margin-top:100px;
        background-image: url("https://cdn.pixabay.com/photo/2014/06/11/17/00/cook-366875__340.jpg");
       background-repeat: no-repeat;
       background-size:cover;
    }
    
    table{
        float: left;
        width: 40%;
        margin-left: 0px;
        color: white;
        /*border-color:#e6b5a6;*/
        border-style:solid;
        margin-top:20px;
        margin-bottom:20px;
        animation: mymove 5s infinite;
    }
    
    @keyframes mymove {
  50% {border-color: lightblue;}
}
</style>
<div class="w3-row"  >
<!--    <img src="images/Deep3.png" alt="boat" style="background-image: url(images/Deep3.png); width:100%;min-height:350px;max-height:600px;">

    <div class="w3-container  inside " style="overflow:scroll;top:50px;z-index: +1;  width:100%; height:90%;" >

    </div>-->
    <!--getting all the requests from database -->
        <div class="w3-row">

            <!--checking successfully request accepted or not-->
            <%
            HttpSession sessionR = request.getSession(true);
            String var = (String) sessionR.getAttribute("success");
                //                out.println(var);
            session.removeAttribute("success");
            
            if (var != null) 
            {   
            %>
            
            <br>

                <%
                    if (var.equals("1")) 
                    { 
                %>
                    <div id='result' class="w3-green w3-xlarge" style="text-align:center;" >Request Locked SuccessFully......!</div>
                    <br>
                    <br>
                <%
                    }
                %>
                <%
                    if (var.equals("2")) 
                    { 
                %>
                    <div id='result' class="w3-red w3-xlarge" style="text-align:center;" >Request Rejected.......!</div>
                    <br>
                    <br>
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
            <!--checking successfully request accepted or not-->


            <!--getting all the requests from database -->
            <%    
            try {
                    Statement st = DBConnector.getStatement();

                    String query = "SELECT * FROM user_request NATURAL JOIN feed_form;";
// WHERE user_request.Done=0;
                    ResultSet rs = st.executeQuery(query);

                    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
                    LocalDate today = LocalDate.now();
                    String a[] = new String[10];
                    System.out.println(today);
                    while (rs.next()) {

                        a[0] = rs.getString("date");
                        a[1] = rs.getString("req_id");
                        a[2] = rs.getString("ngo_id");
                        a[3] = rs.getString("done");

                        String user_id = (String) session.getAttribute("user_id");

                        System.out.println(a[0]);
                        LocalDate date = LocalDate.parse(a[0]);
                        System.out.println(date);
                        if (today.equals(date)) {
                            System.out.println("Equal");
                        } else if (today.isAfter(date.plusDays(2))) {
                            continue;
                        }
                        System.out.println(a[0]);

            %>
            
            <div class="w3-container w3-col m4">

                <form name="notification" action="" method="post">
                    <ul class="w3-ul w3-card-4 w3-white" style=" background-color: #290007 ; background-image: url('https://www.transparenttextures.com/patterns/classy-fabric.png');">
                        <li class="w3-padding-16">
                            <%    if (a[3].equals("1")) { %>
                            <span class="w3-right">&#10003</span>
                        <%
                        }
                        %>
                        <input type="hidden" name="req_id" value="<%= a[1]%>">
                        <img src="images/avatar1.png" class="w3-left w3-circle w3-margin-right" style="width:35px">
                        <span class="" style=" font-family: 'Teko', sans-serif; font-size: 38px;"><%= rs.getString("account_name").substring(0,1).toUpperCase()+ rs.getString("account_name").substring(1)%> wants to donate.</span><br> <p>
                        <button name="b1" onclick="document.getElementById('info').style.display = 'block'" class="w3-button w3-black">View</button>&nbsp;
                        <form id="accepted" action="Notification_accepted" method="post">
                            <input type="hidden" name="req_id" value="<%= a[1]%>">

                            <button name="b2" value="<%= a[1]%>" formaction="Notification_accepted"  
                                    <%
                                        if (!a[2].equals("0") || a[2].equals(user_id)) 
                                        {
                                    %> 
                                    class="w3-button" disabled style=" opacity: 0.7; background-color: grey; color: lightgrey;" >Request Locked 
                                    <%
                                        } 
                                       else 
                                        {
                                    %>
                                     class="w3-button w3-green">Accept
                                    <%
                                        }
                                    %>
                            </button>
                            
                            <% 
                                if (a[3].equals("0") && a[2].equals(user_id)) 
                                {
                            %>
                                <button name="b3" value="<%= a[1]%>" formaction="Notification_rejected" class="w3-button w3-red">Reject</button>
                        </p>
                                <!--<span style="color:red;" >#Accepted by you</span>-->
                            <%
                                } 
                            %>
                        </form>
                        </li> 
                    </ul>

                </form><br>
            </div>
            <%     }

                } catch (SQLException e) {
                    System.out.println(e);
                }


            %>
        </div>



    <%                String check = request.getParameter("req_id");
        if (check != null && !check.trim().isEmpty()) {%>

    <div id="info" class="w3-modal" style="display: block;">
        <div class="w3-modal-content w3-animate-zoom">
            <div class="w3-container w3-black w3-display-container">
                <span onclick="document.getElementById('info').style.display = 'none'" class="w3-button w3-display-topright w3-large" style='margin-top:5px; margin-right: 5px;'><i class="fas fa-times-circle"></i></span>
                <h1 style="font-family: 'Baloo Chettan', cursive;"><center>INFORMATION</center></h1>
            </div>

            <%     try {
                    Statement st = DBConnector.getStatement();

                    String query1 = "SELECT * FROM (SELECT * FROM feed_form NATURAL JOIN user_request  WHERE req_id='" + check + "')AS a,USER WHERE a.user_id=user.user_id";

                    ResultSet rs1 = st.executeQuery(query1);

                    while (rs1.next()) {

            %>

            <div class="w3-container" style=" background-color: #6b4e4d; background-image: url('https://www.transparenttextures.com/patterns/cubes.png');">
                <table border="3" cellspacing="" style="">
                    <thead>
<!--                        <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>

                        </tr>-->
                    </thead>
                    <tbody>
                        
                        <tr>
                            <td>
                                <b>Type</b>
                            </td>
                            
                            <td>
                                <%= rs1.getString("type").substring(0,1).toUpperCase()+ rs1.getString("type").substring(1)%>
                            </td>
                            
                        </tr>
                        
                        <tr>
                            <td>
                                <b>Quantity</b>
                            </td>
                        
                            <td>
                                <%= rs1.getString("quantity")%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Contact Provide</b>
                            </td>
                        
                            <td>
                                <%= rs1.getString("contact")%>
                            </td>
                            
                        </tr>
                        
                        <tr>
                            
                        
                            
                        </tr>
                        
                        <tr>
                            <td>
                                <b>Location</b>
                            </td>
                            
                            <td>
                                <%= rs1.getString("location").substring(0,1).toUpperCase()+ rs1.getString("location").substring(1)%>
                            </td>
                        
                            
                        </tr>
                        
                    </tbody>
                </table>
                            
                            <table border="3" style="margin-left: 20%;">
                                <tr>
                                    <td>
                                <b> Donor</b>
                            </td>
                            
                            <td>
                                <%= rs1.getString("account_name").substring(0,1).toUpperCase()+ rs1.getString("account_name").substring(1)%>
                            </td>
                                </tr>
                                
                                <tr>
                                    
                                 </tr>
                                     
                                 <tr>
                                     <td>
                                <b> Email</b>
                            </td>
                        
                            <td>
                                <%= rs1.getString("email").toLowerCase()%>
                            </td>
                                 </tr>
                                 <td>
                                <b>Contact</b>
                            </td>
                        
                            <td>
                                <%= rs1.getString("mo_number")%>
                            </td>
                                 <tr>
                                     
                                     <td>
                                <b>City</b>
                            </td>
                        
                            <td>
                                <%= rs1.getString("City").substring(0,1).toUpperCase()+ rs1.getString("city").substring(1)%>
                            </td>
                                 </tr>
                                 
                                 <tr>
                                         
                                                                 <td>
                                <b>Address</b>
                            </td>
                            
                            <td>
                                <%= rs1.getString("Address").substring(0,1).toUpperCase()+ rs1.getString("Address").substring(1)%>
                            </td>
                                 </tr>
                            </table>
             </div>
                        
        </div>
    </div> 

    <%              
                        }
                    
                    } 
                catch (SQLException e) {
                    System.out.println(e);
                }

            System.out.println(check);
        }
    %>

</div>
<script>

    function accept(action) {
        document.getElementById('accepted').action = action;
        document.getElementById('accepted').submit();

    }
</script>
<%@include file="footer.jsp" %>