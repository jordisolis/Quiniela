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
package es.tde.pu.core.util;

import java.text.MessageFormat;
import java.util.Locale;
import java.util.ResourceBundle;

import es.tde.pu.core.vista.constants.WebConstants;


/**
 * Clase de utilidades.
 *
 * @author indra
 * @version
 */

public final class PropertiesUtil {

    /**
     * M�todo encargado de obtener el texto almacenado en el archivo de
     * properties RecursosAplicacion.properties a partir de la key del texto
     * buscado.
     *
     * @param key
     *            key �nico que identifica el texto dentro del archivo.
     * @return String con el texto buscado
     */
    public static String getConfigProperties(String key) {
        ResourceBundle rb = 
                ResourceBundle.getBundle(WebConstants.PROP_CONFIGURATION);

        return rb.getString(key).trim();
    }
    
    /**
     * M�todo encargado de obtener el texto almacenado en el archivo de
     * properties RecursosAplicacion.properties a partir de la key del texto
     * buscado.
     * 
     * ATENCI�N !!! no borra espacios de los ficheros de propiedades.
     *
     * @param key
     *            key �nico que identifica el texto dentro del archivo.
     * @return String con el texto buscado
     */
    public static String getConfigPropertiesNoTrim(String key) {
        ResourceBundle rb = 
                ResourceBundle.getBundle(WebConstants.PROP_CONFIGURATION);

        return rb.getString(key);
    }

    /**
     * M�todo encargado de obtener el texto almacenado en el archivo de
     * properties Properties a partir de la key del texto
     * buscado y un locale pasado.
     *
     * @param bundle
     *            ruta del properties
     * @param key
     *            key �nico que identifica el texto dentro del archivo.
     * @param loc codigo de idioma
     * @return String con el texto buscado
     */
    public static String getProperties(String bundle, String key, Locale loc) {
        return ResourceBundle.getBundle(bundle, loc).getString(key);
    }

    /**
     * M�todo encargado de obtener el texto almacenado en el archivo de
     * properties Properties a partir de la key del texto
     * buscado, un locale pasado y una lista de mensajes.
     *
     * @param bundle
     *            ruta del properties
     * @param key
     *            key �nico que identifica el texto dentro del archivo.
     * @param loc codigo de idioma
     * @param messageArguments argumentos a sustituir en el mensaje
     * @return String con el texto buscado
     */
    public static String getProperties(String bundle, String key,
            Locale loc, Object[] messageArguments) {
        
        MessageFormat messageForm = new MessageFormat("");
        messageForm.setLocale(loc);
        messageForm.applyPattern(getProperties(bundle, key, loc));
        
        return messageForm.format(messageArguments);
    }
    
}
