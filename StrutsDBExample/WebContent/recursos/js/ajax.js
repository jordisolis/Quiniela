// Llamada ajax estándar para la aplicación

// Uso 1: Envío de formulario por ajax
// ajaxForm("#id-del-formulario", "url-a-enviar", function(json) {
//        Aquí habría que poner la funcionalidad
//        que se quiere hacer una vez que se reciba el json
// });

// Uso 2: Petición ajax síncrona
// var json = ajax("url", {
//     param1: "valor1",
//     param2: "valor2"
// });

// Uso 3: Petición ajax asíncrona
// ajaxAsync("url", {
//     param1: "valor1",
//     param2: "valor2"
//     }, function() {
//        Aquí habría que poner la funcionalidad
//        que se quiere hacer una vez que se reciba el json
//     }
// );

var debug = false;

$.ajaxSetup({
    contentType: "application/x-www-form-urlencoded; charset=UTF-8"
});

function ajaxForm(form, accion, funcion) {
    var data = $(form).formSerialize();
    debugAjax(accion, data);
    mostrarAlertaCargando();
    var options = {
        type: "POST",
        url: accion,
        data: data,
        success: function(result) {
            gestionarJson(result, funcion);
        },
        error: function(jqXHR, textStatus, errorThrown) {
    		ocultarAlertaCargando();
    		alertaError(textos.errorFatal + "<br/>" + errorThrown);
        }
    };
   	$(form).ajaxSubmit(options);
}

// Sobrecargamos el ajaxForm para no ejecutar el popup 'cargando...'
function ajaxFormWithOutCargando(form, accion, funcion) {
    var data = $(form).formSerialize();
    debugAjax(accion, data);
    //mostrarAlertaCargando();
    var options = {
        type: "POST",
        url: accion,
        data: data,
        success: function(result) {
            gestionarJson(result, funcion);
        },
        error: function(jqXHR, textStatus, errorThrown) {
    		//ocultarAlertaCargando();
    		alertaError(textos.errorFatal + "<br/>" + errorThrown);
        }
    };
    $(form).ajaxSubmit(options);
}

function ajax(url, params) {
    debugAjax(url, params);
    var respuesta = $.parseJSON(bodyContent = $.ajax({
        url: url,
        type: "POST",
        data: params,
        async:false,
        success: function(result){
            gestionarJson(result, function() {});
        },
      error: function(jqXHR, textStatus, errorThrown) {
          ocultarAlertaCargando();
          alertaError(textos.errorFatal);
      }
    }).responseText);
    return respuesta;
}

/*Creo esta peticion ajax para la carga de fichero, pq las demas me ocultan los dialog de tablas actuacion, wizard*/
function ajaxWizard(url, params) {
	debugAjax(url, params);
	var respuesta = {};
	try {
		respuesta = $.parseJSON(bodyContent = $.ajax({
	        url: url,
	        type: "POST",
	        data: params,
	        async:false	        
	    }).responseText);
	}
	catch (e) {	}
    return respuesta;
}

function ajaxAsync(url, params, funcion) {
    debugAjax(url, params);
    mostrarAlertaCargando();
    $.ajax({
        url: url,
        type: "POST",
        data: params,
        async: true,
        success: function(result){
            gestionarJson(result, funcion);
        },
        error: function(jqXHR, textStatus, errorThrown) {
            ocultarAlertaCargando();
            alertaError(textos.errorFatal);
        }
    });
}

function gestionarJson(result, funcion) {
    if(typeof result == "string") {
        logAjax(result + "<br/>=========================<br/>");
        result = $.parseJSON(result);
    }
    
    if (result.respuesta == "OK") {
        ocultarAlertaCargando();
      	funcion.call(result, result);
    } else {
        ocultarAlertaCargando();
        var texto = "<p>"+result.descripcion+"</p>";
        var errores = result.errores;
        if(errores != undefined) {
            texto += "<ul>";
            for (var i = 0; i < errores.length; i++) {
                if(errores[i]!="") {
                    texto += "<li>" + errores[i] + "</li>";
                }
            }
            texto += "</ul>";
        }
        if(result.tipoError == "errorNoLogin" || result.tipoError == "errorNoSession") {
            var botones = {};
            botones[textos.aceptar] = function() {
                window.location = result.loginPage;
                $(this).dialog("close");
            };
            var opciones = {
                    bgiframe: true,
                    modal: true,
                    title: textos.error,
                    draggable: true,
                    resizable: false,
                    buttons: botones,
                    open: function(event, ui) { $(".ui-dialog-titlebar-close", $(this).parent()).hide(); }
            };
            $("#dialog-error").html(""+texto);
            $("#dialog-error").dialog(opciones);
        } else {
            alertaError(texto);
        }
    }

}


function debugAjax(url, params) {
    if(debug) {
        var cadenaParams = params;
        if(typeof cadenaParams == 'object') {
            cadenaParams = json2URL(params);
        }
        var log = "<strong>" + url + " </strong>";
        log += "<br/>" + decodeURI(cadenaParams).replace(/&/g, "<br/>");
        log += "<br/>--------<br/>";
        logAjax(log);
    }
}

function logAjax(texto) {
    if(debug) {
        if($("#debug").length == 0) {
            initLogAjax();
        }
        $("#debug").show().append(texto);
    }
}

function initLogAjax() {
    $("#debug").remove();
    var link = $('<a href="#">Cerrar</a>');
    link.click(function() {
        initLogAjax();
    });
    var link2 = $('<a href="#">Mostrar</a>');
    link2.click(function() {
        if($(this).parent().hasClass("oculto")) {
            $(this).parent().removeClass("oculto");
            $(this).text("Ocultar");
        } else {
            $(this).parent().addClass("oculto");
            $(this).text("Mostrar");
        }
    });
    var div = $('<div id="debug" class="oculto"></div>').append(link).append(" | ").append(link2).append("<br/><br/>");
    $("body").append(div);
}