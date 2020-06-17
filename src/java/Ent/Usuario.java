/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ent;

/**
 *
 * @author maikolsb
 */
public class Usuario {

    private int id;
    private String rut;
    private String nombre;
    private String apellidoPat;
    private String apellidoMat;
    private String correo;
    private String contraseña;
    private int estado;

    public Usuario() {
    }

    public Usuario(int id, String rut, String nombre, String apellidoPat, String apellidoMat, String correo, String contraseña, int estado) {
        this.id = id;
        this.rut = rut;
        this.nombre = nombre;
        this.apellidoPat = apellidoPat;
        this.apellidoMat = apellidoMat;
        this.correo = correo;
        this.contraseña = contraseña;
        this.estado = estado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidoPat() {
        return apellidoPat;
    }

    public void setApellidoPat(String apellidoPat) {
        this.apellidoPat = apellidoPat;
    }

    public String getApellidoMat() {
        return apellidoMat;
    }

    public void setApellidoMat(String apellidoMat) {
        this.apellidoMat = apellidoMat;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    @Override
    public String toString() {
        return "Usuario{" + "id=" + id + ", rut=" + rut + ", nombre=" + nombre + ", apellidoPat=" + apellidoPat + ", apellidoMat=" + apellidoMat + ", correo=" + correo + ", contrase\u00f1a=" + contraseña + ", estado=" + estado + '}';
    }
}
