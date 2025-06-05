/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Modelo.seguridad;

import Controlador.seguridad.Vendedor; 
import Modelo.Conexion;
import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.view.JasperViewer;

public class VendedorDAO {
    
    private static final String SQL_SELECT = "SELECT id_vendedor, nombre_vendedor, apellido_vendedor, telefono_vendedor, direccion_vendedor, correo_vendedor, estatus_vendedor FROM vendedor";
    private static final String SQL_INSERT = "INSERT INTO vendedor (id_vendedor, nombre_vendedor, apellido_vendedor, telefono_vendedor, direccion_vendedor, correo_vendedor, estatus_vendedor) VALUES (?, ?, ?, ?, ?, ?, ?)";
    private static final String SQL_UPDATE = "UPDATE vendedor SET nombre_vendedor=?, apellido_vendedor=?, telefono_vendedor=?, direccion_vendedor=?, correo_vendedor=?, estatus_vendedor=? WHERE id_vendedor=? ";
    private static final String SQL_DELETE = "DELETE FROM vendedor WHERE id_vendedor=?";
    private static final String SQL_QUERY = "SELECT id_vendedor, nombre_vendedor, apellido_vendedor, telefono_vendedor, direccion_vendedor, correo_vendedor, estatus_vendedor FROM vendedor WHERE id_vendedor=?";
    
    public List<Vendedor> select() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Vendedor> list_vendedores = new ArrayList<>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_SELECT);
            rs = stmt.executeQuery();
            
            while (rs.next()) {
                Vendedor vendedor = new Vendedor();
                vendedor.setId_vendedor(rs.getInt("id_vendedor"));
                vendedor.setNombre_vendedor(rs.getString("nombre_vendedor"));
                vendedor.setApellido_vendedor(rs.getString("apellido_vendedor"));
                vendedor.setTelefono_vendedor(rs.getInt("telefono_vendedor"));
                vendedor.setDireccion_vendedor(rs.getString("direccion_vendedor"));
                vendedor.setCorreo_vendedor(rs.getString("correo_vendedor"));
                vendedor.setEstatus_vendedor(rs.getString("estatus_vendedor"));
                
                list_vendedores.add(vendedor);
            }

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return list_vendedores;
    }
    public int insert(Vendedor vendedor) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_INSERT);
            
            stmt.setInt(1, vendedor.getId_vendedor());
            stmt.setString(2, vendedor.getNombre_vendedor());
            stmt.setString(3, vendedor.getApellido_vendedor());
            stmt.setInt(4, vendedor.getTelefono_vendedor());
            stmt.setString(5, vendedor.getDireccion_vendedor());
            stmt.setString(6, vendedor.getCorreo_vendedor());
            stmt.setString(7, vendedor.getEstatus_vendedor());
            rows = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return rows;
    }
    public int update(Vendedor vendedor) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_UPDATE);
            
            
            stmt.setString(1, vendedor.getNombre_vendedor());
            stmt.setString(2, vendedor.getApellido_vendedor());
            stmt.setInt(3, vendedor.getTelefono_vendedor());
            stmt.setString(4, vendedor.getDireccion_vendedor());
            stmt.setString(5, vendedor.getCorreo_vendedor());
            stmt.setString(6, vendedor.getEstatus_vendedor());        
            stmt.setInt(7, vendedor.getId_vendedor());
            
            rows = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return rows;
    }
    public int delete(Vendedor vendedor) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_DELETE);
            stmt.setInt(1, vendedor.getId_vendedor());

            rows = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return rows;
    }
    
    public Vendedor query(Vendedor vendedor) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_QUERY);
            stmt.setInt(1, vendedor.getId_vendedor());
            rs = stmt.executeQuery();
            if (rs.next()) {
                vendedor.setNombre_vendedor(rs.getString("nombre_vendedor"));
                vendedor.setApellido_vendedor(rs.getString("apellido_vendedor"));
                vendedor.setTelefono_vendedor(rs.getInt("telefono_vendedor"));
                vendedor.setDireccion_vendedor(rs.getString("direccion_vendedor"));
                vendedor.setCorreo_vendedor(rs.getString("correo_vendedor"));
                vendedor.setEstatus_vendedor(rs.getString("estatus_vendedor"));
            }

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return vendedor;
    }
    
    public void imprimirReporte() {
        Connection conn = null;
        Map p = new HashMap();
        JasperReport report;
        JasperPrint print;
        try {
            conn = Conexion.getConnection();
            report = JasperCompileManager.compileReport(new File("").getAbsolutePath()
                    + "/src/main/java/ReportePrueba/"+ "ReportePrueba.jrxml");
            print = JasperFillManager.fillReport(report, p, conn);
            JasperViewer view = new JasperViewer(print, false);
            view.setTitle("Reporte de Vendedores");
            view.setVisible(true);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
