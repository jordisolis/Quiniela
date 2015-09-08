package com.jsr.struts.core.util;



import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;

import com.jsr.struts.form.ColumnaQuinielaForm;



public class ConexionQuiniela {


  public ArrayList conexionquiniela() throws IOException{

	    	Document doc = Jsoup.connect("http://www.quiniela15.com/resultados-quiniela")
	    			.get();
	    	
//	    	
	        System.out.println("Obtained Title: " + doc.title());
	 //       Document doc2 = Jsoup.parse(downloadHtml(path));


	        ArrayList<ColumnaQuinielaForm> list = null;
	        try {
				Thread.sleep(6000);
				 list = parseHtml(doc);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        
	    	
	        for (Iterator iterator = list.iterator(); iterator.hasNext();) {
	        	ColumnaQuinielaForm mc = (ColumnaQuinielaForm) iterator.next();
	        	    System.out.print(mc.getEquipoloc()+"   ");
	        		System.out.print(mc.getEquipovis()+"   ");
	        		System.out.print(mc.getNumColumna()+"   ");
	        		System.out.print(mc.getResultado()+"   ");
	        		System.out.println(" ");
	        		
		
		
	        }
	        
	        return list;
	   
}
		private static ArrayList<ColumnaQuinielaForm> parseHtml(Document doc)
				throws FileNotFoundException, IOException {
			//    	
			        ArrayList<ColumnaQuinielaForm> list = new ArrayList();
			       // Document doc = Jsoup.parse(url, 3000);
			//        Elements table1 = doc.select("table");
			        
			    
			        FileOutputStream out = new FileOutputStream("C:/Users/jordi/workspace/jsoup/table.txt");
			        
			        byte dataToWrite[] = doc.toString().getBytes();
			        out.write(dataToWrite);
			        out.close();
			        for (Element table : doc.select("table")) { //this will work if your doc contains only one table element
			          for (Element row : table.select("tr")) {
			            ColumnaQuinielaForm tmp = new ColumnaQuinielaForm();
			           
			            Elements tds = row.select("td");
			            if(tds.size() == 7){	
			            //.... and so on for the rest of attributes
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

	    private static void print(String msg, Object... args) {
	        System.out.println(String.format(msg, args));
	    }

	    private static String trim(String s) {
	    	int fin = s.indexOf("(");
	        
	            return s.substring(0, fin-1);
	       
	    }
	    
	    private static String downloadHtml(String path) {
	        InputStream is = null;
	        try {
	            String result = "";
	            String line;

	            URL url = new URL(path);
	            is = url.openStream();  // throws an IOException
	            BufferedReader br = new BufferedReader(new InputStreamReader(is));

	            while ((line = br.readLine()) != null) {
	                result += line;
	            }
	            return result;
	        } catch (IOException ioe) {
	            ioe.printStackTrace();
	        } finally {
	            try {
	                if (is != null) is.close();
	            } catch (IOException ioe) {
	                // nothing to see here
	            }
	        }
	        return "";
	    }
	
}
