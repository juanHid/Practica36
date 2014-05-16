
<%@page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina de error</title>
    </head>
    <body>
        <h1>Error page</h1>
        <p>Tipo de error: <%= exception.getMessage()%></p>
        <p><%= exception.toString()%></p>
        <p><%= request.getAttribute("view")%></p>  
        <h2><a href='login.jsp'>Volver</a></h2>
    </body>
</html>
