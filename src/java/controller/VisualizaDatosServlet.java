/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import beans.Categoria;
import beans.Vehiculo;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import managers.DatabaseManager;
import managers.LoggerManager;

/**
 *
 * @author FO-Mañana
 */
public class VisualizaDatosServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Abrir conexion
        DatabaseManager.openConnection();
        //Creo un objeto session 
        HttpSession session=request.getSession(); 
        
        //1.Declarar una lista de categorias
        ArrayList<Categoria> categoriaList;

        //2. llamar una funcion que devuelve una lista de categorias
        // con los vehiculos de cada categoria
        categoriaList = getCategoriasYVehiculos();
        
        //3 Almaceno la lista de categorias en la sesion para pasarla al view.jsp 
        session.setAttribute("categoriaList", categoriaList);
        request.setAttribute("view", "view.jsp");

        //4 Cierro conexion
        DatabaseManager.closeConnection(); 

        //5 Redirecciono al viw.jsp
        request.getRequestDispatcher("/view.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private ArrayList<Categoria> getCategoriasYVehiculos() {
       //devuelve una lista de categorias 
       // con los vehiculos de cada categoria  dentro 
       //Creo un objeto ArrayList 
        ArrayList<Categoria> categoriaList = new ArrayList<Categoria>();

      //Para ello hay que conectar a la base de datos y obtener los datos
      //Con esos datos construir los objetos devolverlos dentro de la lista de categorias
        
        //Creo query para recuperar las categorias
        String categoriaSql="SELECT * FROM categoria";
        
        //ejecutar query
        PreparedStatement preparedStatment;
        ResultSet resultSet;
        try {
            preparedStatment=DatabaseManager.conn.prepareStatement(categoriaSql);
            resultSet=preparedStatment.executeQuery(); //Devuelve una matriz con los resultados  SELECT
            while(resultSet.next()){
                int id=resultSet.getInt("id");
                String tipo=resultSet.getString("tipo");
                String descripcion=resultSet.getString("descripcion");
                //Creamos un objeto categoria con los datos obtenidos de la base de datos
                Categoria categoria=new Categoria(id,tipo,descripcion);
                //Llamamos al metodo de la clase Categoria que consulta en la base de datos
                //todos los vehiculos que pertenecen a esa categoria 
                //y los agrega a su propiedad listaVehiculos
                categoria.crearListaVehiculos(id);
                //añadir la categoria a la lista de categorias
                categoriaList.add(categoria);
    
            }
            preparedStatment.close();
            resultSet.close(); 
            
        } catch (SQLException ex) {
            categoriaList=null;
            LoggerManager.getLog().error(ex.toString());
           
        } finally{
            
           return categoriaList; 
        }
        
        
    
        //dos querys una para categoria que se hace aqui 
        // y otra para obtener los vehiculos de esa categoria que
        //se hace en el metodo de la clase categoria
        //

        /*
         SELECT * FROM categoria;
        
         categoriaId
                
         SELECT * FROM vehiculo, motor, vehiculo_tipo WHERE vehiculo.categoria_id=categoriaId AND
         vehiculo.motor_id=motor.id AND vehiculo.vehiculo_tipo_id=vehiculo_tipo.id
        
         */
        
    }

}
