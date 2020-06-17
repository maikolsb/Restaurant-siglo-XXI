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
public class EditarUsuario extends Conexion {
    
    
         public boolean Actualizar(String rut, String nombre, String apellidopat, String apellidomat, String correo, String contraseña, int estado, int id) {
        PreparedStatement pst = null;

        try {
            String consulta = "UPDATE usuario SET  nombre =? ,rut =? ,apellidoPat =? ,apellidoMat =? ,correo =? ,password =? ,estado =?  WHERE id= ? ";
            pst = getConnection().prepareStatement(consulta);
            pst.setString(1, nombre);
            pst.setString(2, rut);
            pst.setString(3, apellidopat);
            pst.setString(4, apellidomat);
            pst.setString(5, correo);
            pst.setString(6, contraseña);
            pst.setInt(7, estado);
            pst.setInt(8, id);
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
