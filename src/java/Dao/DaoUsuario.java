/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Ent.Usuario;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author maikolsb
 */
public class DaoUsuario {

    public static boolean insert(Usuario us) {
//           if (cli.getId()!=1000) {

        String sql = String.format("INSERT INTO usuarios(id,rut,nombre,apellidoPat,apellidoMat,correo,password,estado)"
                + "VALUES (%d,'%s','%s','%s','%s','%s','%s',%d)",
                us.getId(),
                us.getRut(),
                us.getNombre(),
                us.getApellidoPat(),
                us.getApellidoMat(),
                us.getCorreo(),
                us.getContraseña(),
                us.getEstado()
        );

        Controlador.Conexion.getInstance().ejecutar(sql);
        return true;

    }

    public static boolean update(Usuario us) {
        if (us.getNombre().length() != 0) {
            String sql = String.format("UPDATE usuarios SET  nombre ='%s' ,rut ='%s',apellidoPat ='%s',apellidoMat ='%s',correo ='%s',password ='%s'   WHERE id= %d ",
                    us.getNombre(),
                    us.getRut(),
                    us.getApellidoPat(),
                    us.getApellidoMat(),
                    us.getCorreo(),
                    us.getContraseña(),
                    us.getEstado(),
                    us.getId()
            );

            Controlador.Conexion.getInstance().ejecutar(sql);
            return true;
        }
        return false;
    }

    public static boolean delete(Usuario us) {

        String sql = String.format("Delete from usuarios "
                + "where id= %d ",
                us.getId());

        Controlador.Conexion.getInstance().ejecutar(sql);
        return true;
    }

    public static List<Usuario> listarUsuario() {
        List<Usuario> lista = new ArrayList<>();
        String sql = String.format("Select * from usuarios "
        // + "where id = %d"
        /*,cliente.getId()*/);

        ResultSet curCli = Controlador.Conexion.getInstance().select(sql);
        try {
            while (curCli.next()) {
                Usuario us = new Usuario(curCli.getInt("id"),
                        curCli.getString("rut"),
                        curCli.getString("nombre"),
                        curCli.getString("apellidoPat"),
                        curCli.getString("apellidoMat"),
                        curCli.getString("correo"),
                        curCli.getString("contraseña"),
                        curCli.getInt("estado"));

                lista.add(us);
            }
            return lista;
        } catch (SQLException ex) {

            return null;
        }
    }

}
