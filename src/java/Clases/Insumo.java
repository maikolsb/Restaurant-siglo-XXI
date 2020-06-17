/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import Controlador.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;
/**
 *
 * @author maikolsb
 */
public class Insumo extends Conexion{
    
    
    
      public boolean registrar( String nombre, int stock, int estado) {
        PreparedStatement pst = null;

        try {
            String consulta = "insert into insumo (nombre,stock,estado) values(?,?,?)";
            pst = getConnection().prepareStatement(consulta);
      
            pst.setString(1, nombre);
            pst.setInt(2, stock);
            pst.setInt(3, estado);


            if (pst.executeUpdate() == 1) {
                return true;
            }

        } catch (Exception ex) {
            System.err.println("ERROR: " + ex);
        } finally {
            try {
                if (getConnection()!= null) {
                    getConnection().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (Exception e) {
                System.err.println("ERROR: " + e);
            }

        }

        return false;
    }
    
}
