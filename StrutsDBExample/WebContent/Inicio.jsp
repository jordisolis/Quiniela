<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
	<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Página de inicio.</title>
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

<html:form action="/Inicio">
<H1>PAGINA INICIO</H1>


	
	<input type="button" value="Estadisticas" id="boton-estadisticas" />

		<%	String  desabilitar ;
			desabilitar	= (String) session.getAttribute("habilitar_boton");
		if(desabilitar != null)	{	
			if(desabilitar.equals("false")){
		%>
			<input type="button" value="Comprobar Quiniela"
				 id="comQuiniela"/>
				
				<jsp:include page="popupComQuiniela.jsp" />
				
		<%}
		}else{%>
				
		<input type="button" value="Registro Quiniela" id="boton-registroquini"/>
				
			<%}%>



</html:form>
    <div id="dialog-loading" title="enviando" style="display:none;">
        <table>
            <tr>
                <td>
                    <div id="contenido-image-loading">
                        <img alt="" src="recursos/img/loading.gif" height='30' width='30'/>
                    </div>
                </td>
                <td><div id="contenido-dialog-loading"></div></td>
            </tr>
        </table>
    </div>
	<script type="text/javascript">
	
	  $(document).ready(function() {
		  
		   $("#boton-registroquini").click(submitRegisterQuiniela);
	        $("#boton-estadisticas").click(submitEstadisticas);
	  });
	

		function submitRegisterQuiniela() {	
    		document.forms[0].action = "Inicio.html?metodo=quiniela";
			document.forms[0].submit(); 	
    	}

		/* function submitComprobarQuiniela(){
			document.forms[0].action = "Inicio.html?metodo=comprobar";
			document.forms[0].submit(); 	
		} */
		
		function submitEstadisticas(){
			document.forms[0].action = "Inicio.html?metodo=estadisticas";
			document.forms[0].submit(); 
			
		}
		/*]]>*/
	</script>

</body>
</html>