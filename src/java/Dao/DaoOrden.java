/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Controlador.Conexion;
import Ent.Orden;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import oracle.jdbc.OracleTypes;

/**
 *
 * @author Sebastian
 */
public class DaoOrden {

    public DaoOrden() {
        if (ordenes == null) {
            ordenes = All();
        }
    }

    public static ArrayList<Orden> ordenes;

    public ArrayList<Orden> All() {

        ArrayList<Orden> ordenes = new ArrayList<>();
        Connection con = null;
        CallableStatement cstmt = null;

        try {
            con = new Conexion().getConnection();
            cstmt = con.prepareCall("begin ? := crud_orden.read_all(); end;");
            cstmt.registerOutParameter(1, OracleTypes.CURSOR);
            cstmt.execute();

            ResultSet cursor = (ResultSet) cstmt.getObject(1);

            while (cursor.next()) {
                int idO = cursor.getInt(1);
                int cantidad = cursor.getInt(2);
                int estado = cursor.getInt(3);
                int mesa_id = cursor.getInt(4);
                int receta_id = cursor.getInt(5);

                Orden nuevaOrd = new Orden(idO, cantidad, estado, mesa_id, receta_id);
                ordenes.add(nuevaOrd);
            }

            cstmt.close();
            con.close();

        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return ordenes;
    }

    public boolean MesaCambio(int idMesa) {

        boolean respuesta = false;
        Connection con = null;
        CallableStatement cstmt = null;

        try {
            con = new Conexion().getConnection();
            cstmt = con.prepareCall("begin ? := crud_orden.read_all(); end;");
            cstmt.registerOutParameter(1, OracleTypes.CURSOR);
            cstmt.execute();

            ResultSet cursor = (ResultSet) cstmt.getObject(1);

            while (cursor.next()) {
                int idO = cursor.getInt(1);
                int mesa_id = cursor.getInt(4);
                int estado = cursor.getInt(3);

                if (idMesa == mesa_id) {
                    for (Orden o : ordenes) {
                        if (o.getId() == idO) {
                            respuesta = respuesta || o.getEstado() != estado;
                        }
                    }
                }
            }

            cstmt.close();
            con.close();

        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        ordenes = All(); //cambiar por un updateFromMesa
        return respuesta;
    }

    public void UpdateEstado(Orden o) {
        Connection con = null;
        CallableStatement cstmt = null;

        try {
            con = new Conexion().getConnection();
            cstmt = con.prepareCall("update orden set estado=? where id =?");
            cstmt.setInt(1, o.getEstado());
            cstmt.setInt(2, o.getId());

            cstmt.execute();

            cstmt.close();
            con.close();

        } catch (Exception e) {
            System.out.println("Error: " + e);
        }

    }

}
