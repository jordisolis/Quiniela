<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>


{
    "respuesta": "OK"
    <logic:present name="ajaxMap">
        <logic:iterate id="ajaxMapItem" name="ajaxMap">
            ,
            "<bean:write name="ajaxMapItem" property="key"/>":
            <bean:write name="ajaxMapItem" property="value" filter="false"/>
        </logic:iterate>
    </logic:present>
}
