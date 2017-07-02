<%-- 
    Document   : welcomeUser
    Created on : 22 Jun, 2017, 11:31:45 PM
    Author     : Rupali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
    </head>
    <body> 
        </br>

        <div class="container">
            <form>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="btn-group ">
                           
                            <a href="#"  id="recharge" class="btn btn-primary">Recharge Now</a>
                            <a href="#" id="offers" class="btn btn-primary">View Offers</a>
                            <a href="#"  id=" history" class="btn btn-primary">View History</a>
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