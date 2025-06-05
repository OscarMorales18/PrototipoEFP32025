/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.seguridad;

/**
 *
 * @author visitante
 */
public class Vendedor {
    
    int id_vendedor;
    String nombre_vendedor;
    String apellido_vendedor;
    int telefono_vendedor;
    String direccion_vendedor;
    String correo_vendedor;
    String estatus_vendedor;

    public Vendedor(int id_vendedor, String nombre_vendedor, String apellido_vendedor, int telefono_vendedor, String direccion_vendedor, String correo_vendedor, String estatus_vendedor) {
        this.id_vendedor = id_vendedor;
        this.nombre_vendedor = nombre_vendedor;
        this.apellido_vendedor = apellido_vendedor;
        this.telefono_vendedor = telefono_vendedor;
        this.direccion_vendedor = direccion_vendedor;
        this.correo_vendedor = correo_vendedor;
        this.estatus_vendedor = estatus_vendedor;
    }

    @Override
    public String toString() {
        return "Vendedor{" + "id_vendedor=" + id_vendedor + ", nombre_vendedor=" + nombre_vendedor + ", apellido_vendedor=" + apellido_vendedor + ", telefono_vendedor=" + telefono_vendedor + ", direccion_vendedor=" + direccion_vendedor + ", correo_vendedor=" + correo_vendedor + ", estatus_vendedor=" + estatus_vendedor + '}';
    }

    public int getId_vendedor() {
        return id_vendedor;
    }

    public void setId_vendedor(int id_vendedor) {
        this.id_vendedor = id_vendedor;
    }

    public String getNombre_vendedor() {
        return nombre_vendedor;
    }

    public void setNombre_vendedor(String nombre_vendedor) {
        this.nombre_vendedor = nombre_vendedor;
    }

    public String getApellido_vendedor() {
        return apellido_vendedor;
    }

    public void setApellido_vendedor(String apellido_vendedor) {
        this.apellido_vendedor = apellido_vendedor;
    }

    public int getTelefono_vendedor() {
        return telefono_vendedor;
    }

    public void setTelefono_vendedor(int telefono_vendedor) {
        this.telefono_vendedor = telefono_vendedor;
    }

    public String getDireccion_vendedor() {
        return direccion_vendedor;
    }

    public void setDireccion_vendedor(String direccion_vendedor) {
        this.direccion_vendedor = direccion_vendedor;
    }

    public String getCorreo_vendedor() {
        return correo_vendedor;
    }

    public void setCorreo_vendedor(String correo_vendedor) {
        this.correo_vendedor = correo_vendedor;
    }

    public String getEstatus_vendedor() {
        return estatus_vendedor;
    }

    public void setEstatus_vendedor(String estatus_vendedor) {
        this.estatus_vendedor = estatus_vendedor;
    }

    

    public Vendedor() {
    }
   
}
