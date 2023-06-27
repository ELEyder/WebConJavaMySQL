/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Eyder
 */
public class ArticuloDao {

    public Articulos ConsultaCarrera() {
        Statement stm; //Tiene la conexion de la base de datos
        ResultSet rs;//Tiene la consulta
        Articulos carreras = new Articulos();
        try{
            Basedatos db = new Basedatos();
            stm= db.GetConexion().createStatement();
            //Realizar una consulta en stm y guardar el resultado en rs
            rs = stm.executeQuery("select * from tbarticulos");
            if (rs.next()) {
                carreras.id = rs.getString("id");
                carreras.articulo = rs.getString("articulo");
                carreras.precio = rs.getString("precio");
            }
           db.Desconectar();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return carreras;
    }

}
