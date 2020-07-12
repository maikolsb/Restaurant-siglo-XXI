/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Controlador.Conexion;
import Ent.Mesa;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author maikolsb
 */
public class DaoMesa {

    public static boolean insert(Mesa me) {
//           if (cli.getId()!=1000) {

        String sql = String.format("INSERT INTO mesa(id, numero, estado)"
                + "VALUES (%d,%d,%d)",
                me.getId(),
                me.getNumero(),
                me.getEstado()
        );

        return true;
//        
//         }
//        return false;
//        
    }

    public static boolean update(Mesa me) {
        if (me.getNumero() != 10000) {
            String sql = String.format("UPDATE mesa SET  numero =%d ,estado =%d WHERE id= %d ",
                    me.getId(),
                    me.getNumero(),
                    me.getEstado()
            );

            return true;
        }
        return false;
    }

    public static List<Mesa> listarMesa() {
        List<Mesa> lista = new ArrayList<>();
        String sql = String.format("Select * from mesa where estado=1");

        Connection con = new Controlador.Conexion().getConnection();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet curCli = pst.executeQuery();
            while (curCli.next()) {
                Mesa me = new Mesa(curCli.getInt("id"),
                        curCli.getInt("numero"),
                        curCli.getInt("estado")
                );

                lista.add(me);
            }
            con.close();
            return lista;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return null;
        }
    }

    public static void UpdateEstado(int id_mesa_int, int estado) {
        Connection con = null;
        CallableStatement cstmt = null;

        try {
            con = new Conexion().getConnection();
            cstmt = con.prepareCall("update mesa set estado=? where id =?");
            cstmt.setInt(1, estado);
            cstmt.setInt(2,id_mesa_int);

            cstmt.execute();

            cstmt.close();
            con.close();

        } catch (Exception e) {
            System.out.println("Error: " + e);
        }

    }

}
