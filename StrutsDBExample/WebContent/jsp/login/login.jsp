<%-- 
    Document   : login
    Author     : jordisolis@gmail.com
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" type="text/css" media="all"
	href="<%=request.getContextPath()%>/recursos/css/login.css" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>



</head>
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
										<li><a href="/StrutsDBExample/Index.html?metodo=registro" rel="nofollow">Registro</a>
									</ul>
								</div>
							</div>
						</div>
						<div style="color: red">
							<html:errors />
						</div>
						<p>El reloj...</p>
						<form name="Reloj">
							<input type="text" size="7" name="tiempo" value="mm:hh:ss"
								title="Tiempo restante para finalizar el día">
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
						<div class="login">
							<fieldset style="height: 100px; width: 200px;">
							<html:form action="/Login" method="get">
            	User Name : <html:text name="LoginForm" property="userName" />
								<br>
            	Password  : <html:password name="LoginForm"
									property="password" />
								<br>
								<html:submit value="Login" />

							</html:form>
							</fieldset>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function() {
	$(id("boton-enviar")).click(EnvioForm);

});




function EnvioForm(){
	if($(id("userName")).val() == ""){
		$(id(partido)).addClass('conBordeError');
	}
	
	if($(id("password")).val() == ""){
		$(id(partido)).addClass('conBordeError');
	}
		
	
}




</script>
</html>
