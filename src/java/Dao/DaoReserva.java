/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Ent.Reserva;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author maikolsb
 */
public class DaoReserva {

    public static boolean insert(Reserva re) {
//           if (cli.getId()!=1000) {

        String sql = String.format("INSERT INTO reserva( fecha, hora, cantidad, nombre, correo, mesa)"
                + "VALUES ('%s','%s','%s','%s','%s','%s')",
                re.getFecha(),
                re.getHora(),
                re.getCantidad(),
                re.getNombre(),
                re.getCorreo(),
                re.getMesa()
        );

        return true;
//        
//         }
//        return false;
//        
    }
    
    
    
         public static boolean insertt(Reserva re)
    {
        
        
            String sql= String.format("INSERT INTO reserva( fecha, hora, cantidad, nombre, correo, mesa)"
                + "VALUES ('%s','%s','%s','%s','%s','%s')",
                re.getFecha(),
                re.getHora(),
                re.getCantidad(),
                re.getNombre(),
                re.getCorreo(),
                re.getMesa()
        );
       
        Controlador.Conexion.getInstance().ejecutar(sql);
        return true;
       
        
    }
    

    public static boolean update(Reserva re) {
       
            String sql = String.format("UPDATE RESERVA SET  fecha='%s' ,hora ='%s',cantidad ='%s',correo='%s' ,mesa ='%s'  WHERE nombre= '%s' ",
                     re.getFecha(),
                    re.getHora(),
                    re.getCantidad(),
                    re.getNombre(),
                    re.getCorreo(),
                    re.getMesa()
                   
            );

          return true;
//        
//         }
//        return false;
//        
    }

    public static List<Reserva> listarReserva() {
        List<Reserva> lista = new ArrayList<>();
        String sql = String.format("Select * from reserva"
        // + "where id = %d"
        /*,cliente.getId()*/);

        ResultSet curCli = Controlador.Conexion.getInstance().select(sql);
        try {
            while (curCli.next()) {
                Reserva re = new Reserva(curCli.getString("nombre"),
                         curCli.getString("fecha"),
                         curCli.getString("hora"),
                         curCli.getString("cantidad"),
                         curCli.getString("correo"),
                         curCli.getString("mesa")
                );

                lista.add(re);
            }
            return lista;
        } catch (SQLException ex) {
            return null;
        }
    }

}
