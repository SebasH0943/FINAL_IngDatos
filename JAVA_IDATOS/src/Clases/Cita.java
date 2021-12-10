/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.util.Date;

/**
 *
 * @author User
 */
public class Cita {
    private int ID_CITA;
    private String FECHA;
    private String HORA_INICIO;
    private String HORA_FIN;
    private int COD_DOCENTE;
    private int COD_ALUMNO;

    public Cita(int ID_CITA, String FECHA, String HORA_INICIO, String HORA_FIN, int COD_DOCENTE, int COD_ALUMNO) {
        this.ID_CITA = ID_CITA;
        this.FECHA = FECHA;
        this.HORA_INICIO = HORA_INICIO;
        this.HORA_FIN = HORA_FIN;
        this.COD_DOCENTE = COD_DOCENTE;
        this.COD_ALUMNO = COD_ALUMNO;
    }

    public int getID_CITA() {
        return ID_CITA;
    }

    public String getFECHA() {
        return FECHA;
    }

    public String getHORA_INICIO() {
        return HORA_INICIO;
    }

    public String getHORA_FIN() {
        return HORA_FIN;
    }

    public int getCOD_DOCENTE() {
        return COD_DOCENTE;
    }

    public int getCOD_ALUMNO() {
        return COD_ALUMNO;
    }
}
