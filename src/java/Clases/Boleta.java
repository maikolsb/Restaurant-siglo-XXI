/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import Controlador.Conexion;
import java.sql.PreparedStatement;

/**
 *
 * @author maikolsb
 */
public class Boleta extends Conexion{
    
    
    
          public boolean registrar(int forma_pago_id,int mesa_id, int total,String fecha,String hora) {
        PreparedStatement pst = null;

        try {
            String consulta = "insert into boleta(forma_pago_id,caja_id,mesa_id,total,fecha,hora,estado) values(?,?,?,?,?,?,?)";
            pst = getConnection().prepareStatement(consulta);
      //agregar unidad y precio_unitario
            pst.setInt(1, forma_pago_id);
            pst.setInt(2, 1);
            pst.setInt(3, mesa_id);
            pst.setInt(4, total);
            pst.setString(5, fecha);
            pst.setString(6, hora);
            pst.setInt(7, 1);


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
