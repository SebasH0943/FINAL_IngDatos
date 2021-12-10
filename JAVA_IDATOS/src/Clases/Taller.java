/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author User
 */
public class Taller {
    private int ID_TALLER;
    private String FECHA;
    private String HORA_INICIO;
    private String HORA_FIN;
    private int COD_DOCENTE;

    public Taller(int ID_TALLER, String FECHA, String HORA_INICIO, String HORA_FIN, int COD_DOCENTE) {
        this.ID_TALLER = ID_TALLER;
        this.FECHA = FECHA;
        this.HORA_INICIO = HORA_INICIO;
        this.HORA_FIN = HORA_FIN;
        this.COD_DOCENTE = COD_DOCENTE;
    }

    public int getID_TALLER() {
        return ID_TALLER;
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
    
    
}
