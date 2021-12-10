/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Requerimientos_trabajo;

import Clases.Taller;
import util.JdbcUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;


/**
 *
 * @author JC
 */
public class INSERT_TALLER {

    public static void registrarTaller(Taller tall) throws Exception{
        Connection conn = JdbcUtil.getConnection();
        String sql = "INSERT INTO TALLER VALUES(?, ?, ?, ?, ?)";
        PreparedStatement pst = conn.prepareStatement(sql);
        pst.setInt(1, tall.getID_TALLER());
        
        SimpleDateFormat sdf=new SimpleDateFormat("dd/mm/yy");
        java.util.Date x = sdf.parse(tall.getFECHA()) ;
        long ms = x.getTime();
        java.sql.Date sqdob= new java.sql.Date(ms);
        
        pst.setDate(2,sqdob);
        pst.setString(3, tall.getHORA_INICIO());
        pst.setString(4, tall.getHORA_FIN());
        pst.setInt(5, tall.getCOD_DOCENTE());
        pst.executeUpdate();
        pst.close();
        conn.close();
    }    

    public static void main(String[] args) throws Exception{
        Taller t1 = new Taller(114, "22/08/21", "4:00pm","5:30 pm", 30213795);
        Taller t2 = new Taller(116, "11/6/21", "3:00pm","4:30 pm", 30218512);
        registrarTaller(t1);
        registrarTaller(t2);
        System.out.println("Talleres registrados");
    }
}