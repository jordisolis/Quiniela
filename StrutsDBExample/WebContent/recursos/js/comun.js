/**
 * creado por Jordisolis.
 */
function mostrarAlertaCargando(textDialog) {
	if( textDialog == undefined || textDialog == null || textDialog == "") {
		textDialog = textos.defaultDialogEnviandoPeticion;
	}

	$("#contenido-image-loading").html("<img alt='' src='recursos/img/loading.gif' height='30' width='30'/>");
	
	$("#contenido-dialog-loading").html(textDialog);
    var opciones = {
            bgiframe: true,
            modal: true,
            draggable: false,
            resizable: false,
            closeOnEscape: false,
            height:150,
            open: function(event, ui) {$(".ui-dialog-titlebar-close", $(this).parent()).hide();}
    };
    
    
    $("#dialog-loading").dialog(opciones);
}

function ocultarAlertaCargando() {
	$("#dialog-loading").dialog("close");
}

function alertaError(texto, funcion) {
    _alerta("dialog-error", textos.error, texto, funcion);
}

function alertaInfo(texto, funcion) {
    _alerta("dialog-info", textos.informacion, texto, funcion);
}

function alerta(texto, funcion) {
    _alerta("dialog-modal", "", texto, funcion);
}