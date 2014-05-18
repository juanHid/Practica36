<%-- 
    Document   : login
    Created on : 06-may-2014, 10:29:37
    Author     : FO-Mañana
--%>

<%@page errorPage="error.jsp" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    </head>
    <body>

        <div class="jumbotron">
            <h1>Login</h1>
            <div class="container">





            </div>

        </div>
        <div class="row">
            <div class="col-md-6 col-md-offset-4">
                <form class="form-inline"  action="login" method="post">
                    <div class="form-group">
                        <label class="sr-only" for="usuario">Usuario: </label>
                        <input name="usuario" type="text" class="form-control" id="usuario" placeholder="Enter user" size="10">
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="Userpassword">Password</label>
                        <input name="password" type="password" class="form-control" id="Userpassword" placeholder="Password" size="10">
                    </div>

                    <input type="submit" class="btn btn-primary" value="Entrar">
                    <input type="reset" class="btn btn-danger" value="Borrar">
                </form> 

            </div>
        </div>  
    </body>
</html>
