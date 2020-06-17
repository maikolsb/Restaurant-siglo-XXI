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
public class Reserva {

    
    private String fecha;
    private String hora;
    private String cantidad;
    private String nombre;
    private String correo;
    private String mesa;

    public Reserva() {
    }

    public Reserva(String fecha, String hora, String cantidad, String nombre, String correo, String mesa) {
        this.fecha = fecha;
        this.hora = hora;
        this.cantidad = cantidad;
        this.nombre = nombre;
        this.correo = correo;
        this.mesa = mesa;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getMesa() {
        return mesa;
    }

    public void setMesa(String mesa) {
        this.mesa = mesa;
    }

    @Override
    public String toString() {
        return "Reserva{" + "fecha=" + fecha + ", hora=" + hora + ", cantidad=" + cantidad + ", nombre=" + nombre + ", correo=" + correo + ", mesa=" + mesa + '}';
    }

   

  
    
}
