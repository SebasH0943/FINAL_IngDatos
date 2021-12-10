/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Requerimientos_trabajo;

import Clases.SELECT_ASESORIA;
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
public class PruebaSelectAsesoria {
    
    public static List<SELECT_ASESORIA> verAsesorias() throws Exception{
        ArrayList<SELECT_ASESORIA> listaAsesoria = new ArrayList<>();        
        Connection conn = JdbcUtil.getConnection();
        String sql = "SELECT D.NOMBRE||' '||D.APELLIDO DOCENTE, A.TEMA, a.FECHA Fecha_Asesoria, a.HORA_INICIO, a.HORA_FIN FROM Asesoria A, DOCENTE D WHERE A.cod_docente = d.cod_docente";
        PreparedStatement pst = conn.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        while(rs.next()){
            String DOCENTE = rs.getString("DOCENTE");
            String TEMA = rs.getString("TEMA");
            Date FECHA = rs.getDate("Fecha_Asesoria");
            String HORA_INICIO = rs.getString("HORA_INICIO");
            String HORA_FIN = rs.getString("HORA_FIN");
            SELECT_ASESORIA Asesoria = new SELECT_ASESORIA(DOCENTE, TEMA, FECHA, HORA_INICIO, HORA_FIN);
            listaAsesoria.add(Asesoria);
        }
        rs.close();
        pst.close();
        conn.close();
        return listaAsesoria;
    }
    public static void main(String[] args) throws Exception{
        List<SELECT_ASESORIA> citas = verAsesorias();
        System.out.println(citas);
    }
   
}
