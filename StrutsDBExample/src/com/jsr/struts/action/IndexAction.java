package com.jsr.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
/**
 * 
 * @author jordisolis
 *
 */
public class IndexAction extends DispatchAction{

	
	public ActionForward login(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

		return mapping.findForward("login");
	}
	
	public ActionForward registro(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

		return mapping.findForward("registro");
	}
	
	public ActionForward quiniela(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

		return mapping.findForward("quiniela");
	}



	
	
}
