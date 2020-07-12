/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import Controlador.Conexion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import oracle.jdbc.OracleTypes;

/**
 *
 * @author maikolsb
 */
public class Boleta extends Conexion{
    
    
    
        public int registrar(int forma_pago_id,int mesa_id, int total,String fecha,String hora) {
        Connection con = null;
        CallableStatement cstmt = null;
        int respuesta = -1;

        try {
            String consulta = "begin ? := crud_boleta.ins(?,?,?,?,?,?,?); end;";
            cstmt = getConnection().prepareCall(consulta);
            cstmt.registerOutParameter(1, OracleTypes.NUMBER);
            cstmt.setInt(2, forma_pago_id);
            cstmt.setInt(3, 1);
            cstmt.setInt(4, mesa_id);
            cstmt.setInt(5, total);
            cstmt.setString(6, fecha);
            cstmt.setString(7, hora);
            cstmt.setInt(8, 1);
            
            cstmt.execute();
            
            respuesta = cstmt.getInt(1);

        } catch (Exception e){
            System.out.println("Error: "+e);
        }
        return respuesta;
    }
    
}
