<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" media="all"
	href="<%=request.getContextPath()%>/recursos/css/comun.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Comprobacion</title>
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
										<li><a
											href="/StrutsDBExample/Inicio.html?metodo=estadisticas"
											rel="nofollow">Estadisticas</a>
										<li><a
											href="/StrutsDBExample/Inicio.html?metodo=quiniela"
											rel="nofollow">Quiniela</a></li>
									</ul>
								</div>
							</div>
						</div>
						<h1>COMPROBACION A CUANTO TE REDUCE:</h1>
						<p>selecciona una jornada:</p> 
						<select name="jornadas" title="jornadas">
							<option value="0" selected="true">(Selecciona una opcion:)</option>
							<option value="J1">Jornada 1</option>
							<option value="J2">Jornada 2</option>
							<option value="J3">Jornada 3</option>
							<option value="J4">Jornada 4</option>
						</select>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>