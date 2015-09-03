<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" type="text/css" media="all" href="recursos/css/login.css"  />
	<title>Registro</title>
	<script type="text/javascript"  src="recursos/js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript">
	 $(document).ready(function() {
		  
		   $("#boton-registro").click(submitRegister);
	        
	  });
	 
	function submitRegister(){
		
		var r = confirm("¿Estas seguro qu quieres registrarte?");
		if (r == true) {
		  
		    document.forms[0].submit();
		} 
		
		
	}

		</script>
	
</head>
<body bgcolor="silver">
	<br></br>
	<body>
		<html:html>
    		<div style="color:red">
    			<html:errors />
    		</div>
    		
		<html:form action="/Registro" method="get">
		<fieldset style="height:400px;width:800px;">
			<h1>REGISTRO DE USUARIO:</h1>
			<table>
				<tr>
					<td>		
						Nombre Usuario:
					</td>
					<td>
						<html:text property="userName" size="50" />
					</td>
				</tr>
				<br>
				<tr>
					<td>		
						Password:
					</td>
					<td>	
						<html:password property="password" size="30" />
					</td>
				</tr>
				<br>
				<tr>
					<td>		
						 Repite Password:
					</td>
					<td>	
						<html:password property="repassword" size="30" />
					</td>
				</tr>
				<br>
				<tr>
					<td>		
						Email:
					</td>
					<td>	
						<html:text property="email" size="30" />
					</td>
				</tr>		
			</table>
			</fieldset>	
			<%-- <html:submit >Envia</html:submit> --%>
			<input class="botoncontacto" id="boton-registro" type="submit" name="submitButtonName" value="">
			<br><br>
		</html:form>
	</html:html>
</body>
</html>