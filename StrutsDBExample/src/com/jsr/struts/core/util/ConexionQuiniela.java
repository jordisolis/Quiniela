package com.jsr.struts.core.util;



import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.jsr.struts.form.ColumnaQuinielaForm;



public class ConexionQuiniela {


	public ArrayList<ColumnaQuinielaForm> conexionquinielaResultados() throws IOException{

	  		//CONECTARSE CON EL PROXY DE INDRA .
	  		System.setProperty("http.proxyHost", "proxy.indra.es");
	  		System.setProperty("http.proxyPort", "8080");
	  
	    	Document doc = Jsoup.connect("http://www.quiniela15.com/resultados-quiniela")
	    			.get();
	    	
	    	
	    		
	        System.out.println("Obtained Title: " + doc.title());



	        ArrayList<ColumnaQuinielaForm> list = null;
	        try {
				Thread.sleep(6000);
				 list = parseHtmlResultados(doc);
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
	
	public ArrayList<ColumnaQuinielaForm> conexionquinielaPronostico() throws IOException{

  		//CONECTARSE CON EL PROXY DE INDRA .
  		System.setProperty("http.proxyHost", "proxy.indra.es");
  		System.setProperty("http.proxyPort", "8080");
  
  		Document doc = Jsoup.connect("http://www.quiniela15.com/pronostico-quiniela")
  				.get();
  	  
    	
    	
    		
        System.out.println("Obtained Title: " + doc.title());

        FileOutputStream out = new FileOutputStream("C:/Users/jsroman/table.txt");
        byte dataToWrite[] = doc.toString().getBytes();
        out.write(dataToWrite);
        out.close();
        ArrayList<ColumnaQuinielaForm> list = null;
        try {
			Thread.sleep(6000);
			 list = parseHtmlPronostico(doc);
		} catch (InterruptedException e) {
			// TODO 
			e.printStackTrace();
		}
        
//    	
//        for (Iterator iterator = list.iterator(); iterator.hasNext();) {
//        	ColumnaQuinielaForm mc = (ColumnaQuinielaForm) iterator.next();
//        	    System.out.print(mc.getEquipoloc()+"   ");
//        		System.out.print(mc.getEquipovis()+"   ");
//        		System.out.print(mc.getNumColumna()+"   ");
//        		System.out.print(mc.getResultado()+"   ");
//        		System.out.println(" ");
//        		
//	
//	
//        }
        
        return list;
   
}
	
	
	/**
	 * Metodo que consigue el pronostico de la web quiniela15. Para pintar la columna de quinielas
	 * @param doc
	 * @return
	 */
		private ArrayList<ColumnaQuinielaForm> parseHtmlPronostico(Document doc) 
				throws FileNotFoundException, IOException {
			  ArrayList<ColumnaQuinielaForm> list = new ArrayList<ColumnaQuinielaForm>();
		        //RECORREMOS EL DOCUMENTO PARA METER EN EL LISTADO SOLO LO QUE NOS INTERESA:
		        	/*
		        	 * * NUMERO DE COLUMNA.
		        	 * * EQUIPO LOCAL.
		        	 * * EQUIPO VISITANTE.
		        	 * * RESULTADO EN VIVO.?????
		        	 * 
		        	 */
		        for (Element table : doc.select("table")) {
		        	for (Element row : table.select("tr")) {
		        		ColumnaQuinielaForm tmp = new ColumnaQuinielaForm();
		        		tmp.setJornada(trimTituloPro(doc.title()));
		        		Elements tds = row.select("td");
		        		if(tds.size() == 10){	
		       
		            		tmp.setNumColumna(tds.get(0).text());
		            		tmp.setEquipoloc(trim(tds.get(1).text()));
		            		tmp.setEquipovis(trim(tds.get(2).text()));
//		            		tmp.setResultado(tds.get(4).text());
		            		list.add(tmp);
		        		}
		        	}
		        }
		return list;
	}
		
		/**
		 * Metodo encargado de recuperar los resultados.
		 * @param doc
		 * @return
		 * @throws FileNotFoundException
		 * @throws IOException
		 */
		
		private static ArrayList<ColumnaQuinielaForm> parseHtmlResultados(Document doc)
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
			        		tmp.setJornada(trimTituloRes(doc.title()));
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
	    
	  //METODO QUE CORTA UN STRING.
	    private static String trimTituloRes(String s) {
	    	int inicio = s.indexOf("-");
	        int fin = s.indexOf("|");
	            return s.substring(inicio+1, fin-1);
	       
	    }
	  //METODO QUE CORTA UN STRING.
	    private static String trimTituloPro(String s) {
	    	int inicio = s.indexOf("Jornada");
	        int fin = s.indexOf("|");
	            return s.substring(inicio, fin-1);
	       
	    }
	    
	
}
