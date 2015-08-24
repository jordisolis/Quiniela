package com.jwt.struts.form;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class QuinielaRegisterForm extends ActionForm{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * LISTADOS DE COLUMNAS DE QUINIELA.
	 */
	private String filas;
	private String []  partido1;
	private String [] partido2;
	private String [] partido3;
	private String [] partido4;
	private String [] partido5;
	private String [] partido6;
	private String [] partido7;
	private String [] partido8;
	private String [] partido9;
	private String [] partido10;
	private String [] partido11;
	private String [] partido12;
	private String [] partido13;
	private String [] partido14;
	private String partido15L;
	private String partido15V;
	private int Aciertos;
	private String doblesmas;
	private String doblesmenos;
	
	
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		ActionErrors errors = new ActionErrors();
	
		//validamos que siempre se meta un resultado.
		ErrorSiVacio(errors);
		if(errors.size() < 1){
			ErrorSiMasSieteDobles(errors);
		}
		return errors;
	}

	private void ErrorSiMasSieteDobles(ActionErrors errors){
		
		int contador = 0;
		contador = contadordobles (partido1,contador);
		contador = contadordobles (partido2,contador);
		contador = contadordobles (partido3,contador);
		contador = contadordobles (partido4,contador);
		contador = contadordobles (partido5,contador);
		contador = contadordobles (partido6,contador);
		contador = contadordobles (partido7,contador);
		contador = contadordobles (partido8,contador);
		contador = contadordobles (partido9,contador);
		contador = contadordobles (partido10,contador);
		contador = contadordobles (partido11,contador);
		contador = contadordobles (partido12,contador);
		contador = contadordobles (partido13,contador);
		contador = contadordobles (partido14,contador);
		
			
		if (contador > 7){
			errors.add("doblesmas", new ActionMessage("error.doblesmas.required"));
		}
		else if(contador < 7){
			errors.add("doblesmenos", new ActionMessage("error.doblesmenos.required"));
		}
		if (contador !=7){
			errors.add("doblesko", new ActionMessage("error.doblesko.required"));
		}
		
	}
	
   //contador de dobles.
	private int contadordobles(String [] partidos,int contador){
		
		
		if(partidos.length > 1){
			contador ++;
		}
	
		
		return contador;
		
		
	}
	//Errores si no se seliona nada en alguna fila.
	private void ErrorSiVacio(ActionErrors errors) {
		if (partido1 == null || partido1.length < 1) {
			errors.add("partido1", new ActionMessage(
					"error.partido1.required"));

		}
		if (partido2 == null || partido2.length < 1) {
			errors.add("partido2", new ActionMessage("error.partido2.required"));

		}
		if (partido3 == null || partido3.length < 1) {
			errors.add("partido3", new ActionMessage("error.partido3.required"));

		}
		if (partido4 == null || partido4.length < 1) {
			errors.add("partido4", new ActionMessage("error.partido4.required"));

		}
		if (partido5 == null || partido5.length < 1) {
			errors.add("partido5", new ActionMessage("error.partido5.required"));

		}
		if (partido6 == null || partido6.length < 1) {
			errors.add("partido6", new ActionMessage("error.partido6.required"));

		}
		if (partido7 == null || partido7.length < 1) {
			errors.add("partido7", new ActionMessage("error.partido7.required"));

		}
		if (partido8 == null || partido8.length < 1) {
			errors.add("partido8", new ActionMessage("error.partido8.required"));

		}
		if (partido9 == null || partido9.length < 1) {
			errors.add("partido9", new ActionMessage("error.partido9.required"));

		}
		if (partido10 == null || partido10.length < 1) {
			errors.add("partido10", new ActionMessage("error.partido10.required"));

		}
		if (partido11 == null || partido11.length < 1) {
			errors.add("partido11", new ActionMessage("error.partido11.required"));

		}
		if (partido12 == null || partido12.length < 1) {
			errors.add("partido12", new ActionMessage("error.partido12.required"));

		}
		if (partido13 == null || partido13.length < 1) {
			errors.add("partido13", new ActionMessage("error.partido13.required"));

		}
		if (partido14 == null || partido14.length < 1) {
			errors.add("partido14", new ActionMessage("error.partido14.required"));

		}
		if (partido15L == null && partido15V.length() < 1) {
			errors.add("partido15", new ActionMessage("error.partido15.required"));

		}
		
	}
	
	//Errores si no se seliona nada en alguna fila.
		private void ErrorTriple(ActionErrors errors) {
			if (partido1.length > 2) {
				errors.add("partido1", new ActionMessage(
						"error.partido1.triple"));

			}
			if (partido2.length > 2) {
				errors.add("partido2", new ActionMessage("error.partido2.triple"));

			}
			if (partido3.length > 2) {
				errors.add("partido3", new ActionMessage("error.partido3.triple"));

			}
			if (partido4.length > 2) {
				errors.add("partido4", new ActionMessage("error.partido4.triple"));

			}
			if (partido5.length > 2) {
				errors.add("partido5", new ActionMessage("error.partido5.triple"));

			}
			if (partido6.length > 2) {
				errors.add("partido6", new ActionMessage("error.partido6.triple"));

			}
			if (partido7.length > 2) {
				errors.add("partido7", new ActionMessage("error.partido7.triple"));

			}
			if (partido8.length > 2) {
				errors.add("partido8", new ActionMessage("error.partido8.triple"));

			}
			if (partido9.length < 2) {
				errors.add("partido9", new ActionMessage("error.partido9.triple"));

			}
			if (partido10.length < 2) {
				errors.add("partido10", new ActionMessage("error.partido10.triple"));

			}
			if (partido11.length < 2) {
				errors.add("partido11", new ActionMessage("error.partido11.required"));

			}
			if (partido12.length < 2) {
				errors.add("partido12", new ActionMessage("error.partido12.required"));

			}
			if (partido13.length < 2) {
				errors.add("partido13", new ActionMessage("error.partido13.required"));

			}
			if (partido14.length < 2) {
				errors.add("partido14", new ActionMessage("error.partido14.required"));

			}
			if (partido15V.length() < 2) {
				errors.add("partido15", new ActionMessage("error.partido15.required"));

			}
			if (partido15L.length() > 1){
				errors.add("partido15Lmas", new ActionMessage("error.partido15Lmas.required"));
			}
			if (partido15V.length() > 1){
				errors.add("partido15Vmas", new ActionMessage("error.partido15Vmas.required"));
			}
		}
	
	
	public String[] getPartido2() {
		return partido2;
	}

	public void setPartido2(String[] partido2) {
		this.partido2 = partido2;
	}

	public String[] getPartido3() {
		return partido3;
	}

	public void setPartido3(String[] partido3) {
		this.partido3 = partido3;
	}

	public String[] getPartido4() {
		return partido4;
	}

	public void setPartido4(String[] partido4) {
		this.partido4 = partido4;
	}

	public String[] getPartido5() {
		return partido5;
	}

	public void setPartido5(String[] partido5) {
		this.partido5 = partido5;
	}

	public String[] getPartido6() {
		return partido6;
	}

	public void setPartido6(String[] partido6) {
		this.partido6 = partido6;
	}

	public String[] getPartido7() {
		return partido7;
	}

	public void setPartido7(String[] partido7) {
		this.partido7 = partido7;
	}

	public String[] getPartido8() {
		return partido8;
	}

	public void setPartido8(String[] partido8) {
		this.partido8 = partido8;
	}

	public String[] getPartido9() {
		return partido9;
	}

	public void setPartido9(String[] partido9) {
		this.partido9 = partido9;
	}

	public String[] getPartido10() {
		return partido10;
	}

	public void setPartido10(String[] partido10) {
		this.partido10 = partido10;
	}

	public String[] getPartido11() {
		return partido11;
	}

	public void setPartido11(String[] partido11) {
		this.partido11 = partido11;
	}

	public String[] getPartido12() {
		return partido12;
	}

	public void setPartido12(String[] partido12) {
		this.partido12 = partido12;
	}

	public String[] getPartido13() {
		return partido13;
	}

	public void setPartido13(String[] partido13) {
		this.partido13 = partido13;
	}

	public String[] getPartido14() {
		return partido14;
	}

	public void setPartido14(String[] partido14) {
		this.partido14 = partido14;
	}



	public QuinielaRegisterForm () {
		
		init();
	}
	
	protected void init() {
		partido1 = new String [] {""};
		
	}
	

	public String [] getPartido1() {
		return partido1;
	}
	public void setPartido1(String [] partido1) {
		this.partido1 = partido1;
	}

	public int getAciertos() {
		return Aciertos;
	}

	public void setAciertos(int aciertos) {
		Aciertos = aciertos;
	}

	public String getFilas() {
		return filas;
	}

	public void setFilas(String filas) {
		this.filas = filas;
	}

	public String getDoblesmas() {
		return doblesmas;
	}

	public void setDoblesmas(String doblesmas) {
		this.doblesmas = doblesmas;
	}


	public String getDoblesmenos() {
		return doblesmenos;
	}

	public void setDoblesmenos(String doblesmenos) {
		this.doblesmenos = doblesmenos;
	}

	public String getPartido15L() {
		return partido15L;
	}

	public void setPartido15L(String partido15l) {
		partido15L = partido15l;
	}

	public String getPartido15V() {
		return partido15V;
	}

	public void setPartido15V(String partido15v) {
		partido15V = partido15v;
	}


	
}
