/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ent;

/**
 *
 * @author Sebastian
 */
public class Orden {
    private int id;
    private int cantidad;
    private int estado;
    private int mesa_id;
    private int receta_id;

    public Orden(int id, int cantidad, int estado, int mesa_id, int receta_id) {
        this.id = id;
        this.cantidad = cantidad;
        this.estado = estado;
        this.mesa_id = mesa_id;
        this.receta_id = receta_id;
    }

    public Orden() {
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public int getMesa_id() {
        return mesa_id;
    }
 
    public void setMesa_id(int mesa_id) {
        this.mesa_id = mesa_id;
    }


    public int getReceta_id() {
        return receta_id;
    }

    public void setReceta_id(int receta_id) {
        this.receta_id = receta_id;
    }

    @Override
    public String toString() {
        return "Orden{" + "id=" + id + ", cantidad=" + cantidad + ", estado=" + estado + ", mesa_id=" + mesa_id + ", receta_id=" + receta_id + '}';
    }
    
    
}
