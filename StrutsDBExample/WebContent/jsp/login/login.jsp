<%-- 
    Document   : login
    Author     : jordisolis@gmail.com
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
        
        
    </head>
    <body>
        	<div style="color:red">
            	<html:errors />
        	</div>
        	<p>El reloj...</p>
			<form name="Reloj">
				<input type="text" size="7" name="tiempo" value="mm:hh:ss" title="Tiempo restante para finalizar el día">
				 <script language="JavaScript">
        <!--
					var tiempoAtras;

					updateReloj();
					function updateReloj() {
						var tiempo = new Date();
						var hora = 23-tiempo.getHours();
						var minutos = 59-tiempo.getMinutes();
						var segundos = 59-tiempo.getSeconds();

						tiempoAtras= (hora < 10) ? hora :hora;
						tiempoAtras+= ((minutos < 10) ? ":0" : ":") + minutos;
						tiempoAtras+= ((segundos < 10) ? ":0" : ":") + segundos;

						document.Reloj.tiempo.value = tiempoAtras;

						setTimeout("updateReloj()",1000);
					}
					// --> 	
		</script> 
			</form>
        	<html:form action="/Login" method="get">
            	User Name : <html:text name="LoginForm" property="userName" /> <br>
            	Password  : <html:password name="LoginForm" property="password" /> <br>
            	<html:submit value="Login" />
        	</html:form>
    </body>
</html>
