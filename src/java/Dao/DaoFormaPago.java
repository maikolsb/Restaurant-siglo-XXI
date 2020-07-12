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
import oracle.jdbc.OracleTypes;

/**
 *
 * @author maikolsb
 */
public class DaoFormaPago {
    
   public static int getIdFormaPago(String nombre){
   
       switch(nombre){
           case  "Webpay":
               return 1;
               
           case "Efectivo":
               return 2;
          
           default : return 3;
               
       }
       
   }
    
}
