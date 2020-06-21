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
public class EditarMesas extends Conexion {

    public boolean Actualizar(int id, int numero, int estado) {
        PreparedStatement pst = null;

        try {
            String consulta = "UPDATE mesa SET  numero=?,estado=?  WHERE id= ? ";
            pst = getConnection().prepareStatement(consulta);
            pst.setInt(1, numero);
            pst.setInt(2, estado);
            pst.setInt(3, id);
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
