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
public class Receta {
    public int id;
    public String nombre;
    public int precio;
    public String dificultad;
    public int estado;
    public String descripcion;
    public String categoria;

    public Receta() {
    }

    public Receta(int id, String nombre, int precio, String dificultad, int estado, String descripcion, String categoria) {
        this.id = id;
        this.nombre = nombre;
        this.precio = precio;
        this.dificultad = dificultad;
        this.estado = estado;
        this.descripcion = descripcion;
        this.categoria = categoria;
    }

    @Override
    public String toString() {
        return "Receta{" + "id=" + id + ", nombre=" + nombre + ", precio=" + precio + ", dificultad=" + dificultad + ", estado=" + estado + ", descripcion=" + descripcion + ", categoria=" + categoria + '}';
    }
    
  
}
