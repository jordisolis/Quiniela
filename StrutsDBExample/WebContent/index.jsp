<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Pagina Inicio</title>
	<script type="text/javascript">

		function submitFormQuiniela() {	
    		document.forms[0].action = "Index.html?metodo=quiniela";
			document.forms[0].submit(); 	
    	}
    
		function submitFormRegistro() {
			document.forms[0].action = "Index.html?metodo=registro";
			document.forms[0].submit();
		}
	
		function submitFormLogin() {
			document.forms[0].action = "Index.html?metodo=login";
			document.forms[0].submit();
		}
	
		hoje = new Date();
		numero_de_imagens = 2;
		segundos = hoje.getSeconds();
		numero = segundos % numero_de_imagens;
		if (numero == 0){
			banner = "recursos/img/marca.jpg";
			link = "http://marca.com";
			alvo = "_self";
		}
		if (numero == 1){
			banner = "recursos/img/as.jpg";
			link = "http://as.com";
			alvo = "_self";
		}
		document.write('<a href="' + link + '" target="' + alvo + '" ><img src="' + banner + '" border=0></a><br><br>');
	
	
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
<html:form action="/Index">
<H1>PAGINA INICIO</H1>

	<html:submit value="Registro Quiniela" onclick="submitFormQuiniela()"></html:submit>
	
	<html:submit value="Registro" onclick="submitFormRegistro()"></html:submit>

	<html:submit value="Login" onclick="submitFormLogin()"></html:submit>

</html:form>
</body>
</html>