/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Requerimientos_trabajo;

import Clases.SELECT_CITA;
import util.JdbcUtil;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author JC
 */
public class PruebaSelectCita {
    
    public static List<SELECT_CITA> citasSolicitadas(int cod_docente) throws Exception{
        ArrayList<SELECT_CITA> listaCita = new ArrayList<>();        
        Connection conn = JdbcUtil.getConnection();
        String sql = "SELECT D.NOMBRE||' '||D.APELLIDO DOCENTE, C.FECHA, C.HORA_INICIO, C.HORA_FIN, a.nombre||' '||a.apellido alumno FROM ALUMNO A, CITA C, DOCENTE D WHERE A.COD_ALUMNO = C.COD_ALUMNO AND C.cod_docente = d.cod_docente AND d.cod_docente = ?";
        PreparedStatement pst = conn.prepareStatement(sql);
        pst.setInt(1, cod_docente);
        ResultSet rs = pst.executeQuery();
        while(rs.next()){
            String DOCENTE = rs.getString("DOCENTE");
            Date FECHA = rs.getDate("FECHA");
            String HORA_INICIO = rs.getString("HORA_INICIO");
            String HORA_FIN = rs.getString("HORA_INICIO");
            String alumno = rs.getString("alumno");
            SELECT_CITA Cita = new SELECT_CITA(DOCENTE, FECHA, HORA_INICIO, HORA_FIN, alumno);
            listaCita.add(Cita);
        }
        rs.close();
        pst.close();
        conn.close();
        return listaCita;
    }
    public static void main(String[] args) throws Exception{
        List<SELECT_CITA> citas = citasSolicitadas(30213795);
        System.out.println(citas);
    }
   
}
