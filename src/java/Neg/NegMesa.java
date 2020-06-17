/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Neg;
import Ent.Mesa;
import java.util.List;
/**
 *
 * @author maikolsb
 */
public class NegMesa {
    
             public static boolean crearCliente(Mesa me)
    {
       
        if (!Dao.DaoMesa.insert(me)) {
            return false;
            
        }
        return true;
    }
    public static boolean ActualizarCliente(Mesa me)
    {
        
        if (!Dao.DaoMesa.update(me)) {
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
    
    public static List<Mesa> listarMesa()
    {
        return Dao.DaoMesa.listarMesa();
    }
    
}
