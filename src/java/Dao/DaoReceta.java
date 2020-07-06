/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Ent.Receta;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author maikolsb
 */
public class DaoReceta {

    public static ArrayList<Receta> All() {

        ArrayList<Receta> recetas = new ArrayList<Receta>();

        String sql = String.format("Select * from receta where estado=1");

        Connection con = new Controlador.Conexion().getConnection();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet curCli = pst.executeQuery();
            while (curCli.next()) {
                Receta re = new Receta(curCli.getInt("id"),
                        curCli.getString("nombre"),
                        curCli.getInt("precio"),
                        curCli.getString("dificultad"),
                        curCli.getInt("estado"),
                        curCli.getString("descripcion"),
                        curCli.getString("categoria")
                        
//                            public int id;
//    public String nombre;
//    public int precio;
//    public String dificultad;
//    public int estado;
//    public String descripcion;
//    public String categoria;
                );

                recetas.add(re);
            }
            con.close();
            return recetas;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return null;
        }
    }
    
    
     public static Receta Read(int idReceta) {

        String sql = String.format("Select * from receta where id=%d",idReceta);
Receta re = null;
        Connection con = new Controlador.Conexion().getConnection();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet curCli = pst.executeQuery();
            while (curCli.next()) {
                re = new Receta(curCli.getInt("id"),
                        curCli.getString("nombre"),
                        curCli.getInt("precio"),
                        curCli.getString("dificultad"),
                        curCli.getInt("estado"),
                        curCli.getString("descripcion"),
                        curCli.getString("categoria")
                        

                );

                
            }
            con.close();
            return re;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return null;
        }
    }


}
