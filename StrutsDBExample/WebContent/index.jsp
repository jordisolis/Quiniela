<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" type="text/css" media="all" href="recursos/css/comun.css"  />
	<title>Pagina Inicio</title>
	<script type="text/javascript">
	<!-- 
		today = new Date();
		if(today.getMinutes() < 10){
			pad = "0";
		}
		else
			pad = "";
			document.write ;if((today.getHours() >=6) && (today.getHours() <=9)){
			document.write("¡Buen día!");
		}
		if((today.getHours() >=10) && (today.getHours() <=14)){
			document.write("¡Buen día!");
		}
		if((today.getHours() >=14) && (today.getHours() <=19)){
			document.write("¡Buenas tardes!");
		}
		if((today.getHours() >=20) && (today.getHours() <=23)){
			document.write("¡Buenas noches!");
		}
		if((today.getHours() >=0) && (today.getHours() <=3)){
			document.write("¡Buenas noches!");
		}
		if((today.getHours() >=4) && (today.getHours() <=5)){
			document.write("¡Buenas noches!<br><br><br><br><br>");
		}
		// --> 
	
	
	</script>

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
										<li><a href="/StrutsDBExample/Index.html?metodo=registro" rel="nofollow">Registro</a>
										<li><a href="/StrutsDBExample/Index.html?metodo=login" rel="nofollow">Login</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						
							<H1>PAGINA INICIO</H1>							
				
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>