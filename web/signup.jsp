<%-- 
    Document   : signup
    Created on : 18 Jun, 2017, 3:17:43 PM
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
        <div class="card" style="width: 500px; border: 1px solid #e6d6d6; padding: 10px; margin-left: auto; margin-right: auto ">
            <div class="card-block">
                <h4 class="card-title"  style="text-align: center; " >Signup</h4>

                <form action="ServletSignup" method="post">

                    <label>Name</label>

                    <div class="form-group">   
                        <input type="text"  class="form-control" name="name" placeholder="name" />
                    </div>

                    <div class="form-group">   
                        <label for="username">Username</label>
                        <input type="text" class="form-control" name="username" placeholder="username" id="username"/>
                    </div>


                    <div class="form-group">   
                        <label for="username">ContactNumber</label>
                        <input type="text" class="form-control" name="contactnumber" placeholder="contactnumber" id="username"/>
                    </div>



                    <div class="form-group">   
                        <label for="email">Emali</label>
                        <input type="email" class="form-control" name="email" placeholder="email" id="email"/>
                    </div>

                    <div class="form-group">   
                        <label for="password">Password</label>
                        <input type="password" class="form-control" name="password" placeholder="password" id="password"/>
                    </div>

           
                    
                    <div class="form-group">   
                        <label for="confirmpassword">ConfirmPassword</label>
                        <input type="password" class="form-control" name="confirmpassword" placeholder="confirmpassword" id="confirmpassword"/>
                    </div>

                  
                        <label> Is Admin </label>
                 

                    <input type="checkbox" name="isAdmin" >
                    <div class="clearfix">
                        <input class="signupbtn" type ='submit' value="Sign up"> 
                        <button type="button"  class="cancelbtn" >Cancel</button>
                    </div>

                </form>
            </div>
            <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    </body>
</body>
</html>

