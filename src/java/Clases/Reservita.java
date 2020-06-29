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

import java.sql.PreparedStatement;

/**
 *
 * @author maikolsb
 */
public class Reservita extends Conexion {
    
    
    
    
      public boolean registrar(String fecha, String hora, String cantidad,int usuario_id,int telefono, int mesa_id,int estado) {
        PreparedStatement pst = null;

        try {
            String consulta = "insert into reserva (fecha,hora,cantidad,usuario_id,telefono,mesa_id,estado) values(?,?,?,?,?,?,?)";
            pst = getConnection().prepareStatement(consulta);
            pst.setString(1, fecha);
            pst.setString(2, hora);
            pst.setString(3, cantidad);
            pst.setInt(4, usuario_id);
            pst.setInt(5, telefono);
            pst.setInt(6, mesa_id);
            pst.setInt(7, estado);

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
      
      
      public boolean Actualizar( int estado ,int id) {
        PreparedStatement pst = null;

        try {
            String consulta = "UPDATE reserva SET  estado=?  WHERE id= ? ";
            pst = getConnection().prepareStatement(consulta);
            pst.setInt(1, estado);
            pst.setInt(2, id);
          
            if (pst.executeUpdate() == 1) {
                return true;
            }

        } catch (Exception ex) {
            System.err.println("ERROR: " + ex);
        } finally {
            try {
                if (getConnection() != null) {
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
