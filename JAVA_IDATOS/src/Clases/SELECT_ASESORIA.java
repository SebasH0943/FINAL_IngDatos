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
public class SELECT_ASESORIA {
    private String DOCENTE;
    private String TEMA;
    private Date FECHA;
    private String HORA_INICIO;
    private String HORA_FIN;

    public SELECT_ASESORIA(String DOCENTE, String TEMA, Date FECHA, String HORA_INICIO, String HORA_FIN) {
        this.DOCENTE = DOCENTE;
        this.TEMA = TEMA;
        this.FECHA = FECHA;
        this.HORA_INICIO = HORA_INICIO;
        this.HORA_FIN = HORA_FIN;
    }

    @Override
    public String toString() {
        return "DOCENTE=" + DOCENTE + ", TEMA=" + TEMA + ", FECHA=" + FECHA + ", HORA_INICIO=" + HORA_INICIO + ", HORA_FIN=" + HORA_FIN;
    }

  
}
