<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
	<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Página de inicio.</title>
<link rel="stylesheet" type="text/css" media="all" href="recursos/css/comun.css"  />
<link rel="stylesheet" type="text/css" media="all" href="recursos/css/jquery-ui-1.8.9.custom.css"  />
<script type="text/javascript"  src="recursos/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript"  src="recursos/js/jquery.bgiframe.min.js"></script>
<script type="text/javascript"  src="recursos/js/jquery.form.js"></script>
<script type="text/javascript"  src="recursos/js/ajax.js"></script>
<script type="text/javascript"  src="recursos/js/jquery.form.js"></script>
<script type="text/javascript"  src="recursos/js/jquery-ui-1.8.9.custom.min.js"></script>
<script type="text/javascript"  src="recursos/js/comun.js"></script>
<link rel="stylesheet" type="text/css" media="all" href="<%=request.getContextPath()%>/recursos/css/comun.css"/>


</head>
<body>
	<div class="w1">
		<div class="w2">
			<div class="w3">
				<div id="wrapper">
					<div class="wrapper-holder">
						<div id="header">
							<div class="header-holder">
								<strong class="logo"> <a title="Inicio Quiniela 15"
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
										<li><a href="/StrutsDBExample/Inicio.html?metodo=estadisticas"
											rel="nofollow">Estadisticas</a>
										<li><a href="/StrutsDBExample/Inicio.html?metodo=quiniela"
											rel="nofollow">Registro</a></li>
									</ul>
								</div>
							</div>
						</div>
						<html:form action="/Inicio">
							<H1>PAGINA INICIO</H1>



							<input type="button" value="Estadisticas" id="boton-estadisticas" />

							<%	String  desabilitar ;
			desabilitar	= (String) session.getAttribute("habilitar_boton");
		if(desabilitar != null)	{	
			if(desabilitar.equals("false")){
		%>
							<input type="button" value="Comprobar Quiniela" id="comQuiniela" />

							<jsp:include page="popupComQuiniela.jsp" />

							<%}
		}else{%>

							<input type="button" value="Registro Quiniela"
								id="boton-registroquini" />

							<%}%>

							<jsp:include page="manejarErrores.jsp" />

						</html:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="dialog-loading" title="enviando" style="display: none;">
		<table>
			<tr>
				<td>
					<div id="contenido-image-loading">
						<img alt="" src="recursos/img/loading.gif" height='30' width='30' />
					</div>
				</td>
				<td><div id="contenido-dialog-loading"></div></td>
			</tr>
		</table>
	</div>

</body>
</html>