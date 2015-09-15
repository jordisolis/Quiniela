package com.jsr.struts.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.jsr.struts.core.util.ConexionQuiniela;
import com.jsr.struts.form.ColumnaQuinielaForm;

public class InicioAction  extends DispatchAction{

	public ActionForward quiniela(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
 
		
//        LoginForm loginForm = (LoginForm) form;
      HttpSession ses = request.getSession(true);
      List<ColumnaQuinielaForm> columna = null;
//      ColumnaQuinielaForm object1 = new  ColumnaQuinielaForm("EQUIPO_L1","EQUIPO_V1","1","1");
//      ColumnaQuinielaForm object2 = new  ColumnaQuinielaForm("EQUIPO_L2","EQUIPO_V2","2","1");
//      ColumnaQuinielaForm object3 = new  ColumnaQuinielaForm("EQUIPO_L3","EQUIPO_V3","3","1");
//      ColumnaQuinielaForm object4 = new  ColumnaQuinielaForm("EQUIPO_L4","EQUIPO_V4","4","1");
//      ColumnaQuinielaForm object5 = new  ColumnaQuinielaForm("EQUIPO_L5","EQUIPO_V5","5","1");
//      columna.add(object1);
//      columna.add(object2);
//      columna.add(object3);
//      columna.add(object4);
//      columna.add(object5);
      ConexionQuiniela conequini = new ConexionQuiniela();
      columna=conequini.conexionquinielaPronostico();
      ses.setAttribute("pintarquini", columna);
	return mapping.findForward("quiniela");
	}

	
	
	public ActionForward estadisticas(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
		
		return mapping.findForward("estadisticas");
	}
	
	public ActionForward comprobar(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
	      HttpSession ses = request.getSession(true);
	      List<ColumnaQuinielaForm> columna = null;
	      ConexionQuiniela conequini = new ConexionQuiniela();
	      columna=conequini.conexionquinielaResultados();
	      ses.setAttribute("pintarquini", columna);
		return mapping.findForward("comprobar");
	}
	
	
	
}
