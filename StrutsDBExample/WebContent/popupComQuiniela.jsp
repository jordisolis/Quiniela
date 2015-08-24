<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>

<style>
<!--
/*
 	table { 
 	    border-collapse:collapse; 
 	} 
 	table,th, td{ 
 	    border: 1px solid black; 
 	}
 	*/
-->
</style>   
       
<div id="dialog-detalle-pedido" 
     title="Aciertos"
     style="display:none; width: 1024px">
    <div class="capaConBorde" style="height: 50px;">
        <table>
            <tr>
                <td class="literal">
                    Nº QUINIELAS:
                </td>
                <td class="literal">
                    Nº ACIERTOS:
                </td>
               
            </tr>
            
            <tr>
                <td class="literal">
                    <!--  <input id="numQuiniela" type="text" 
                            class="literal conBorde" size="15" 
                            readonly="readonly"/> -->
                            5
                </td>

				<td class="literal">
				   <!--  <input id="numAciertos" type="text"
						   size="50" class="literal conBorde"
						   readonly="readonly"/> -->
						   13
                </td>
                
				
            </tr>
        </table>
    </div>


</div>

<script type="text/javascript">
  //<![CDATA[  

    $(document).ready(function() {
        $("#comQuiniela").click(showDetail); 
    });
    
    <%-- Función que muestra el detalle de un pedido seleccionado --%>
    function showDetail(){
        
       alert("hemos entrado");
        
        <%--
            Habilitamos el popup de detalle y cargamos los valores del registro
        --%>

      /*   var URL = '<html:rewrite action="Quiniela.html?operation=showPopup&ajax=true"/>'; */
        
        setTimeout(mostrarAlertaCargando("Cargando...."), 3000);  
        showPopup();
       /*   ajaxFormWithOutCargando("#quinielaRegisterForm", URL, function(callback) {
            if(!showErrorOrMessage(callback,null)) {
                showPopup(callback.resultados);
            }
        });  */
        ocultarAlertaCargando();
    }
    
    function showPopup(){ 
                        
    	<%-- Habilitamos el popup --%>
      /*   var botones = {};
        botones[textos.aceptar] = function() {
            $(this).dialog("close");
        };  */
        var opciones = {
                bgiframe: true,
                modal: true,
                title: "Quinielas acertadas",
                draggable: true,
                resizable: false,
            /*     buttons: botones, */
                minHeight: 'auto',
                height: 50, 
                width: 920
        };
        
        $("#dialog-detalle-pedido").dialog(opciones); 
  

        
        <%-- Cargamos los datos de la cabecera --%>
<%--         $(id("numPedidoHead")).val(j.numPedido);
        $(id("desTipoPedHead")).val(j.desTipoPed);

        Cargamos los datos del detalle
        $(id("codTipoPedDetail")).val(j.codTipoPed);
        $(id("desTipoPedDetail")).val(j.desTipoPed); --%>

        
        
    }
    
    //]]>
</script>