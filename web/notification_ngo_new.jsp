
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
        background-image: url("images/crop.jpg");
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
                <%
                    }
                %>
                <%
                    if (var.equals("2")) 
                    { 
                %>
                    <div id='result' class="w3-red w3-xlarge" style="text-align:center;" >Request Rejected.......!</div>
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
                        <span class="w3-right w3-opacity"><b>&#10003;</b></span>
                        <%
                        }
                        %>
                        <input type="hidden" name="req_id" value="<%= a[1]%>">
                        <img src="images/avatar1.png" class="w3-left w3-circle w3-margin-right" style="width:35px">
                        <span class="w3-xlarge" style=""><%= rs.getString("account_name").substring(0,1).toUpperCase()+ rs.getString("account_name").substring(1)%> wants to donate</span><br> <p>
                        <button name="b1" onclick="document.getElementById('info').style.display = 'block'" class="w3-button w3-black">View</button>&nbsp;
                        <form id="accepted" action="Notification_accepted" method="post">
                            <input type="hidden" name="req_id" value="<%= a[1]%>">

                            <button name="b2" value="<%= a[1]%>" formaction="Notification_accepted" class="w3-button w3-green"  
                                    <%
                                        if (!a[2].equals("0") || a[2].equals(user_id)) 
                                        {
                                    %> 
                                    disabled >Request Locked 
                                    <%
                                        } 
                                        
                                        else 
                                        {
                                    %>
                                    >Accept
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
                                <span style="color:red;" >#Accepted by you</span>
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
                <span onclick="document.getElementById('info').style.display = 'none'" class="w3-button w3-display-topright w3-large">x</span>
                <h1>INFORMATION</h1>
            </div>

            <%     try {
                    Statement st = DBConnector.getStatement();

                    String query1 = "SELECT * FROM (SELECT * FROM feed_form NATURAL JOIN user_request  WHERE req_id='" + check + "')AS a,USER WHERE a.user_id=user.user_id";

                    ResultSet rs1 = st.executeQuery(query1);

                    while (rs1.next()) {

            %>

            <div class="w3-container">
                <table border="0" cellspacing="20" >
                    <thead>
                        <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                        <td><b>Type</b></td>
                        <td><%= rs1.getString("type").toUpperCase()%></td>
                        <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name of the donor</b></td>
                        <td><%= rs1.getString("account_name").toUpperCase()%></td>
                        </tr>
                        <tr>
                        <td><b>Quantity</b></td>
                        <td><%= rs1.getString("quantity").toUpperCase()%></td>
                        <td><b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contact</b></td>
                        <td><%= rs1.getString("mo_number").toUpperCase()%></</td>
                        </tr>
                        <tr>
                        <td><b>Contact</b></td>
                        <td><%= rs1.getString("contact")%></td>
                        <td><b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email</b></td>
                        <td><%= rs1.getString("email").toUpperCase()%></</td>
                        </tr>
                        <tr>
                        <td><b>Location</b></td>
                        <td><%= rs1.getString("location").toUpperCase()%></td>
                        <td><b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City</b></td>
                        <td><%= rs1.getString("City").toUpperCase()%></</td>
                        </tr>
                        <tr>
                        <td><b></b></td>
                        <td></td>
                        <td><b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address</b></td>
                        <td><%= rs1.getString("Address").toUpperCase()%></td>
                        </tr>
                    </tbody>
                </table>


<!--                <h5>type<b><%= rs1.getString("type")%></b></h5>
<h5>Quantity<b><%= rs1.getString("quantity")%></b></h5>
<h5>contact<b><%= rs1.getString("contact")%></b></h5>
<h5>Location<b><%= rs1.getString("location")%></b></h5>
                -->
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


    <!--    <div class="w3-card container">
            <div class="text-block">
                <p> Name of donor: kuldeep</p>
                <p> Type of food : Junk</p>
                <p> Quanity : 10</p>
                <p>location : Bhawarkua</p>
    
            </div>
    
        </div>-->

</div>
<script>

    function accept(action) {
        document.getElementById('accepted').action = action;
        document.getElementById('accepted').submit();

    }
</script>
<%@include file="footer.jsp" %>