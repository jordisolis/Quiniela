package com.jwt.struts.action;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.jwt.struts.form.QuinielaRegisterForm;

/**
 * 
 * @author jordisolis
 *
 */
public class QuinielaRegisterAction extends Action{

	@SuppressWarnings("unchecked")
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		//Sesion.
		HttpSession ses = request.getSession(true);
		//Form de registro.
		QuinielaRegisterForm quiniRegisForm = (QuinielaRegisterForm) form;
		
		//Mapa del pronostico de quiniela.
		SortedMap  pronostico = new TreeMap();
		
        String [] partido1 = quiniRegisForm.getPartido1();
        //Recogemos los resultados de la pagina regisquiniela.jsp.
		String []  partido2 = quiniRegisForm.getPartido2();
		String []  partido3 = quiniRegisForm.getPartido3();
		String []  partido4 = quiniRegisForm.getPartido4();
		String []  partido5 = quiniRegisForm.getPartido5();
		String []  partido6 = quiniRegisForm.getPartido6();
		String []  partido7 = quiniRegisForm.getPartido7();
		String []  partido8 = quiniRegisForm.getPartido8();
		String []  partido9 = quiniRegisForm.getPartido9();
		String []  partido10 = quiniRegisForm.getPartido10();
		String []  partido11 = quiniRegisForm.getPartido11();
		String []  partido12 = quiniRegisForm.getPartido12();
		String []  partido13 = quiniRegisForm.getPartido13();
		String []  partido14 = quiniRegisForm.getPartido14();
		String []  partido15 = quiniRegisForm.getPartido15();
		//pasamos al hasmap los resultados.
		pronostico.put(1, partido1);
		pronostico.put(2, partido2);
		pronostico.put(3, partido3);
		pronostico.put(4, partido4);
		pronostico.put(5, partido5);
		pronostico.put(6, partido6);
		pronostico.put(7, partido7);
		pronostico.put(8, partido8);
		pronostico.put(9, partido9);
		pronostico.put(10, partido10);
		pronostico.put(11, partido11);
		pronostico.put(12, partido12);
		pronostico.put(13, partido13);
		pronostico.put(14, partido14);
		//pronostico.put(15, partido15);
	
		//mapa con los posibles resultados
		SortedMap  resultado = new TreeMap();
		resultado.put(1, "2");
		resultado.put(2, "1");
		resultado.put(3, "X");
		resultado.put(4,"1" );
		resultado.put(5,"2" );
		resultado.put(6, "1");
		resultado.put(7,"1" );
		resultado.put(8, "2");
		resultado.put(9,"1" );
		resultado.put(10,"1" );
		resultado.put(11, "1");
		resultado.put(12, "1");
		resultado.put(13, "1");
		resultado.put(14, "1");
		//resultado.put(15, "2");
		
		//iteracion del ****Pronostico*****.
		Iterator itpronostico = pronostico.entrySet().iterator();
		//iteracion del ****Posible Resultado*****.
		Iterator itresultado = resultado.entrySet().iterator();
		int contador = 0;
		int posdoble = 0;
		
		//mapa donde guardamos solo los dobles acertados.
		SortedMap  mapadobles = new TreeMap();
		//recorremos el mapa de  de resultados ya que tienen el mismo numero de posiciones que el de pronostico.
		while (itresultado.hasNext()) { 
			Map.Entry entradapronostico = (Map.Entry)itpronostico.next();
			Map.Entry entradaresultado = (Map.Entry)itresultado.next();
			//si estamos en el mismo partido comprobamos si hay o no acierto.
			
				//guardamos en un array los pronostico de un partido (ya que puede ser un doble y tener varios).
				String [] pronosticos = (String[]) entradapronostico.getValue();
				if(pronosticos.length > 1){
					posdoble++;
				}
				for (int i = 0; i < pronosticos.length; i++) {
					String pronos = pronosticos[i];
					if(pronos.equals(entradaresultado.getValue())){
						contador++; 
						//parseamos el pronostico a 1 y x (para la hoja de reduciones).
						if(pronosticos.length > 1){
							
							if(i==0){
								mapadobles.put(posdoble,"1");
							}
							else{
								mapadobles.put(posdoble,"x");
							}
							
						}
					}
				
				}
	
		}
		//mapa de reduciones autorizadas.
		SortedMap  mapaReducion = new TreeMap();
		
		String [] doble1 = {"1","1","x","x","x","x","1","1","x","x","1","1","x","x","1","1"};
		String [] doble2 = {"1","1","x","x","x","x","1","1","1","1","x","x","1","1","x","x"};
		String [] doble3 = {"1","1","x","x","1","1","x","x","x","x","1","1","1","1","x","x"};
		String [] doble4 = {"1","1","x","x","1","1","x","x","1","1","x","x","x","x","1","1"};
		String [] doble5 = {"1","x","1","x","x","1","x","1","1","x","1","x","1","x","1","x"};
		String [] doble6 = {"1","x","1","x","1","x","1","x","x","1","x","1","1","x","1","x"};
		String [] doble7 = {"1","x","1","x","1","x","1","x","1","x","1","x","x","1","x","1"};
		
		mapaReducion.put(1,doble1);
		mapaReducion.put(2,doble2);
		mapaReducion.put(3,doble3);
		mapaReducion.put(4,doble4);
		mapaReducion.put(5,doble5);
		mapaReducion.put(6,doble6);
		mapaReducion.put(7,doble7);
		
		//Recorremos el mapa de reduciones autorizadas.
		Iterator itMapaReducion = mapaReducion.entrySet().iterator();
		Iterator itMapaDobles = mapadobles.entrySet().iterator();
		
		
		SortedMap  mapaPosicion = new TreeMap();
		//Recoremos el mapa De Dobles acertados.
		while (itMapaDobles.hasNext()) {
			//Listado de las posiciones de los dobles
			ArrayList posiciones  = new ArrayList();
			Map.Entry entradaMapaDobles = (Map.Entry)itMapaDobles.next();
			while(itMapaReducion.hasNext()){
				Map.Entry entradaMapaReducion = (Map.Entry)itMapaReducion.next();
				if(entradaMapaDobles.getKey() == entradaMapaReducion.getKey()){
					String [] array = (String[]) entradaMapaReducion.getValue();
					for (int i = 0; i < array.length; i++) {
						String reduc = array[i];
						if(reduc.equals(entradaMapaDobles.getValue())){	
							posiciones.add(i);
						}
					}
					//salimos de while
					break;	
				}	
				
				
			}
			//le pasamos al mapa la posicion del doble en la columnas del 1-15 y las posiciones de las reduciones autorizadas.
			mapaPosicion.put(entradaMapaDobles.getKey(),posiciones);

		}
		//ahora ya tenemos solo los doble acertados y la convinacion de las reduciones
		Iterator itMapaPosicion = mapaPosicion.entrySet().iterator();
	
		List numerosRepetidosf1  = new ArrayList();
		
		int longList = 0;
		while(itMapaPosicion.hasNext()){
			longList ++;
				Map.Entry entradaMapaPosicionAnt = (Map.Entry)itMapaPosicion.next();			
				//pasamos todo el mapa a una Lista.
				numerosRepetidosf1.addAll((Collection) entradaMapaPosicionAnt.getValue());

		
			
		}
		

		Hashtable htcontador1;
		//miramos las ocurrencia de las reduciones.
		htcontador1=cantElementosRepLista(numerosRepetidosf1);
		List listaAciertos = recoElementosLista(htcontador1,longList,contador);
		
		Hashtable htcontadoraciertos;
		htcontadoraciertos=cantElementosRepLista(listaAciertos);

		
		ses.setAttribute("aciertos", htcontadoraciertos);

		
		
		return mapping.findForward("success");
		
		
		}
	
	
	
	 






	//metodo que muestra por consola el numero de aciertos.
	private List recoElementosLista(Hashtable htcontador1,int longList,int contador) {

		List aciertos = new ArrayList();
		Enumeration element = htcontador1.keys();
		int numreducir = 0;
		int contador1;
		int key = 0;
		while(element.hasMoreElements() ){
			
			Object clave = element.nextElement();		
			numreducir = (Integer) htcontador1.get(clave);
			contador1 = longList - numreducir;

			
			System.out.println("Has acertado en la quiniela :"+ (contador - contador1));
			aciertos.add(contador - contador1);
		}	
		return aciertos;

	}


	//metodo que cuenta el numero de ocurrencias.
	public static Hashtable cantElementosRepLista(List numerosRepetidosf1 ){
	 
	Hashtable hashLista = new Hashtable();
	 
	for (Object item : numerosRepetidosf1) {
	 
		if(hashLista.containsKey(item)){
	 
			hashLista.put(item, (Integer)hashLista.get(item) +1);
		}else{
			hashLista.put(item, 1);
		}
	}
	 
	return hashLista;
	}



}
