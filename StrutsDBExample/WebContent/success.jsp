<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Hashtable"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success page</title>
</head>
<body bgcolor="silver">
<table border="2"><tr>
sucessfully added</tr><br><br>
<%=session.getAttribute("firstName") %><br><br>
<%=session.getAttribute("lastName") %><br><br>
<%=session.getAttribute("userName") %><br><br>
<%=session.getAttribute("email") %><br><br>
<%=session.getAttribute("phone") %><br><br>
<th> Has acertado en la quiniela:</th>

<%-- <%
	    List aciertos = new ArrayList ();
		aciertos = (List) session.getAttribute("aciertos") ;
%>	
 <%	for(int i = 0; i < aciertos.size();i++){%>

<tr>	
		<td><%=aciertos.get(i)%></td>

			
</tr>
 <%	} %> --%>


<%
		Hashtable htcontadoraciertos;
		htcontadoraciertos = (Hashtable) session.getAttribute("aciertos") ;
		Enumeration element = htcontadoraciertos.keys();
		while(element.hasMoreElements() ){%>
			
	<tr>	
		<td>	
		
		<% 
			Object clave = element.nextElement();
			int aciertos =(Integer) clave;
		 	int contador = (Integer) htcontadoraciertos.get(clave);%>
			
			<%=contador %>              de
			
	</td>
	<td>
		<%=aciertos %>
	</td>
			
</tr>		
			 <% } %>
		
		
		
</table>
</body>
</html>