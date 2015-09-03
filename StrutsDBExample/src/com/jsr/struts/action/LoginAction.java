
package com.jsr.struts.action;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;

import com.jsr.struts.dao.LoginDAO;
import com.jsr.struts.form.ColumnaQuinielaForm;
import com.jsr.struts.form.LoginForm;




/**
 *
 * @author jordisolis
 */
public class LoginAction extends Action {

    /* forward name="success" path="" */
    private final static String Init = "Inicio";
    private final static String FAILURE = "failure";
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        LoginForm loginForm = (LoginForm) form;
        
//        LoginDAO login = new LoginDAO();
//        if(login.login(loginForm.getUserName(), loginForm.getPassword())){
//        	return mapping.findForward(Init);
//        }
//        else{
//        	return mapping.findForward(FAILURE);
//        }

        if (loginForm.getUserName().equals(loginForm.getPassword())) {
            
        	
//        	ses.setAttribute("pintarquini", columna);
        	return mapping.findForward(Init);
            
            
            
        } else {
            return mapping.findForward(FAILURE);
        }
    }
}
