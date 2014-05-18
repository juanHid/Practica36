<%--
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
--%>

<%@page errorPage="error.jsp" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>View</h1>
        <c:choose> 
            <c:when test="${categoriaList == null}">
                <p>FATAL ERROR</p>
            </c:when>
            <c:when test="${empty categoriaList}">
                <p>Base de datos vacia</p>
            </c:when>
            <c:otherwise>
                <c:forEach var="categoria" items="${categoriaList}"  >
                    <h2>${categoria.tipo}, ${categoria.descripcion}</h2>                   
                    <c:forEach var="vehiculo" items="${categoria.listaVehiculos}" >
                        <p>
                           Matricula: ${vehiculo.matricula}<br/>
                           Color: ${vehiculo.color}<br/>
                           Fabricante: ${vehiculo.fabricante}<br/>
                           Velocidad máxima: ${vehiculo.velocidadMax} km/h<br/>
                           Motor de ${vehiculo.motor.cilindros} cilindros y ${vehiculo.motor.potencia} cv. <br/>                     
                        </p>
                         <hr>
                    </c:forEach>
                </c:forEach> 
            </c:otherwise>
        </c:choose>




        <p></p>
    </body>
</html>
