/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Maikolsb
 */
public class Conexion {

    
    private String USERNAME = "sigloxxi";
    private String PASSWORD = "equipo3";
    private String CLASSNAME = "oracle.jdbc.driver.OracleDriver";
    private String URL = "jdbc:oracle:thin:@www.cittsb.cl:1521:XE";
    private Connection con;
    
    
    Statement st = null;
    private static Conexion bd;

    public Conexion() {
        try {
            Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException e) {
            System.err.println("ERROR" + e);
        } catch (SQLException e) {
            System.err.println("Error" + e);
        }
    }

    public Connection getConnection() {
        return con;
    }
    
    
    
    // harrys
    public static Conexion getInstance() {
        if (bd == null) {
            bd = new Conexion();
        }
        return bd;
    }

    public ResultSet select(String sql) {
        try {
            ResultSet rs = st.executeQuery(sql);
            return rs;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }

    public boolean isExists(String sql) {
        try {
            ResultSet rs = st.executeQuery(sql);

            return rs.next();

        } catch (SQLException ex) {

        }
        return false;
    }

    public boolean ejecutar(String sql) {
        try {
            st.executeUpdate(sql);
            return true;
        } catch (SQLException ex) {

        }
        return false;
    }

}
