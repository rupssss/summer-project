<%-- 
    Document   : meassagejsp
    Created on : 18 Jun, 2017, 11:28:51 PM
    Author     : Rupali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>home</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
    </head>
    <body> 
        </br>

        <div class="container">
            <form>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="btn-group ">
                            <a href="w.jsp" id="home" class="btn btn-primary">Home</a>
                            <a href="#"  id="operators" class="btn btn-primary">Add Operator</a>
                            <a href="#" id="plans" class="btn btn-primary">Add Plans</a>
                            <a href="#" id="offers" class="btn btn-primary">Add Offers</a>
                            <a href="#"  id=" history" class="btn btn-primary">View History</a>
                            <a href="#"  id="transaction" class="btn btn-primary">View Transaction</a>
                            <a href="#" id="feedback" class="btn btn-primary">View Feedback</a>
                            <button id="logout"  value="Logout"> Logout </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <!-- load jquery from google cdn -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="./js/homepage.js">
        </script>
    </body>
</html>