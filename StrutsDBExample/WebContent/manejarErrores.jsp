<%@page import="java.util.Iterator"%>
<%@page import="org.apache.struts.taglib.TagUtils"%>
<%@page import="org.apache.struts.action.ActionMessages"%>
<%@page import="org.apache.struts.Globals"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-nested" prefix="nested"%>


<script type="text/javascript">
      //<![CDATA[
       var contextPath = '<%=request.getContextPath()%>';
       var altoDialogos = 'auto';
                
       var textos = {
          aceptar: "aceptar",
          cancelar: "cancelar",
          cerrar: "cerrar",
          salir: "salir",
          si: "si",
          no: "no",
          informacion: "informacion",
          confirmacion: "confirmacion",
          error: "error",
          errorValidacion : "errorValidacion",
          errorFatal:"fatal",
          noHayRegistros: "etqNoHayRegistros",
          noHayRegistroSeleccionado: "etqNoHayRegistroSeleccionado",
          nuevo: "nuevo",
          volver: "volver",
          consultar: "consultar",
          grabar: "grabar",
          modificar:"modificar",
          aniadir:"aniadir",
          confirmar:"confirmar",
          borrar:"borrar",
          validandoFichero:"validandoFichero",
          defaultDialogEnviandoPeticion:"realizandoOperacion",
          errorSessionTimeOut:".timeout",
          exporta:"Exportando" <%-- Internacionalizar --%>
      };
      
      <%--
        Muestra de mensajes/errores en invocaciones ajax.
      --%>
      function showErrorOrMessage(resultado, funcion) {
          
          if(null != resultado){
              
              if(null != resultado.validacion){
                  var textoName = resultado.validacion;
                  
                  if(typeof resultado.validacion == "string"){
                      
                      <%-- Formateamos los caracteres para que entienda [ y ] --%>
                      textoName = textoName.replace(/\./g, '\\.');
                      textoName = textoName.replace(/\[/g, '\\[');
                      textoName = textoName.replace(/\]/g, '\\]');
                      
                      $('input:text[name="' + textoName + '"]').each(function(){
                          $(this).removeClass('conBorde');
                          $(this).addClass('conBordeError');
                      });
                      
                      $('textarea[name="' + textoName + '"]').each(function(){
                          $(this).removeClass('conBorde');
                          $(this).addClass('conBordeError');
                      });
                  }
              }
              
              if(null != resultado.errores){
                  //mostramos los errores
                  var textoErrores = resultado.errores;
                  if(typeof resultado.errores != "string"){
                      textoErrores = obtenerTextoDesdeArray (resultado.errores);
                  }
                  alertaError(textoErrores, funcion);
                  
                  return true;
              }
              
              if(null != resultado.mensajes){
                  //mostramos los mensajes
                  var textoMensajes = resultado.mensajes;
                  if(typeof resultado.mensajes != "string"){
                      textoMensajes = obtenerTextoDesdeArray (resultado.mensajes);
                  }
                  alertaInfo(textoMensajes, funcion);
                  
                  return true;
              }
          }
          
          return false;
      }
      
      //]]>
    </script>
    
    <%-- Mostramos los errores de validacion mediante ventana modales --%>
    <logic:messagesPresent>
        <%
            // Tratamiento para setear el foco en la propiedad de error
            String errorKey = Globals.ERROR_KEY;
            ActionMessages errors = TagUtils.getInstance()
                    .getActionMessages(pageContext, errorKey);
            
            Iterator iter = errors.properties();
            StringBuffer sbProp  = new StringBuffer();
            
            while (iter.hasNext()) {
            	sbProp.append((String) iter.next());
            	sbProp.append(",");
            } 
         %> 

        <%-- 
            - Iterar todos los errores, presentes en el objeto actionErrors.
            - Identificamos los campos a los que pertenecen esos errores y 
            marcamos automáticamente en rojo, todos los campos erróneos.
            - El foco lo obtenedrá por defecto siempre el primer campo.
        --%>

        <script type="text/javascript">
        $(document).ready(function() {          

            var html = "<html:errors bundle='errores'/>";
            alertaError(html, function(){
                var allProps = '<%=sbProp.toString()%>';
                var lstProps = allProps.split(",");

                for(var i = 0; i < (lstProps.length-1); i++ ){
                	 
                	 var objJS = document.getElementById(lstProps[i]);
                	 var objJQ = $("#" + lstProps[i]);
                	 
                	 if ((undefined != objJS) && (objJS.type != 'hidden')) {
   
                		 // Combos
                         if (objJQ.hasClass('combo')) {
                             objJQ.parent().removeClass('conBorde');
                             objJQ.parent().addClass('conBordeError');
                         };
                         
                		 // Campos
                         if (objJQ.hasClass('conBorde')) {
                        	 objJQ.removeClass('conBorde');
                        	 objJQ.addClass('conBordeError');
                         };
                	 };
                }
                
                // Poner el foco en la última
                var objJS = document.getElementById(lstProps[0]);
                if (undefined != objJS)  {
                    document.getElementById(lstProps[0]).focus();
                } 
            });     
        });
        </script>
    </logic:messagesPresent>

    <%-- 
       Mostramos los mensajes mediante ventana modal.
       Definimos las alertas previamente al contenido propio de la jsp 
       y una vez se encuentre cargada el resto de la pantalla con el fin 
       de poder sobreescribir la funcionalidad en caso de necesidad. 
    --%>
    <logic:messagesPresent message="true">
        <script type="text/javascript">
            $(document).ready(function() {
                var html = "<html:messages id='message' message='true'>";
                html    += "<bean:write name='message'/>";
                html    += "</html:messages>";
                alertaInfo(html, null);
            });
        </script>
    </logic:messagesPresent>