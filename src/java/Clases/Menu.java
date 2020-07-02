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

/**
 *
 * @author maikolsb
 */
public class Menu extends Conexion{
    
    
    
      public boolean registrar(int cantidad, int estado, int mesa_id,int receta_id) {
        PreparedStatement pst = null;

        try {
            String consulta = "insert into orden (cantidad,estado,emeda_id,receta_id) values(?,?,?,?)";
            pst = getConnection().prepareStatement(consulta);
      //agregar unidad y precio_unitario
            pst.setInt(1, cantidad);
            pst.setInt(2, estado);
            pst.setInt(3, mesa_id);
            pst.setInt(4, receta_id);


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
