/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
/**
 *
 * @author Eyder
 */
public class Basedatos {
    static String usuario="root";
    static String clave="usbw";
    static String usrl="";
    Connection con;
    public Basedatos() {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3307/dbsodimac", "root", "usbw");
        } catch (Exception e) {
            System.out.println("Error:" + e);
        }
    }
    public void Desconectar(){
        con=null;
    }
    public Connection GetConexion(){
        return con;
    }
}
