package com.jsr.struts.form;

public class ColumnaQuinielaForm {

	private String equipoloc;
	private String equipovis;
	private String numColumna;
	private String resultado;
	private String jornada;
	
	
	
/**
 * Constructor.
 * @param equipoloc
 * @param equipovis
 * @param numColumna
 * @param resultado
 */
	public ColumnaQuinielaForm(String equipoloc, String equipovis,
			String numColumna, String resultado) {
		super();
		this.equipoloc = equipoloc;
		this.equipovis = equipovis;
		this.numColumna = numColumna;
		this.resultado = resultado;
	}
	
	public ColumnaQuinielaForm(){
		
		super();
	}
	
	public String getEquipoloc() {
		return equipoloc;
	}
	public void setEquipoloc(String equipoloc) {
		this.equipoloc = equipoloc;
	}
	public String getEquipovis() {
		return equipovis;
	}
	public void setEquipovis(String equipovis) {
		this.equipovis = equipovis;
	}
	public String getNumColumna() {
		return numColumna;
	}
	public void setNumColumna(String numColumna) {
		this.numColumna = numColumna;
	}
	public String getResultado() {
		return resultado;
	}
	public void setResultado(String resultado) {
		this.resultado = resultado;
	}

	/**
	 * @return the jornada
	 */
	public String getJornada() {
		return jornada;
	}

	/**
	 * @param jornada the jornada to set
	 */
	public void setJornada(String jornada) {
		this.jornada = jornada;
	}
	
	
}
