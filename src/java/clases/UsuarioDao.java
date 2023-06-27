/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Eyder
 */
public class UsuarioDao {
    public Boolean ConsultaUsuario(String id, String clave) {
        Statement stm;
        ResultSet rs;
        Boolean resultado=false;
        try {
            Basedatos bd = new Basedatos();
            stm = bd.GetConexion().createStatement();
            rs = stm.executeQuery("select * from tbusers"
                    + " where usuario='" + id + "' and clave='" + clave + "'");
            if (rs.next()) 
                    resultado=true;
            else 
                    resultado=false;
            bd.Desconectar();
        } catch (Exception e) {
        }
        System.out.print(resultado);
        return resultado;
    }
}
