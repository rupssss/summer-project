<%-- 
    Document   : index
    Created on : 18 Jun, 2017, 2:27:41 PM
    Author     : Rupali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN </title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>

    </head>
    <body><br><br><br>


        <div class="card" style="width: 500px; border: 1px solid #e6d6d6; padding: 10px; margin-left: auto; margin-right: auto">
            <div class="card-block">
                <h3 class="card-title" style="text-align: center; border-bottom: 1px solid grey">Login</h3>

                <form action ="ServletLogin"  method="post">

                    <div class="form-group">   
                        <label for="username">Username</label>
                        <input type="text" class="form-control" name="username" placeholder="username" id="username"/>
                    </div>
                    
                     <div class="form-group">   
                        <label for="password">Password</label>
                        <input type="password" class="form-control" name="password" placeholder="password" id="password"/>
                    </div>
                    
                    <div class="text-danger"> ${ message } </div> 
                    <input type="submit"  class="btn btn-primary" value="LOGIN" />
                    <a href="signup.jsp" class="btn btn-success" role="button">Sign Up</a>

                    

                </form>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    </body>
</html>
