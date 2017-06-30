<%-- 
    Document   : offers
    Created on : 30 Jun, 2017, 12:40:51 AM
    Author     : Rupali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
</html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>

        <div class="card" style="width: 500px; border: 1px solid #e6d6d6; padding: 10px; margin-left: auto; margin-right: auto">
            <div class="card-block">
                <h3 class="card-title" style="text-align: center; border-bottom: 1px solid grey">Login</h3>

                <form action =""  method="post">

                    <div class="form-group">   
                        <label for="amount">AMOUNT</label>
                        <input type="number" class="form-control" name="amount" placeholder="amount" id="amount"/>
                    </div>

                    <div class="form-group">   
                        <label for="talktime">TALKTIME</label>
                        <input type="intNumber" class="form-control" name="talktime" placeholder="talktime" id="talktime"/>
                    </div>

                    <div class="form-group">   
                        <label for="validity">VALIDITY</label>
                        <input type="intNumber" class="form-control" name="validity" placeholder="validity" id="validity"/>
                    </div

                    <div class="form-group">   
                        <label for="operators">OPERATORS</label>dro
                       
                        <select class="selectpicker" id="operators">
                            <option>Aitel</option>
                            <option>Reliance JIO</option>
                            <option>VOdafone</option>
                        </select>

                    </div>

                    <input type="add"  class="btn btn-primary" value="ADD" />
                    <button type="cancle" class="btn btn-default">CANCLE</button>

                </form>
            </div>
        </div>
