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
		ColumnaQuinielaForm columna6 = (ColumnaQuinielaForm) columnas.get(5);
		ColumnaQuinielaForm columna7 = (ColumnaQuinielaForm) columnas.get(6);
		ColumnaQuinielaForm columna8 = (ColumnaQuinielaForm) columnas.get(7);
		ColumnaQuinielaForm columna9 = (ColumnaQuinielaForm) columnas.get(8);
		ColumnaQuinielaForm columna10 = (ColumnaQuinielaForm) columnas.get(9);
		ColumnaQuinielaForm columna11 = (ColumnaQuinielaForm) columnas.get(10);
		ColumnaQuinielaForm columna12 = (ColumnaQuinielaForm) columnas.get(11);
		ColumnaQuinielaForm columna13 = (ColumnaQuinielaForm) columnas.get(12);
		ColumnaQuinielaForm columna14 = (ColumnaQuinielaForm) columnas.get(13);
		ColumnaQuinielaForm columna15 = (ColumnaQuinielaForm) columnas.get(14);
		
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
							<td><%=columna1.getResultado()%></td>						
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
							<td><%=columna2.getResultado()%></td>	
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
							<td><%=columna3.getResultado()%></td>	
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
							<td><%=columna4.getResultado()%></td>	
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
							<td><%=columna5.getResultado()%></td>	
						</tr>
						
	
						<tr>
							<td><%=columna6.getNumColumna()%></td>
							<td><%=columna6.getEquipoloc()%></td>
							<td><%=columna6.getEquipovis()%></td>
							
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
							<td><%=columna6.getResultado()%></td>	
						</tr>
	
						<tr>
							<td><%=columna7.getNumColumna()%></td>
							<td><%=columna7.getEquipoloc()%></td>
							<td><%=columna7.getEquipovis()%></td>
							
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
							<td><%=columna7.getResultado()%></td>	
						</tr>
		
						<tr>
							<td><%=columna8.getNumColumna()%></td>
							<td><%=columna8.getEquipoloc()%></td>
							<td><%=columna8.getEquipovis()%></td>
							
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
							<td><%=columna8.getResultado()%></td>	
						</tr>
					
						<tr>
							<td><%=columna9.getNumColumna()%></td>
							<td><%=columna9.getEquipoloc()%></td>
							<td><%=columna9.getEquipovis()%></td>
							
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
							<td><%=columna9.getResultado()%></td>	
						</tr>
		
						<tr>
							<td><%=columna10.getNumColumna()%></td>
							<td><%=columna10.getEquipoloc()%></td>
							<td><%=columna10.getEquipovis()%></td>
							
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
							<td><%=columna10.getResultado()%></td>	
						</tr>
		
						<tr>
							<td><%=columna11.getNumColumna()%></td>
							<td><%=columna11.getEquipoloc()%></td>
							<td><%=columna11.getEquipovis()%></td>
							
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
							<td><%=columna11.getResultado()%></td>	
						</tr>
				
						<tr>
							<td><%=columna12.getNumColumna()%></td>
							<td><%=columna12.getEquipoloc()%></td>
							<td><%=columna12.getEquipovis()%></td>
							
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
							<td><%=columna12.getResultado()%></td>	
						</tr>
		
						<tr>						
							<td><%=columna13.getNumColumna()%></td>
							<td><%=columna13.getEquipoloc()%></td>
							<td><%=columna13.getEquipovis()%></td>

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
							<td><%=columna13.getResultado()%></td>	
						</tr>
			
						<tr>
							<td><%=columna14.getNumColumna()%></td>
							<td><%=columna14.getEquipoloc()%></td>
							<td><%=columna14.getEquipovis()%></td>
							
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
							<td><%=columna14.getResultado()%></td>	
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
							
							<td class="num-fila" rowspan="2"><%=columna15.getNumColumna()%></td>
							<td class="enfrentamientos">
								<span><%=columna14.getEquipoloc()%></span>
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
							<%=columna15.getResultado()%>
							</td>
						</tr>
						<tr>
							<td class="enfrentamientos">
								<span><%=columna15.getEquipovis()%></span>
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
							
						</tr> 
					</table>
	
	<html:submit>Envia</html:submit>
			<br><br>
	</html:form>
</body>
</html>