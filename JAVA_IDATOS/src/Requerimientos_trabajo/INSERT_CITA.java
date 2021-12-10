/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Requerimientos_trabajo;


import Clases.Cita;
import util.JdbcUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;


/**
 *
 * @author JC
 */
public class INSERT_CITA {

    public static void solicitarCita(Cita cita) throws Exception{
        Connection conn = JdbcUtil.getConnection();
        String sql = "INSERT INTO CITA VALUES(?, ?, ?, ?, ?, ?)";
        PreparedStatement pst = conn.prepareStatement(sql);
        pst.setInt(1, cita.getID_CITA());
        
        SimpleDateFormat sdf=new SimpleDateFormat("dd/mm/yy");
        java.util.Date x = sdf.parse(cita.getFECHA()) ;
        long ms = x.getTime();
        java.sql.Date sqdob= new java.sql.Date(ms);
        
        pst.setDate(2,sqdob);
        pst.setString(3, cita.getHORA_INICIO());
        pst.setString(4, cita.getHORA_FIN());
        pst.setInt(5, cita.getCOD_DOCENTE());
        pst.setInt(6, cita.getCOD_ALUMNO());
        pst.executeUpdate();
        pst.close();
        conn.close();
    }    

    public static void main(String[] args) throws Exception{
        Cita p1 = new Cita(801, "01/12/21", "5:00pm","6:00 pm", 30213795,20210695);
        Cita p2 = new Cita(901, "21/11/21", "4:00pm","7:00 pm", 30218512,20210159);
        solicitarCita(p1);
        solicitarCita(p2);
        System.out.println("Citas solicitadas");
    }
}