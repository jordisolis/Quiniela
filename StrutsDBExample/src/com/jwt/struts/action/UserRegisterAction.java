package com.jwt.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.jwt.struts.dao.UserRegisterDAO;
import com.jwt.struts.form.UserRegisterForm;
/**
 * 
 * @author jordisolis
 *
 */
public class UserRegisterAction extends Action {
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HttpSession ses = request.getSession(true);

		UserRegisterForm registerForm = (UserRegisterForm) form;
		String repassword = registerForm.getRepassword();
		String userName = registerForm.getUserName();
		String password = registerForm.getPassword();
		String email = registerForm.getEmail();
		UserRegisterDAO dao = new UserRegisterDAO();
		dao.insertData( userName, password, email);
	
		ses.setAttribute("userName", userName);
		ses.setAttribute("email", email);
		ses.setAttribute("password", password);
		if (userName.equals("")
				|| password.equals("") || email.equals("") || repassword.equals("")) {
			return mapping.findForward("error");
		}
		return mapping.findForward("login");

	}
}
