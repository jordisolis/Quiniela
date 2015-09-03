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

package com.jsr.struts.core.vista.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.jsr.core.vista.constants.WebConstants;
import com.jsr.struts.core.util.PropertiesUtil;

import flexjson.JSONSerializer;

/**
 * Clase dispatch base.
 * 
 * @author indra
 * 
 */
public class BaseDispatchAction extends DispatchAction {

    protected static final String KEY_RESULTADOS = "resultados";

    protected static final String KEY_ERRORES = "errores";

    protected static final String KEY_MENSAJES = "mensajes";
    
    protected static final String KEY_VALIDATION = "validacion";
    
        
    
    

    
    /**
     * Método para retornar un mensaje informativo en invocaciones ajax.
     * Agregar atributo ajax a la request en la propiedad 'mensajes'
     * @param mapping mapeo
     * @param request peticián web a actualizar
     * @param key clave con el mensaje de informacion
     * @param bundle string con el fichero de claves     
     * @return ActionForward           
     */
    public ActionForward addAjaxMessage(ActionMapping mapping, 
            HttpServletRequest request, String key, String bundle) {
        
        //Recuperamos el mensaje
        String msg = PropertiesUtil.getProperties(bundle, key, 
                request.getLocale(), new String[] {});

        // Comprobar si existen errores de validacián
        return addAjaxAttribute(mapping, request, KEY_MENSAJES, msg);
    }
    
    /**
     * Método para retornar un mensaje de error en invocaciones ajax.
     * Agregar atributo ajax a la request en la propiedad 'errores'
     * @param mapping mapeo
     * @param request peticián web a actualizar
     * @param key clave con el mensaje de error
     * @param bundle string con el fichero de claves     
     * @return ActionForward           
     */
    public ActionForward addAjaxError(ActionMapping mapping, 
            HttpServletRequest request, String key, String bundle) {
        return this.addAjaxError(mapping, request, key, new String[]{}, bundle);
    }
    
    /**
     * Método para retornar un mensaje de error en invocaciones ajax.
     * Agregar atributo ajax a la request en la propiedad 'errores'.
     * La clave del mensaje se tomará por defecto del fichero ErroresResources  
     * @param mapping mapeo
     * @param request peticián web a actualizar
     * @param key clave con el mensaje de error
     * @param args argumentos a sustituir en el mensaje     
     * @return ActionForward         
     */
    public ActionForward addAjaxError(ActionMapping mapping, 
            HttpServletRequest request, String key, String[] args) {
        return this.addAjaxError(mapping, request, key, args,
                WebConstants.PROP_ERRORS);
    }
    
    /**
     * Método para retornar un mensaje de error en invocaciones ajax.
     * Agregar atributo ajax a la request en la propiedad 'errores'
     * @param mapping mapeo
     * @param request peticián web a actualizar
     * @param key clave con el mensaje de error
     * @param args argumentos a sustituir en el mensaje
     * @param bundle string con el fichero de claves     
     * @return ActionForward         
     */
    public ActionForward addAjaxError(ActionMapping mapping, 
            HttpServletRequest request, String key, String[] args, 
            String bundle) {
        
        //Recuperamos el mensaje
        String msg = PropertiesUtil.getProperties(bundle, key,
                request.getLocale(), args);

        // Comprobar si existen errores de validacián
        return addAjaxAttribute(mapping, request, KEY_ERRORES, msg);
    }
    
    /**
     * Método para retornar un mensaje de error en invocaciones ajax.
     * Agregar atributo ajax a la request en la propiedad 'resultados'
     * @param mapping
     *            mapeo
     * @param request
     *            perticián web a actualizar
     * @param value
     *            valor del objeto    
     * @return ActionForward           
     */
    public ActionForward addAjaxResult(ActionMapping mapping, 
            HttpServletRequest request, Object value) {
        
        // Comprobar si existen errores de validacián
        return addAjaxAttribute(mapping, request, KEY_RESULTADOS, value);
    }    

   
    /**
     * Agregar atributo ajax a la request.
     * 
     * @param mapping
     *            mapeo
     * @param request
     *            perticián web a actualizar
     * @param key
     *            clave de respuesta
     * @param value
     *            valor del objeto
     * @return ActionForward
     */
    private ActionForward addAjaxAttribute(ActionMapping mapping, 
            HttpServletRequest request, String key, Object value) {
        
        try {
            //Puesto que no estamos invocando una peticion ajax
            //no es necesario retorna el mapping definido de ajax
            if (!this.isAjaxSubmit(request)){
                StringBuffer sb = new StringBuffer();
                sb.append("Evitamos setear parametros ");
                sb.append("en una peticián que no es ajax.");
               
                return null;
            }
        
            //Guardamos el mensaje en un map 
            Map ajaxMap = new HashMap();
            ajaxMap.put(key, this.serializeJson(value));
            request.setAttribute("ajaxMap", ajaxMap);
        }
        catch (Exception e) {
            
        }
        
        return mapping.findForward("successAjax");
    }

    /**
     * Identificamos si es una peticion ajax.
     * @param request - request
     * @return boolean
     */
    protected boolean isAjaxSubmit(HttpServletRequest request) {
        String isAjax = request.getParameter("ajax");
        return (null != isAjax && isAjax.equals("true"));
    }
    
    /**
     * Genera una cadena json a partir de un objeto.
     *
     * @param obj Objeto a serializar
     * @return Cadena json serializada
     * @throws Exception Excepcián de serialización
     */
    public String serializeJson(Object obj) throws Exception {
        JSONSerializer serializer = new JSONSerializer();
        String[] clases = { "*.class" };
        return serializer.exclude(clases).deepSerialize(obj);
    }
    

    
 
    /**
     * Recuperamos la matricula del usuario de la sesion.
     * @param request HttpServletRequest
     * @return String
     */
    public String getUserInSession(HttpServletRequest request) {
        return (String) request.getSession().
                getAttribute(WebConstants.USER_IN_SESSION);
    }
}