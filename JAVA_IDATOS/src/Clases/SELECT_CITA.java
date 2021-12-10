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
public class SELECT_CITA {
    private String DOCENTE;
    private Date FECHA;
    private String HORA_INICIO;
    private String HORA_FIN;
    private String ALUMNO;

    public SELECT_CITA(String DOCENTE, Date FECHA, String HORA_INICIO, String HORA_FIN, String ALUMNO) {
        this.DOCENTE = DOCENTE;
        this.FECHA = FECHA;
        this.HORA_INICIO = HORA_INICIO;
        this.HORA_FIN = HORA_FIN;
        this.ALUMNO = ALUMNO;
    }

    @Override
    public String toString() {
        return "DOCENTE=" + DOCENTE + ", FECHA=" + FECHA + ", HORA_INICIO=" + HORA_INICIO + ", HORA_FIN=" + HORA_FIN + ", ALUMNO=" + ALUMNO;
    }
    
    
}
