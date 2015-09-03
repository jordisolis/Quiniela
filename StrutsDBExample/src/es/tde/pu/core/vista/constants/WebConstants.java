//------------------------------------------------------------
//
//    � Telef�nica de Espa�a, S.A.
//
////----------------------------------------------------------
// Los contenidos de este fichero son propiedad de Telef�nica
// de Espa�a S.A. titular del copyright. Este fichero
// solo podr� ser copiado, distribuido y utilizado, en su
// totalidad o en parte, con el permiso escrito de Telef�nica
// de Espa�a S.A., o de acuerdo con los t�rminos y
// condiciones establecidas en el acuerdo/contrato bajo el que
// se suministra.
////----------------------------------------------------------
package es.tde.pu.core.vista.constants;

import java.text.SimpleDateFormat;

import es.tde.pu.core.util.PropertiesUtil;

/**
 * Constantes de presentaci�n.
 * @author indra
 *
 */
public class WebConstants {

    /** 
     * Valor por defecto del registros por pagina.
     */
    public static final int NUM_REGxPAG_DEFAULT_VALUE = 10;
    
    /** 
     * Operaciones o metodos.
     */
    public static final String INIT      = "init";
    public static final String SEARCH    = "search";
    public static final String EXPORT    = "export";
    
    /** 
     * Paginas de vuelta. 
     */ 
    public static final String FWD_INIT    = "successInit";
    public static final String FWD_SEARCH  = "successSearch";
    public static final String FWD_OK      = "ok";
    public static final String FWD_DETAIL  = "successDetail";
    public static final String FWD_REFRESH = "successRefresh";
    
    public static final String FWD_SUCCESS_AJAX = "successAjax";
    
    /** 
     * Exportacion de informes. 
     */ 
    public static final String INF_HELPER_CLASS = "INF_HELPER_CLASS";
    public static final String INF_FORM_NAME    = "INF_FORM_NAME";
    
    /** 
     * String FWD_UNEXPECTED_EXCEPTION. 
     */
    public static final String FWD_UNEXPECT_EXCEPTION = "errorApplicationFwd";
    
    /**
     * Constante que permite recuperar el nombre del usuario logado en sesi�n.
     */
    public static final String USER_IN_SESSION = "USER_IN_SESSION";
    
    /** 
     * Patron "dd/MM/yyyy".
     */
    public static final String DATE_PATTERN = "dd/MM/yyyy";
    
    /**
     * En base al patr�n: DATE_PATTERN = "dd/MM/yyyy".
     */
    public static final SimpleDateFormat SDF_FECHA = 
            new SimpleDateFormat(DATE_PATTERN);
    
    /**
     * Patr�n "dd/MM/yyyy HH:mm:ss".
     */
    public static final String DATETIME_PATTERN = "dd/MM/yyyy HH:mm:ss";
    
    /**
     * En base al patron: DATETIME_PATTERN = "dd/MM/yyyy HH:mm:ss".
     */
    public static final SimpleDateFormat SDF_FECHAHORA = 
            new SimpleDateFormat(DATETIME_PATTERN);
    
    /**
     * Properties de errores.
     */
    public static final String PROP_ERRORS = 
        "es.tde.pu.comun.properties.ErroresResources";
    
    /**
     * Properties de configuracion.
     */
    public static final String PROP_CONFIGURATION =
        "es.tde.pu.comun.properties.PuConfigProperties";
    
    /**
     * Properties comun.
     */
    public static final String PROP_COMUN =
        "es.tde.pu.comun.properties.ApplicationResources";
    
    /**
     * Properties de modulos.
     */
    public static final String PROP_ALARMAS = 
        "es.tde.pu.comun.properties.AlarmasResources";
    
    /**
     * Properties de modulos.
     */
    public static final String PROP_PEDIDOS = 
        "es.tde.pu.comun.properties.PedidosResources";
    
    
    /** Cadena que identifica un fallo de la aplicaci�n. */
    public static final String APPLICATION = "application";

    /** Cadena que identifica un fallo de la aplicaci�n error. */
    public static final String APPLICATION_ERROR = "applicationError";

    /** Cadena que indentifica un fallo de validaci�n en la p�gina.*/
    public static final String PAGINA_MESSAGES = "paginaMessages";

    /** Cadena que indentifica un error de sistema. */
    public static final String FATAL_ERROR = "fatalError";
    
    /** Cadena que indentifica un mensaje de sistema. */
    public static final String MESSAGES = "messages";

    /**
     * Error Login.
     */
   // public static final String ERROR_LOGIN = "errorLogin";

    /**
     * Error Login.
     */
   // public static final String ERROR_SESION = "errorSesion";

    /**
     * Propiedad de control para redirecciones al recargar la pantalla.
     */
    public static final String CONTROL_REDIRECT = "controlRedirect";
    
    /**
     * Idioma por defecto de la aplicacion.
     */
    public static final String DEFAULT_LOCALE = 
            PropertiesUtil.getConfigProperties("default.app.locale");
}
