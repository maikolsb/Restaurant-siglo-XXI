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
public class Mesa {
    
    private int id;
    private int numero;
    private int estado;


    public Mesa() {
    }

    public Mesa(int id, int numero, int estado) {
        this.id = id;
        this.numero = numero;
        this.estado = estado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    @Override
    public String toString() {
        return "Mesa{" + "id=" + id + ", numero=" + numero + ", estado=" + estado + '}';
    }

   
    
}
