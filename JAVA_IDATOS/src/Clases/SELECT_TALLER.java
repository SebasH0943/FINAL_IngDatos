/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;
import java.sql.Date;

/**
 *
 * @author User
 */
public class SELECT_TALLER {
    private String DOCENTE;
    private Date Fecha_taller;
    private String HORA_INICIO;
    private String HORA_FIN;

    public SELECT_TALLER(String DOCENTE, Date Fecha_taller, String HORA_INICIO, String HORA_FIN) {
        this.DOCENTE = DOCENTE;
        this.Fecha_taller = Fecha_taller;
        this.HORA_INICIO = HORA_INICIO;
        this.HORA_FIN = HORA_FIN;
    }

    @Override
    public String toString() {
        return "DOCENTE=" + DOCENTE + ", Fecha_taller=" + Fecha_taller + ", HORA_INICIO=" + HORA_INICIO + ", HORA_FIN=" + HORA_FIN;
    }
    
    
}
