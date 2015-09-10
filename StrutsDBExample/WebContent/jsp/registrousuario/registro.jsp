<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-html" prefix="html" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Registro</title>
	<script type="text/javascript"  src="recursos/js/jquery-1.4.4.min.js"></script>
	<link rel="stylesheet" type="text/css" media="all" href="<%=request.getContextPath()%>/recursos/css/registro.css"/>
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

<br></br>
<body>
	<div class="w1">
		<div class="w2">
			<div class="w3">
				<div id="wrapper">
					<div class="wrapper-holder">
						<div id="header">
							<div class="header-holder">
								<strong class="logo"> <a title="Inicio"
									href="/">Quiniela Peña Solis</a>
								</strong>
								<div class="big_banner">
									<script type="text/javascript">
										hoje = new Date();
										numero_de_imagens = 2;
										segundos = hoje.getSeconds();
										numero = segundos % numero_de_imagens;
										if (numero == 0) {
											banner = "recursos/img/marca.jpg";
											link = "http://marca.com";
											alvo = "_self";
										}
										if (numero == 1) {
											banner = "recursos/img/as.jpg";
											link = "http://as.com";
											alvo = "_self";
										}
										document
												.write('<a href="' + link + '" target="' + alvo + '" ><img src="' + banner + '" border=0></a><br><br>');
									</script>

								</div>
							</div>
						</div>
						<div class="section">
							<div class="section-holder">
								<div class="section-frame">
									<ul id="nav">
										<li><a href="/StrutsDBExample">Inicio</a></li>
										<li><a
											href="/StrutsDBExample/Index.html?metodo=login"
											rel="nofollow">Login</a>							
									</ul>
								</div>
							</div>
						</div>
						<div style="color: red">
							<html:errors />
						</div>
						<div class="registro">	
						<html:form action="/Registro" method="get">
							<fieldset style="height: 300px; width: 600px;">
								<h1>REGISTRO DE USUARIO:</h1>
									<table>
										<tr>
											<td>Nombre Usuario:</td>
											<td><html:text property="userName" size="50"
													styleClass="conBorde"
													errorStyleClass="literal conBorde conBordeError" /></td>
										</tr>
										<br>
										<tr>
											<td>Password:</td>
											<td><html:password property="password" size="30"
													styleClass="conBorde"
													errorStyleClass="conBorde conBordeError" /></td>
										</tr>
										<br>
										<tr>
											<td>Repite Password:</td>
											<td><html:password property="repassword" size="30"
													styleClass="conBorde"
													errorStyleClass="conBorde conBordeError" /></td>
										</tr>
										<br>
										<tr>
											<td>Email:</td>
											<td><html:text property="email" size="30"
													styleClass="conBorde"
													errorStyleClass="conBorde conBordeError" /></td>
										</tr>
									</table>
								</fieldset>
							<%-- <html:submit >Envia</html:submit> --%>
							<input class="botoncontacto" id="boton-registro" type="submit"
								name="submitButtonName" value="Registrar" >
							<br>
							<br>
						</html:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<script type="text/javascript">
$(document).ready(function() {
	$(id("boton-registro")).click(EnvioForm);

});




function EnvioForm(){
	if($(id("userName")).val() == ""){
		$(id(partido)).addClass('conBordeError');
	}
	
	if($(id("password")).val() == ""){
		$(id(partido)).addClass('conBordeError');
	}
	
	if($(id("repassword")).val() == ""){
		$(id(partido)).addClass('conBordeError');
	}
	
	if($(id("email")).val() == ""){
		$(id(partido)).addClass('conBordeError');
	}
	
}




</script>
</html>
