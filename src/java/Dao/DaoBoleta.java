/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Controlador.Conexion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import oracle.jdbc.OracleTypes;

/**
 *
 * @author Sebastian
 */
public class DaoBoleta {

    public static boolean ConfirmarPago(int id_boleta) {
        Connection con = null;
        CallableStatement cstmt = null;
        boolean respuesta = false;

        try{
            con = new Conexion().getConnection();
            cstmt = con.prepareCall("begin ? := crud_boleta.read(?); end;");

            cstmt.registerOutParameter(1, OracleTypes.CURSOR);
            cstmt.setInt(2,id_boleta);
            cstmt.execute();

            ResultSet cursor = (ResultSet) cstmt.getObject(1);
            
            if(cursor.next()){
                respuesta = 2 == cursor.getInt(8);
            } 

            cstmt.close();
            con.close();

        } catch (Exception e){
            System.out.println(e.getMessage());
        }
        return respuesta;
    }
    
}
