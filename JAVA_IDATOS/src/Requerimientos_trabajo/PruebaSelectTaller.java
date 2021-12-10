/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Requerimientos_trabajo;

import Clases.SELECT_TALLER;
import util.JdbcUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;

/**
 *
 * @author JC
 */
public class PruebaSelectTaller {
   
    public static List<SELECT_TALLER> verTaller() throws Exception{
        ArrayList<SELECT_TALLER> listaTaller = new ArrayList<>();        
        Connection conn = JdbcUtil.getConnection();
        String sql = "SELECT D.NOMBRE||' '||D.APELLIDO DOCENTE, t.FECHA Fecha_Taller, t.HORA_INICIO, t.HORA_FIN FROM Taller t, DOCENTE D WHERE T.cod_docente = d.cod_docente";
        PreparedStatement pst = conn.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        while(rs.next()){
            String DOCENTE = rs.getString("DOCENTE");
            Date FECHA = rs.getDate("Fecha_Taller");
            String HORA_INICIO = rs.getString("HORA_INICIO");
            String HORA_FIN = rs.getString("HORA_INICIO");
            SELECT_TALLER Taller = new SELECT_TALLER(DOCENTE, FECHA, HORA_INICIO, HORA_FIN);
            listaTaller.add(Taller);
        }
        rs.close();
        pst.close();
        conn.close();
        return listaTaller;
    }
    public static void main(String[] args) throws Exception{
        List<SELECT_TALLER> talleres = verTaller();
        System.out.println(talleres);
    }
   
}
