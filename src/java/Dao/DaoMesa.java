/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;



import Ent.Mesa;
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
    
     public static boolean insert(Mesa me)
    {
//           if (cli.getId()!=1000) {
       
            String sql= String.format("INSERT INTO mesa(id, numero, estado)"
                    +"VALUES (%d,%d,%d)"
                    
            ,me.getId()
            ,me.getNumero()
            ,me.getEstado()
                );

        return true;
//        
//         }
//        return false;
//        
    }
     

      
      
           
      public  static boolean update(Mesa me)        
    {
               if (me.getNumero()!=10000) {
        String sql= String.format("UPDATE mesa SET  numero =%d ,estado =%d WHERE id= %d "
                
           
            ,me.getId()
           ,me.getNumero()
          ,me.getEstado()
       

        );
                
        
        return true;
         }return false;
    }
     
      
      
      
      
      
        public static List<Mesa> listarMesa()
    {
        List<Mesa> lista =new ArrayList<>();
          String sql = String.format("Select * from mesa"
               // + "where id = %d"
                /*,cliente.getId()*/);
        
        ResultSet curCli= Controlador.Conexion.getInstance().select(sql);
        try {
            while(curCli.next())
            {
                Mesa me =new Mesa(curCli.getInt("id")  
                 , curCli.getInt("numero" )
                , curCli.getInt("estado")
             );
                
                lista.add(me);    
            }
            return lista;
        } catch (SQLException ex) {
            return null;
        }
    }
      
      
    
}
