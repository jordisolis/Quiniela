package com.jwt.struts.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class UserRegisterForm extends ActionForm {

	private static final long serialVersionUID = 1L;
	private String repassword;
	private String userName;
	private String password;
	private String email;

	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		ActionErrors errors = new ActionErrors();
			
		if (repassword == null  || repassword.length() < 1) {
			errors.add("repassword", new ActionMessage("error.repassword.required"));

		}
		if (userName == null || userName.length() < 1) {
			errors.add("userName", new ActionMessage("error.userName.required"));

		}
		if (password == null || password.length() < 1) {
			errors.add("password", new ActionMessage("error.password.required"));

		}
		if (email == null || email.length() < 1) {
			errors.add("email", new ActionMessage("error.email.required"));

		}
		if(!password.equals(repassword)){
			errors.add("repassword", new ActionMessage("error.noiguales.required"));
		}
	
		return errors;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}


}
