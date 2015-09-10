package com.jsr.struts.core.util;



import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.jsr.struts.form.ColumnaQuinielaForm;



public class ConexionQuiniela {


	public ArrayList<ColumnaQuinielaForm> conexionquiniela() throws IOException{

	  		//CONECTARSE CON EL PROXY DE INDRA .
	  		System.setProperty("http.proxyHost", "proxy.indra.es");
	  		System.setProperty("http.proxyPort", "8080");
	  
	    	Document doc = Jsoup.connect("http://www.quiniela15.com/resultados-quiniela")
	    			.get();
	    	
	    	
	        System.out.println("Obtained Title: " + doc.title());



	        ArrayList<ColumnaQuinielaForm> list = null;
	        try {
				Thread.sleep(6000);
				 list = parseHtml(doc);
			} catch (InterruptedException e) {
				// TODO 
				e.printStackTrace();
			}
	        
	    	
//	        for (Iterator iterator = list.iterator(); iterator.hasNext();) {
//	        	ColumnaQuinielaForm mc = (ColumnaQuinielaForm) iterator.next();
//	        	    System.out.print(mc.getEquipoloc()+"   ");
//	        		System.out.print(mc.getEquipovis()+"   ");
//	        		System.out.print(mc.getNumColumna()+"   ");
//	        		System.out.print(mc.getResultado()+"   ");
//	        		System.out.println(" ");
//	        		
//		
//		
//	        }
	        
	        return list;
	   
	}
  
		private static ArrayList<ColumnaQuinielaForm> parseHtml(Document doc)
				throws FileNotFoundException, IOException {
			   	
			        ArrayList<ColumnaQuinielaForm> list = new ArrayList<ColumnaQuinielaForm>();
			        //RECORREMOS EL DOCUMENTO PARA METER EN EL LISTADO SOLO LO QUE NOS INTERESA:
			        	/*
			        	 * * NUMERO DE COLUMNA.
			        	 * * EQUIPO LOCAL.
			        	 * * EQUIPO VISITANTE.
			        	 * * RESULTADO EN VIVO.
			        	 * 
			        	 */
			        for (Element table : doc.select("table")) {
			        	for (Element row : table.select("tr")) {
			        		ColumnaQuinielaForm tmp = new ColumnaQuinielaForm();
			           
			        		Elements tds = row.select("td");
			        		if(tds.size() == 7){	
			       
			            		tmp.setNumColumna(tds.get(0).text());
			            		tmp.setEquipoloc(trim(tds.get(1).text()));
			            		tmp.setEquipovis(trim(tds.get(2).text()));
			            		tmp.setResultado(tds.get(4).text());
			            		list.add(tmp);
			        		}
			        	}
			        }
			return list;
		}

		//METODO QUE CORTA UN STRING.
	    private static String trim(String s) {
	    	int fin = s.indexOf("(");
	        
	            return s.substring(0, fin-1);
	       
	    }
	
}
