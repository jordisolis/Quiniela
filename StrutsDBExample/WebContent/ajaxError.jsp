<%@page import="com.jsr.struts.core.util.PropertiesUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
{
    "respuesta": "ERROR"
    
<%--     <logic:messagesPresent name="errorNoSession">,
        "tipoError": "errorNoSession",
        "descripcion": "<html:errors name="errorNoSession"/>",
        "loginPage": "<%=PropertiesUtil.getConfigProperties("urlFinSession") %>"
    </logic:messagesPresent> --%>
    
    <logic:messagesPresent name="fatalError">,
	    "tipoError": "Error",
	    "descripcion": "<bean:message key="error.cabecera" bundle="errores"/>",
	    "errores": [""<html:messages id="error" name="fatalError">,"Aerrr"</html:messages>]
    </logic:messagesPresent>
    
    <logic:messagesPresent name="applicationError">,
	    "tipoError": "Error",
	    "descripcion": "<bean:message key="error.cabecera" bundle="errores"/>",
	    "errores": [""<html:messages id="error" name="applicationError">,"Berrr"</html:messages>]
    </logic:messagesPresent>
    
    <logic:messagesPresent >,
	    "tipoError": "Error",
	    "descripcion": "<bean:message key="error.cabecera" bundle="errores"/>",
	    "errores": [""<html:messages id="error">,"Cerrr"</html:messages>]
    </logic:messagesPresent>

}

