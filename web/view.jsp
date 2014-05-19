<%--
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
--%>

<%@page errorPage="error.jsp" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    </head>
    <body>

 


  <div class="panel-body">
         <div class="page-header">
            <h1>  Lista de vehiculos<small>   agrupados por categoria</small></h1>
            <a href="logout"  class="btn btn-primary " role="button">Logout</a>
        </div>
  </div>

 <div class="panel-body">
       
  


        <c:choose> 
            <c:when test="${categoriaList == null}">
                <p>FATAL ERROR</p>
            </c:when>
            <c:when test="${empty categoriaList}">
                <p>Base de datos vacia</p>
            </c:when>
            <c:otherwise>
                <c:forEach var="categoria" items="${categoriaList}"  >
                    <h3>${categoria.tipo}<small>  ${categoria.descripcion}</small></h3> 
                    
                    <c:forEach var="vehiculo" items="${categoria.listaVehiculos}" >

                        <div class="row">
                            <div class="col-md-4">   
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h3 class="panel-title"> Matricula: ${vehiculo.matricula}</h3>
                                    </div>
                                    <div class="panel-body">
                                        <c:if test="${vehiculo.nrDeRuedas==2}">
                                           Vehiculo: Moto<br/> 
                                        </c:if>
                                         <c:if test="${vehiculo.nrDeRuedas==4}">
                                             Vehiculo: Coche<br/> 
                                         </c:if>
                                        Color: ${vehiculo.color}<br/>
                                        Fabricante: ${vehiculo.fabricante}<br/>
                                        Velocidad máxima: ${vehiculo.velocidadMax} km/h<br/>
                                        Motor de ${vehiculo.motor.cilindros} cilindros y ${vehiculo.motor.potencia} cv.     
                                   
                                    </div>
                                </div>
                            </div></div>

                    </c:forEach>
                </c:forEach> 
            </c:otherwise>
        </c:choose>



</div>
      
    </body>
</html>
