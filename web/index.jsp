<%-- 
    Document   : index
    Created on : 23-apr-2014, 9.24.53
    Author     : confalonieri


<jsp:include page="WEB-INF/header.jsp" />
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
                <h1>  Registro de vehiculos<small>  </small></h1>
                <a href="logout"  class="btn btn-primary " role="button">Logout</a>
            </div>
        </div>       

        <div class="row">
            <div class="col-md-6 col-md-offset-3"> 


                <form action="ServletClaseCreacion" method="post" class="form-horizontal" role="form">


                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9">

                            <div class="radio">
                                <label>
                                    <input type="radio" name="vehiculo" id="optionsRadios1" value="Coche" checked>
                                    Coche
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="vehiculo" id="optionsRadios2" value="Moto">
                                    Moto
                                </label>
                            </div>





                        </div>
                    </div>                   

                    <div class="form-group">
                        <label for="tipo" class="col-sm-3 control-label">Tipo: </label>
                        <div class="col-sm-9">
                            <input type="text" name="tipo" class="form-control" id="tipo" placeholder="Tipo de vehiculo">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="descripcion" class="col-sm-3 control-label">Descripción: </label>
                        <div class="col-sm-9">
                            <input type="text" name="descripcion" class="form-control" id="descripcion" placeholder="Breve descripción">
                        </div>
                    </div>                     
                    <div class="form-group">
                        <label for="matricula" class="col-sm-3 control-label">Matricula: </label>
                        <div class="col-sm-9">
                            <input type="text" name="matricula" class="form-control" id="matricula" placeholder="Matricula">
                        </div>
                    </div>                       
                    <div class="form-group">
                        <label for="color" class="col-sm-3 control-label">Color: </label>
                        <div class="col-sm-9">
                            <input type="text" name="color" class="form-control" id="color" placeholder="Color">
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="fabricante" class="col-sm-3 control-label">Fabricante: </label>
                        <div class="col-sm-9">
                            <input type="text" name="fabricante" class="form-control" id="fabricante" placeholder="Fabricante">
                        </div>
                    </div>             
                    <div class="form-group">
                        <label for="velocidad" class="col-sm-3 control-label">Velocidad Max: </label>
                        <div class="col-sm-9">
                            <input type="text" name="velocidadMax" class="form-control" id="velocidad" placeholder="Velocidad Max">
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="potencia" class="col-sm-3 control-label">Potencia : </label>
                        <div class="col-sm-9">
                            <input type="text" name="potencia" class="form-control" id="potencia" placeholder="Potencia">
                        </div>
                    </div>                   
                    <div class="form-group">
                        <label for="cilindros" class="col-sm-3 control-label">Nº Cilindros: </label>
                        <div class="col-sm-9">
                            <input type="text" name="cilindros" class="form-control" id="cilindros" placeholder="Num de cilindros">
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="cilindros" class="col-sm-3 control-label">Nº Cilindros: </label>
                        <div class="col-sm-9">
                            <input type="submit" class="btn btn-primary" name="Enviar datos" value=" Enviar ">
                            <input type="reset" class="btn btn-danger "value="Borrar" name="B1"> 
                        </div>
                    </div> 

                </form>

            </div>
        </div>
        <br/>

    </body>
</html>
