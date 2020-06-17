/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Neg;

import Ent.Reserva;
import java.util.List;

/**
 *
 * @author maikolsb
 */
public class NegReserva {

             public static boolean crearReserva(Reserva re)
    {
       
        if (!Dao.DaoReserva.insertt(re)) {
            return false;
            
        }
        return true;
    }
    public static boolean ActualizarReserva(Reserva re)
    {
        
        if (!Dao.DaoReserva.update(re)) {
            return false;
            
        }
        return true;
    }
//    public static boolean EliminarMesa(Mesa me)
//    {
//      
//        if (!Dao.DaoMesa.delete(me)) {
//            return false;
//            
//        }
//        return true;
//    }
    
    public static List<Reserva> listarReserva()
    {
        return Dao.DaoReserva.listarReserva();
    }
    
}


    

