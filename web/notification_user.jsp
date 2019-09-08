<%@page import="model.Main"%>
<%@page import="java.time.format.DateTimeFormatter" %>
<%@page import =" java.time.LocalDateTime" %> 
<%@page import =" java.time.LocalDate" %> 
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "header.jsp" %>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Baloo+Chettan" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Teko" rel="stylesheet">

<style>
    .container {
        position: relative;
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

    <!--getting all the requests from database -->
<div class="w3-row w3-center">

            <!--checking successfully request accepted or not-->

            <!--checking successfully request accepted or not-->
            <!--getting all the requests from database -->
            <%
                try {
                    Statement st = DBConnector.getStatement();
                    String user_id = (String) session.getAttribute("user_id");
                    System.out.println(user_id);
                    
                    String query = "select * from(SELECT * FROM user_request NATURAL JOIN feed_form where user_request.user_id='" + user_id + "') as a,user where user.user_id=a.ngo_id ;";
// WHERE user_request.Done=0;
                    ResultSet rs = st.executeQuery(query);

                    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
                    LocalDate today = LocalDate.now();
                    String a[] = new String[10];
                    System.out.println(today);
                    while (rs.next()) 
                    {

                        a[0] = rs.getString("date");
                        a[1] = rs.getString("req_id");
                        a[2] = rs.getString("ngo_id");
                        a[3] = rs.getString("done");
                        
                        System.out.println(a[1]);
                        LocalDate date = LocalDate.parse(a[0]);
                        System.out.println(date);
                        
                        if (today.equals(date))  
                        {
                            System.out.println("Equal");
                        } 
                        else if (today.isAfter(date.plusDays(2))) 
                        {
                            continue;
                        }
                        System.out.println(a[0]);
            %>
            
                        <div class="w3-container w3-col m4"">
                
                        <form name="notification" action="" method="post">
                            <ul class="w3-ul w3-card-4 w3-white" style=" background-color: #290007 ; background-image: url('https://www.transparenttextures.com/patterns/classy-fabric.png');">
                            <li class="w3-padding-16">
                                <span class="w3-right" style="color:blue;"><b>&#10003;</b></span>
                            <%
                            if (!a[3].equals("0") && !a[2].equals("0")) 
                            {
                            %>
                            <span class="w3-right" style="color:blue;"><b>&#10003;</b></span>   <!--check Symbol-->
                            <%
                            }
                            %>
                            
                            <input type="hidden" name="req_id" value="<%= a[1]%>">
                            <img src="images/avatar1.png" class="w3-left w3-circle w3-margin-right" style="width:35px">
                            <span class="" style=" font-family: 'Teko', sans-serif; font-size: 35px;"><%= rs.getString("username").substring(0,1).toUpperCase()+rs.getString("username").substring(1)%> has accepted your request</span><br> 
                        <p>
                            <button name="b1" onclick="document.getElementById('info').style.display = 'block'" class="w3-button w3-black w3-center">View</button>&nbsp;
                        <form id="accepted" action="Request_done" method="post">
                            <input type="hidden" name="req_id" value="<%= a[1]%>">

                            <button name="b2" value="<%= a[1]%>" formaction="Request_done"  
                                    <%
                                    if (!a[3].equals("0") && !a[2].equals("0")) 
                                    {
                                    %> 
                                    disabled class="w3-button" style=" opacity: 0.7; background-color: grey; color: lightgrey;">Already Done(Approved)
                                <%
                                    } 
                                    else 
                                    {
                                    %>
                                    class="w3-button w3-green">Done
                                    <%
                                    }
                                    %>
                            </button>
                        </form>
                        </li> 
                            </ul>

                </form>
                 <br>
                        </div>
            
            <%     }

                } 
                catch (SQLException e) 
                {
                    System.out.println(e);
                }
            %>
            
            
             <%     try {
                    Statement st = DBConnector.getStatement();
                    String user_id = (String) session.getAttribute("user_id");
                    System.out.println(user_id);
                    
                    String query = "SELECT * FROM user_request NATURAL JOIN feed_form where user_request.user_id='" + user_id + "' and user_request.ngo_id=0;";
// WHERE user_request.Done=0;
                    ResultSet rs = st.executeQuery(query);

                    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
                    LocalDate today = LocalDate.now();
                    String a[] = new String[10];
                    System.out.println(today);
                    
                    while (rs.next()) 
                    {
                        a[0] = rs.getString("date");
                        a[1] = rs.getString("req_id");
                        a[2] = rs.getString("ngo_id");
                        a[3] = rs.getString("done");
                        
                        System.out.println(a[1]);
                        LocalDate date = LocalDate.parse(a[0]);
                        System.out.println(date);
                        
                        if (today.equals(date)) 
                        {
                            System.out.println("Equal");
                        } 
                        else if (today.isAfter(date.plusDays(2))) 
                        {
                            continue;
                        }
                        System.out.println(a[0]);
            %>
            
            <div class="w3-container w3-col m4"">
                <form name="notification" action="" method="post">
                    <ul class="w3-ul w3-card-4 w3-white"style=" background-color: #290007 ; background-image: url('https://www.transparenttextures.com/patterns/classy-fabric.png');">
                        
                        <li class="w3-padding-16">
                            <input type="hidden" name="req_id" value="<%= a[1]%>">
                            <img src="images/avatar1.png" class="w3-left w3-circle w3-margin-right" style="width:35px">
                        <span class=""style="color:red; font-family: 'Teko', sans-serif; font-size: 35px;">Your request has not yet been accepted.</span><br> 
                        <p><button name="b1" onclick="document.getElementById('info').style.display = 'block'" class="w3-button w3-black w3-center">View</button>&nbsp;
                        
                        </li> 
                    </ul>

                </form>
                            
                <br>
                
            </div>
            
            <%     }

                    } catch (SQLException e) {
                    System.out.println(e);
                }
            %>
        </div>

    
    
    


<%                String check = request.getParameter("req_id");
                if (check != null && !check.trim().isEmpty()) { %>

    <div id="info" class="w3-modal" style="display: block;">
        <div class="w3-modal-content w3-animate-zoom">
            <div class="w3-container w3-black w3-display-container">
                <span onclick="document.getElementById('info').style.display = 'none'" class="w3-button w3-display-topright w3-large" style='margin-top:5px; margin-right: 5px;'><i class="fas fa-times-circle"></i></span>
                <h1 style="font-family: 'Baloo Chettan', cursive;"><center>INFORMATION</center></h1>
            </div>
            
            <%        try {
                        Statement st = DBConnector.getStatement();

                        String query1 = "SELECT * FROM feed_form WHERE req_id=" + check + "";
                        
                        //String query2 = "select * from user where user_id=(select ngo_id from user_request where req_id='"+check+"' )";
                       String data[] = new String[10];
                       Main m = new Main();
                       data = m.ngo_info(check);
                       
                        ResultSet rs1 = st.executeQuery(query1);

                        while (rs1.next()) {

            %>

            <div class="w3-container" style=" background-color: #6b4e4d; background-image: url('https://www.transparenttextures.com/patterns/cubes.png');">
                
                <table border="3" cellspacing="" >
                    <thead>
                    </thead>
                    <tbody>
                        <tr>
                            <td><b>Type</b></td>
                            <td><%= rs1.getString("type").toUpperCase()%></td>

                        </tr>
                        
                        <tr>
                            <td><b>Quantity</b></td>
                            <td><%= rs1.getString("quantity").toUpperCase()%></td>
                            
                        </tr>
                    
                        <tr>
                            <td><b>Contact</b></td>
                            <td><%= rs1.getString("contact")%></td>
                            
                        </tr>
                        
                        <tr>
                            <td><b>Location</b></td>
                            <td><%= rs1.getString("location").toUpperCase()%></td>

                        </tr>
                    </tbody>
                </table>
                
                        <table border="3" cellspacing="" style="margin-left: 20%;">
                            
                            <tr>
                                <td><b>NGO</b></td>
                                <td><%= data[0].toUpperCase()%></td>
                            </tr>
                            
                            <tr>
                                <td><b>Contact</b></td>
                                <td><%= data[1]%></</td>
                            </tr>
                            
                            <tr>
                                <td><b>Email</b></td>
                                <td><%= data[2]%></td>
                            </tr>
                            
                            <tr>
                                <td><b>City</b></td>
                                <td><%= data[3]%></td>                                
                            </tr>
                            
                            <tr>
                                <td><b>Address</b></td>
                                <td><%= data[4]%></td>
                            </tr>
                        </table>
            </div>
        </div>
    </div> 

    <%          }

            } catch (SQLException e) {
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