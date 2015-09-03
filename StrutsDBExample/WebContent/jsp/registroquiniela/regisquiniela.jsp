<%@page import="com.jsr.struts.form.ColumnaQuinielaForm"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" media="all" href="recursos/css/regisQuiniela.css"  />
<title>Insert title here</title>
</head>
<body>
			<div style="color:red">
    			<html:errors />
    		</div>
    		
    <%
		List columnas = new ArrayList();
		columnas =  (List) session.getAttribute("pintarquini") ;
		ColumnaQuinielaForm columna1 = (ColumnaQuinielaForm) columnas.get(0);
		ColumnaQuinielaForm columna2 = (ColumnaQuinielaForm) columnas.get(1);
		ColumnaQuinielaForm columna3 = (ColumnaQuinielaForm) columnas.get(2);
		ColumnaQuinielaForm columna4 = (ColumnaQuinielaForm) columnas.get(3);
		ColumnaQuinielaForm columna5 = (ColumnaQuinielaForm) columnas.get(4);
/* 		ColumnaQuinielaForm columna6 = (ColumnaQuinielaForm) columnas.get(5);
		ColumnaQuinielaForm columna7 = (ColumnaQuinielaForm) columnas.get(6);
		ColumnaQuinielaForm columna8 = (ColumnaQuinielaForm) columnas.get(7);
		ColumnaQuinielaForm columna9 = (ColumnaQuinielaForm) columnas.get(8);
		ColumnaQuinielaForm columna10 = (ColumnaQuinielaForm) columnas.get(9);
		ColumnaQuinielaForm columna11 = (ColumnaQuinielaForm) columnas.get(10);
		ColumnaQuinielaForm columna12 = (ColumnaQuinielaForm) columnas.get(11);
		ColumnaQuinielaForm columna13 = (ColumnaQuinielaForm) columnas.get(12);
		ColumnaQuinielaForm columna14 = (ColumnaQuinielaForm) columnas.get(13);
		ColumnaQuinielaForm columna15 = (ColumnaQuinielaForm) columnas.get(14); */
		
		%>
    		
<html:form action="/Quiniela" method="get">
 
					<table class="tabla-quini clasi-grup tabla-quiniela" >
						<tr>
							<th class="num-fila">P</th>
							<th class="equipo">Local</th>
							<th class="equipo">Visitante</th>
							<th class="pronost">Pronostico</th>
							<th class="info-directo">Directos</th>
						</tr>
						<tr>
							<td class="num-fila"><%=columna1.getNumColumna()%></td>
							<td class="equipo">
								<span><%=columna1.getEquipoloc()%></span>
							</td>
							<td class="equipo">
								<span><%=columna1.getEquipovis()%></span>
							</td>
							
							<td class="pronost"  BGCOLOR="#FF9933">
                                	<table style="width:50px">
										<tr>
											<th class="quini" >
												<span class="s-left">1</span>
											</th>
											<th class="quini" >	
												<span class="s-left">X</span>
											</th>
											<th class="quini" >	
												<span class="s-left ">2</span>
											</th>
										
										</tr>
										<tr>
											<td>
												<html:checkbox  property="partido1"  value="1"> </html:checkbox>
											</td>
											<td>	
                                				<html:checkbox  property="partido1"  value="x"></html:checkbox>
                                			</td>
                                			<td>
                                				<html:checkbox  property="partido1"  value="2"></html:checkbox>
                                			</td>
										</tr>	
									</table>
							</td>
							<td></td>						
						</tr>
		
						<tr>
							<td><%=columna2.getNumColumna()%></td>
							<td><%=columna2.getEquipoloc()%></td>
							<td><%=columna2.getEquipovis()%></td>
							<td  BGCOLOR="#FF9933">
									<table style="width:50px">
										<tr>
											<th class="quini" >
												<span class="s-left">1</span>
											</th>
											<th class="quini" >	
												<span class="s-left">X</span>
											</th>
											<th class="quini" >	
												<span class="s-left ">2</span>
											</th>
										
										</tr>
										<tr>
											<td>
												<html:checkbox  property="partido2"  value="1"> </html:checkbox>
											</td>
											<td>	
                                				<html:checkbox  property="partido2"  value="x"></html:checkbox>
                                			</td>
                                			<td>
                                				<html:checkbox  property="partido2"  value="2"></html:checkbox>
                                			</td>
										</tr>	
									</table>	
							</td>
						</tr>
		
						<tr>
							<td><%=columna3.getNumColumna()%></td>
							<td><%=columna3.getEquipoloc()%></td>
							<td><%=columna3.getEquipovis()%></td>
							
							<td  BGCOLOR="#FF9933">
									<table style="width:50px">
										<tr>
											<th class="quini" >
												<span class="s-left">1</span>
											</th>
											<th class="quini" >	
												<span class="s-left">X</span>
											</th>
											<th class="quini" >	
												<span class="s-left ">2</span>
											</th>
										
										</tr>
										<tr>
											<td>
												<html:checkbox  property="partido3"  value="1"> </html:checkbox>
											</td>
											<td>	
                                				<html:checkbox  property="partido3"  value="x"></html:checkbox>
                                			</td>
                                			<td>
                                				<html:checkbox  property="partido3"  value="2"></html:checkbox>
                                			</td>
										</tr>	
									</table> 	
							</td>
						</tr>
		
						<tr>
							<td><%=columna4.getNumColumna()%></td>
							<td><%=columna4.getEquipoloc()%></td>
							<td><%=columna4.getEquipovis()%></td>
							
							<td BGCOLOR="#FF9933">
									<table style="width:50px">
										<tr>
											<th class="quini" >
												<span class="s-left">1</span>
											</th>
											<th class="quini" >	
												<span class="s-left">X</span>
											</th>
											<th class="quini" >	
												<span class="s-left ">2</span>
											</th>
										
										</tr>
										<tr>
											<td>
												<html:checkbox  property="partido4"  value="1"> </html:checkbox>
											</td>
											<td>	
                                				<html:checkbox  property="partido4"  value="x"></html:checkbox>
                                			</td>
                                			<td>
                                				<html:checkbox  property="partido4"  value="2"></html:checkbox>
                                			</td>
										</tr>	
									</table>
							</td>
						</tr>
	
						<tr>
							<td><%=columna5.getNumColumna()%></td>
							<td><%=columna5.getEquipoloc()%></td>
							<td><%=columna5.getEquipovis()%></td>
							
							<td  BGCOLOR="#FF9933">
									<table style="width:50px">
										<tr>
											<th class="quini" >
												<span class="s-left">1</span>
											</th>
											<th class="quini" >	
												<span class="s-left">X</span>
											</th>
											<th class="quini" >	
												<span class="s-left ">2</span>
											</th>
										
										</tr>
										<tr>
											<td>
												<html:checkbox  property="partido5"  value="1"> </html:checkbox>
											</td>
											<td>	
                                				<html:checkbox  property="partido5"  value="x"></html:checkbox>
                                			</td>
                                			<td>
                                				<html:checkbox  property="partido5"  value="2"></html:checkbox>
                                			</td>
										</tr>	
									</table>
							</td>
						</tr>
						
					
		<%-- 
						<tr>
							<td>6</td>
							<td>ESPANYOL</td>
							<td>GETAFE</td>
							
							<td BGCOLOR="#FF9933">
									<table style="width:50px">
										<tr>
											<th class="quini" >
												<span class="s-left">1</span>
											</th>
											<th class="quini" >	
												<span class="s-left">X</span>
											</th>
											<th class="quini" >	
												<span class="s-left ">2</span>
											</th>
										
										</tr>
										<tr>
											<td>
												<html:checkbox  property="partido6"  value="1"> </html:checkbox>
											</td>
											<td>	
                                				<html:checkbox  property="partido6"  value="x"></html:checkbox>
                                			</td>
                                			<td>
                                				<html:checkbox  property="partido6"  value="2"></html:checkbox>
                                			</td>
										</tr>	
									</table> 
							</td>
						</tr>
	
						<tr>
							<td>7</td>
							<td>LEVANTE</td>
							<td>CELTA</td>
							
							<td  BGCOLOR="#FF9933">
									<table style="width:50px">
										<tr>
											<th class="quini" >
												<span class="s-left">1</span>
											</th>
											<th class="quini" >	
												<span class="s-left">X</span>
											</th>
											<th class="quini" >	
												<span class="s-left ">2</span>
											</th>
										
										</tr>
										<tr>
											<td>
												<html:checkbox  property="partido7"  value="1"> </html:checkbox>
											</td>
											<td>	
                                				<html:checkbox  property="partido7"  value="x"></html:checkbox>
                                			</td>
                                			<td>
                                				<html:checkbox  property="partido7"  value="2"></html:checkbox>
                                			</td>
										</tr>	
									</table> 
							</td>
						</tr>
		
						<tr>
							<td>8</td>
							<td>ALMERÍA</td>
							<td>LEGANÉS</td>
							
							<td  BGCOLOR="#FF9933">
									<table style="width:50px">
										<tr>
											<th class="quini" >
												<span class="s-left">1</span>
											</th>
											<th class="quini" >	
												<span class="s-left">X</span>
											</th>
											<th class="quini" >	
												<span class="s-left ">2</span>
											</th>
										
										</tr>
										<tr>
											<td>
												<html:checkbox  property="partido8"  value="1"> </html:checkbox>
											</td>
											<td>	
                                				<html:checkbox  property="partido8"  value="x"></html:checkbox>
                                			</td>
                                			<td>
                                				<html:checkbox  property="partido8"  value="2"></html:checkbox>
                                			</td>
										</tr>	
									</table>
							</td>
						</tr>
					
						<tr>
							<td>9</td>
							<td>MIRANDÉS</td>
					        <td>ZARAGOZA</td>
							
							<td  BGCOLOR="#FF9933">
									<table style="width:50px">
										<tr>
											<th class="quini" >
												<span class="s-left">1</span>
											</th>
											<th class="quini" >	
												<span class="s-left">X</span>
											</th>
											<th class="quini" >	
												<span class="s-left ">2</span>
											</th>
										
										</tr>
										<tr>
											<td>
												<html:checkbox  property="partido9"  value="1"> </html:checkbox>
											</td>
											<td>	
                                				<html:checkbox  property="partido9"  value="x"></html:checkbox>
                                			</td>
                                			<td>
                                				<html:checkbox  property="partido9"  value="2"></html:checkbox>
                                			</td>
										</tr>	
									</table> 
							</td>
						</tr>
		
						<tr>
							<td>10</td>
							<td>LLAGOSTERA</td>
							<td>OSASUNA</td>
							
							<td  BGCOLOR="#FF9933">
									<table style="width:50px">
										<tr>
											<th class="quini" >
												<span class="s-left">1</span>
											</th>
											<th class="quini" >	
												<span class="s-left">X</span>
											</th>
											<th class="quini" >	
												<span class="s-left ">2</span>
											</th>
										
										</tr>
										<tr>
											<td>
												<html:checkbox  property="partido10"  value="1"> </html:checkbox>
											</td>
											<td>	
                                				<html:checkbox  property="partido10"  value="x"></html:checkbox>
                                			</td>
                                			<td>
                                				<html:checkbox  property="partido10"  value="2"></html:checkbox>
                                			</td>
										</tr>	
									</table> 
							</td>
						</tr>
		
						<tr>
							<td>11</td>
							<td>OVIEDO</td>
							<td>LUGO</td>
							
							<td  BGCOLOR="#FF9933">
									<table style="width:50px">
										<tr>
											<th class="quini" >
												<span class="s-left">1</span>
											</th>
											<th class="quini" >	
												<span class="s-left">X</span>
											</th>
											<th class="quini" >	
												<span class="s-left ">2</span>
											</th>
										
										</tr>
										<tr>
											<td>
												<html:checkbox  property="partido11"  value="1"> </html:checkbox>
											</td>
											<td>	
                                				<html:checkbox  property="partido11"  value="x"></html:checkbox>
                                			</td>
                                			<td>
                                				<html:checkbox  property="partido11"  value="2"></html:checkbox>
                                			</td>
										</tr>	
									</table>
							</td>
						</tr>
				
						<tr>
							<td>12</td>
							<td>GIMNÁSTIC</td>
							<td>ALBACETE</td>
							
							<td  BGCOLOR="#FF9933">
									<table style="width:50px">
										<tr>
											<th class="quini" >
												<span class="s-left">1</span>
											</th>
											<th class="quini" >	
												<span class="s-left">X</span>
											</th>
											<th class="quini" >	
												<span class="s-left ">2</span>
											</th>
										
										</tr>
										<tr>
											<td>
												<html:checkbox  property="partido12"  value="1"> </html:checkbox>
											</td>
											<td>	
                                				<html:checkbox  property="partido12"  value="x"></html:checkbox>
                                			</td>
                                			<td>
                                				<html:checkbox  property="partido12"  value="2"></html:checkbox>
                                			</td>
										</tr>	
									</table> 
							</td>
						</tr>
		
						<tr>						
							<td>13</td>
							<td>ALCORCÓN</td>
							<td>MALLORCA</td>

							<td  BGCOLOR="#FF9933">
									<table style="width:50px">
										<tr>
											<th class="quini" >
												<span class="s-left">1</span>
											</th>
											<th class="quini" >	
												<span class="s-left">X</span>
											</th>
											<th class="quini" >	
												<span class="s-left ">2</span>
											</th>
										
										</tr>
										<tr>
											<td>
												<html:checkbox  property="partido13"  value="1"> </html:checkbox>
											</td>
											<td>	
                                				<html:checkbox  property="partido13"  value="x"></html:checkbox>
                                			</td>
                                			<td>
                                				<html:checkbox  property="partido13"  value="2"></html:checkbox>
                                			</td>
										</tr>	
									</table> 
							</td>
						</tr>
			
						<tr>
							<td>14</td>
							<td>CÓRDOBA</td>
							<td>VALLADOLID</td>
							
							<td  BGCOLOR="#FF9933">
									<table style="width:50px">
										<tr>
											<th class="quini" >
												<span class="s-left">1</span>
											</th>
											<th class="quini" >	
												<span class="s-left">X</span>
											</th>
											<th class="quini" >	
												<span class="s-left ">2</span>
											</th>
										
										</tr>
										<tr>
											<td>
												<html:checkbox  property="partido14"  value="1"> </html:checkbox>
											</td>
											<td>	
                                				<html:checkbox  property="partido14"  value="x"></html:checkbox>
                                			</td>
                                			<td>
                                				<html:checkbox  property="partido14"  value="2"></html:checkbox>
                                			</td>
										</tr>	
									</table> 
							</td>
						</tr>
					</table>
				
					<table class="clasi-grup tabla-quini pleno-15 s-dm-b">
						<thead class="hide">
						<tr>
							<th>Número de fila</th>
							<th>Enfrentamiento</th>
							<th>Pronóstico</th>
							<th>Directo</th>
						</tr>
						</thead>
						<tr>
							
							<td class="num-fila" rowspan="2">15</td>
							<td class="enfrentamientos">
								<span>Bielorrusia</span>
							</td>
							
							<td BGCOLOR="#FAAC58">
								<table style="width:100px">
									<tr>
										<th class="quini" >
											<span class="s-left">0</span>
										</th>
										<th class="quini" >	
											<span class="s-left">1</span>
										</th>
										<th class="quini" >	
											<span class="s-left ">2</span>
										</th>
										<th class="quini" >		
											<span class="s-left "><abbr title="Más">M</abbr></span>
										</th>	
										
									</tr>
									<tr>
										<td>
											<html:checkbox  property="partido15L"  value="0"> </html:checkbox>
										</td>
										<td>	
                                			<html:checkbox  property="partido15L"  value="1"></html:checkbox>
                                		</td>
                                		<td>
                                			<html:checkbox  property="partido15L"  value="2"></html:checkbox>
                                		</td>
                                		<td>	
                                			<html:checkbox  property="partido15L"  value="M"></html:checkbox>
                                		</td>	  
										
									</tr>	
								</table>
							</td>
								
							<td class="info-dir gray" rowspan="2"> 
							</td>
						</tr>
						<tr>
							<td class="enfrentamientos">
								<span>España</span>
							</td>
							<td BGCOLOR="#FAAC58">
								<table style="width:100px">
									<tr>
										<th class="quini" >
											<span class="s-left">0</span>
										</th>
										<th class="quini" >	
											<span class="s-left">1</span>
										</th>
										<th class="quini" >	
											<span class="s-left ">2</span>
										</th>
										<th class="quini" >		
											<span class="s-left "><abbr title="Más">M</abbr></span>
										</th>	
										
									</tr>
									<tr>
										<td>
											<html:checkbox  property="partido15V"  value="0"></html:checkbox>
										</td>
										<td>	
                                			<html:checkbox  property="partido15V"  value="1"></html:checkbox>
                                		</td>
                                		<td>
                                			<html:checkbox  property="partido15V"  value="2"></html:checkbox>
                                		</td>
                                		<td>	
                                			<html:checkbox  property="partido15V"  value="M"></html:checkbox>
                                		</td>	  
										
									</tr>	
								</table>
							</td>	
						</tr> --%>
					</table>
	
	<html:submit>Envia</html:submit>
			<br><br>
	</html:form>
</body>
</html>