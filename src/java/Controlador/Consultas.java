/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

/**
 *
 * @author Maikolsb
 */
public class Consultas extends Conexion {

    public boolean autenticacion(String rut, String contraseña) {
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String consulta = "select * from usuario where rut = ? and password = ?";
            pst = getConnection().prepareStatement(consulta);
            pst.setString(1, rut);
            pst.setString(2, contraseña);
            rs = pst.executeQuery();
            return rs.next();

//            if (rs.absolute(1)) {
//                return true;
//               
//            }
        } catch (Exception e) {
            System.err.println("ERROR: " + e);
        } finally {
            try {
                if (getConnection() != null) {
                    getConnection().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }

            } catch (Exception e) {
                System.err.println("ERROR:" + e);
            }
        }

        return false;
    }
    
    

    public String maquina(String rut, String contraseña) {
        PreparedStatement pst = null;
        ResultSet rs = null;
        String prueba = "";
        try {
            String consulta = "select * from usuario where rut = ? and password = ?";
            pst = getConnection().prepareStatement(consulta);
            pst.setString(1, rut);
            pst.setString(2, contraseña);

            rs = pst.executeQuery();

            while (rs.next()) {
                String nombre = rs.getString("nombre");
                //     String apellidopat = rs.getString("apellidopat");
                //       String apellidomat = rs.getString("apellidomat");

                prueba = nombre;

            }

            return prueba;

//            if (rs.absolute(1)) {
//                return true;
//               
//            }
        } catch (Exception e) {
            System.err.println("ERROR: " + e);
        } finally {
            try {
                if (getConnection() != null) {
                    getConnection().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }

            } catch (Exception e) {
                System.err.println("ERROR:" + e);
            }
        }

        return prueba;
    }
    
    
     public int maquinaId(String rut, String contraseña) {
        PreparedStatement pst = null;
        ResultSet rs = null;
        int prueba =0;
        try {
            String consulta = "select * from usuario where rut = ? and password = ?";
            pst = getConnection().prepareStatement(consulta);
            pst.setString(1, rut);
            pst.setString(2, contraseña);

            rs = pst.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                //     String apellidopat = rs.getString("apellidopat");
                //       String apellidomat = rs.getString("apellidomat");

                prueba = id;

            }

            return prueba;

//            if (rs.absolute(1)) {
//                return true;
//               
//            }
        } catch (Exception e) {
            System.err.println("ERROR: " + e);
        } finally {
            try {
                if (getConnection() != null) {
                    getConnection().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }

            } catch (Exception e) {
                System.err.println("ERROR:" + e);
            }
        }

        return prueba;
    }
    
    
    
    
    
    

    public List<String> obtenerUsuario(String rut) throws SQLException {
        List<String> lista = new ArrayList<>();
        String sql = String.format("select * from usuario "
                + "where rut = '%s'",
                rut);
        ResultSet curPer = (ResultSet) getConnection().prepareStatement(sql);
        try {
            while (curPer.next()) {
                int id = curPer.getInt("id");
                String nombre = curPer.getString("nombre");
                String apellidopat = curPer.getString("apellidopat");
                String apellidomat = curPer.getString("apellidomat");

                lista.add(nombre);

            }
            return lista;
        } catch (SQLException ex) {

            return null;
        }
    }

    public boolean registrar(String rut, String nombre, String apellidopat, String apellidomat, String correo, String contraseña,int rol_id, int estado) {
        PreparedStatement pst = null;

        try {
            String consulta = "insert into usuario (rut,nombre,apellidopat,apellidomat,correo,password,rol_id,estado) values(?,?,?,?,?,?,?,?)";
            pst = getConnection().prepareStatement(consulta);
            pst.setString(1, rut);
            pst.setString(2, nombre);
            pst.setString(3, apellidopat);
            pst.setString(4, apellidomat);
            pst.setString(5, correo);
            pst.setString(6, contraseña);
            pst.setInt(7, rol_id);
            pst.setInt(8, estado);
            if (pst.executeUpdate() == 1) {
                return true;
            }

        } catch (Exception ex) {
            System.err.println("ERROR: " + ex);
        } finally {
            try {
                if (getConnection() != null) {
                    getConnection().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (Exception e) {
                System.err.println("ERROR: " + e);
            }

        }

        return false;
    }
    
    
    

    
    

}
