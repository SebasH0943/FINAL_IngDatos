/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Requerimientos_trabajo;
import util.JdbcUtil;
import java.sql.CallableStatement;
import java.sql.Connection;


/**
 *
 * @author JC
 */
public class PLSQL_Trabajo {        
    
  
    public static void confirmarAsisAsesoria(int cod_alum, int id_aseso) throws Exception{                
        Connection conn = JdbcUtil.getConnection();
        String llamado = "{call CONFIRMAASISTASESO(?, ?)}";
        CallableStatement cst = conn.prepareCall(llamado);
        cst.setInt(1, cod_alum);
        cst.setInt(2, id_aseso);
        cst.execute();
        cst.close();
        conn.close();
    }    
    public static void confirmarAsisTaller(int cod_alum, int id_taller) throws Exception{                
        Connection conn = JdbcUtil.getConnection();
        String llamado = "{call CONFIRMAASISTTALL(?, ?)}";
        CallableStatement cst = conn.prepareCall(llamado);
        cst.setInt(1, cod_alum);
        cst.setInt(2, id_taller);
        cst.execute();
        cst.close();
        conn.close();
    } 
    
    public static void main(String[] args) throws Exception{
        confirmarAsisTaller(20210695, 111);
        confirmarAsisAsesoria(20210184, 111);
        System.out.println("Asistencias confirmadas");
    }
}