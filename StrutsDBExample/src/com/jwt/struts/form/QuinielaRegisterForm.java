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
	private String [] partido15;
	private int Aciertos;
	
	
	
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		ActionErrors errors = new ActionErrors();
		if (partido1 == null || partido1.length < 1) {
			errors.add("partido1", new ActionMessage(
					"error.firstName.required"));

		}
		if (partido2 == null || partido2.length < 1) {
			errors.add("partido2", new ActionMessage("error.lastName.required"));

		}
		if (partido3 == null || partido3.length < 1) {
			errors.add("partido3", new ActionMessage("error.userName.required"));

		}
		if (partido4 == null || partido4.length < 1) {
			errors.add("partido4", new ActionMessage("error.password.required"));

		}
		if (partido5 == null || partido5.length < 1) {
			errors.add("partido5", new ActionMessage("error.email.required"));

		}
		if (partido6 == null || partido6.length < 1) {
			errors.add("partido6", new ActionMessage("error.phone.required"));

		}
		if (partido7 == null || partido7.length < 1) {
			errors.add("partido7", new ActionMessage("error.phone.required"));

		}
		if (partido8 == null || partido8.length < 1) {
			errors.add("partido8", new ActionMessage("error.phone.required"));

		}
		if (partido9 == null || partido9.length < 1) {
			errors.add("partido9", new ActionMessage("error.phone.required"));

		}
		if (partido10 == null || partido10.length < 1) {
			errors.add("partido10", new ActionMessage("error.phone.required"));

		}
		if (partido11 == null || partido11.length < 1) {
			errors.add("partido11", new ActionMessage("error.phone.required"));

		}
		if (partido12 == null || partido12.length < 1) {
			errors.add("partido12", new ActionMessage("error.phone.required"));

		}
		if (partido13 == null || partido13.length < 1) {
			errors.add("partido13", new ActionMessage("error.phone.required"));

		}
		if (partido14 == null || partido14.length < 1) {
			errors.add("partido14", new ActionMessage("error.phone.required"));

		}
		if (partido15 == null || partido15.length < 1) {
			errors.add("partido15", new ActionMessage("error.phone.required"));

		}
		return errors;
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

	public String[] getPartido15() {
		return partido15;
	}

	public void setPartido15(String[] partido15) {
		this.partido15 = partido15;
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


	
}
