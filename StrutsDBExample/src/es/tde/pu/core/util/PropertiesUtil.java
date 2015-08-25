//------------------------------------------------------------
//
//    © Telefónica de España, S.A.
//
////----------------------------------------------------------
// Los contenidos de este fichero son propiedad de Telefónica
// de España S.A. titular del copyright. Este fichero
// solo podrá ser copiado, distribuido y utilizado, en su
// totalidad o en parte, con el permiso escrito de Telefónica
// de España S.A., o de acuerdo con los términos y
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
     * Método encargado de obtener el texto almacenado en el archivo de
     * properties RecursosAplicacion.properties a partir de la key del texto
     * buscado.
     *
     * @param key
     *            key único que identifica el texto dentro del archivo.
     * @return String con el texto buscado
     */
    public static String getConfigProperties(String key) {
        ResourceBundle rb = 
                ResourceBundle.getBundle(WebConstants.PROP_CONFIGURATION);

        return rb.getString(key).trim();
    }
    
    /**
     * Método encargado de obtener el texto almacenado en el archivo de
     * properties RecursosAplicacion.properties a partir de la key del texto
     * buscado.
     * 
     * ATENCIÓN !!! no borra espacios de los ficheros de propiedades.
     *
     * @param key
     *            key único que identifica el texto dentro del archivo.
     * @return String con el texto buscado
     */
    public static String getConfigPropertiesNoTrim(String key) {
        ResourceBundle rb = 
                ResourceBundle.getBundle(WebConstants.PROP_CONFIGURATION);

        return rb.getString(key);
    }

    /**
     * Método encargado de obtener el texto almacenado en el archivo de
     * properties Properties a partir de la key del texto
     * buscado y un locale pasado.
     *
     * @param bundle
     *            ruta del properties
     * @param key
     *            key único que identifica el texto dentro del archivo.
     * @param loc codigo de idioma
     * @return String con el texto buscado
     */
    public static String getProperties(String bundle, String key, Locale loc) {
        return ResourceBundle.getBundle(bundle, loc).getString(key);
    }

    /**
     * Método encargado de obtener el texto almacenado en el archivo de
     * properties Properties a partir de la key del texto
     * buscado, un locale pasado y una lista de mensajes.
     *
     * @param bundle
     *            ruta del properties
     * @param key
     *            key único que identifica el texto dentro del archivo.
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
