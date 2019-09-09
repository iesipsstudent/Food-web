
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "header.jsp" %>
<style>
    .container {
        position: relative;
    }

    /* Bottom right text */
    .text-block {
        position: absolute;
        bottom: 100px;
        left: 60px;
        background-color:#decc87d6;
        color: #2a3f5ffa;
        padding-left: 20px;
        padding-right: 20px;
    }
    
    body{
        background-image: url("images/Back.jpg");
    }
</style>
<div class="w3-row">
    <form action="Feed_info" class="text-block" method="post"  style="width:500px; left: 33%">
<!--        <span onclick="this.parentElement.style.display = 'none'" class="w3-theme-l3 w3-display-topright">
            <i class="fa fa-remove"></i>
        </span>-->
        <h2 style="text-align:center ">Feed Detail</h2>
        <hr>
        <label>Location &nbsp;</label>
        <select class="w3-input" name="location" required aria-required="true" required>
            <option value="" disabled="true">Choose Location</option>>
            <option value="indore">Bhawarkuan</option>
            <option value="bhopal">Vijay Nagar</option>
            <option value="karahi">Palasia</option>
            <option value="ujjain">Rajwada</option>
            <option value="ujjain">Niranjanpur</option>

        </select><br>
        <label>Type of Food &nbsp;</label><input class="w3-input" placeholder="Enter Type of Food" type="text" pattern="[A-Za-z\s]{1,30}" name="type" required><br>
        <label>Quantity of Food &nbsp;</label><input class="w3-input" placeholder="Enter Number of People" type="text" pattern="[0-9]{1,2,3}" name="quantity" required ><br>
        <label>Contact &nbsp;</label><input class="w3-input" placeholder="Enter Your Contact Number" type="text" pattern="[0-9]{10}" name="contact" required >
        <hr>
        <!--        <button type="submit" class="w3-button w3-right w3-theme">Send</button>-->
        <button style=" margin-bottom: 50px;background-color:#4d636f ; color:whitesmoke;" class="w3-button w3-block ">Send</button>
        <div>
        </div>
    </form>
</div>
<script>

</script>

<%@include file = "footer.jsp" %>