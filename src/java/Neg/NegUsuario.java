/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Neg;

import Ent.Usuario;
import java.util.List;

/**
 *
 * @author maikolsb
 */
public class NegUsuario {
    
       public static boolean crearUsuario(Usuario us)
    {
       
        if (!Dao.DaoUsuario.insert(us)) {
            return false;
            
        }
        return true;
    }
    public static boolean ActualizarUsuario(Usuario us)
    {
        
        if (!Dao.DaoUsuario.update(us)) {
            return false;
            
        }
        return true;
    }
    public static boolean EliminarUsuario(Usuario us)
    {
      
        if (!Dao.DaoUsuario.delete(us)) {
            return false;
            
        }
        return true;
    }
    
    public static List<Usuario> listarUsuario()
    {
        return Dao.DaoUsuario.listarUsuario();
    }
    
    
}
