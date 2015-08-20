<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<html:form action="/Quiniela" method="get">
 <div id="contenedor">
		<div id="cuerpo">
			<div id="bloqueDer">
				<div id="bloqueQuiniTuya">
					Tu Quiniela - Jornada 38
					<table>
						<tr>
							<td BGCOLOR="#FF9933">Partido</td>
							<td BGCOLOR="#FF9933">nº</td>
							<td  BGCOLOR="#FF9933">
									<html:text  property="filas" size="1" value="1"></html:text >
                                	<html:text  property="filas" size="1" value="X"></html:text >
                                	<html:text   property="filas" size="1" value="2"></html:text > 
							</td>						
						</tr>
						<tr>
							<td>Almeria - Villarreal</td>
							<td>1</td>
							<td  BGCOLOR="#FF9933">
									<html:multibox  property="partido1"  value="1"></html:multibox>
                                	<html:multibox  property="partido1" value="X"></html:multibox>
                                	<html:multibox  property="partido1"  value="2"></html:multibox> 
							</td>						
						</tr>
		
						<tr>
							<td>Valladolid - At. Madrid</td>
							<td>2</td>
							<td  BGCOLOR="#FF9933">
									<html:checkbox  property="partido2" value="1"> </html:checkbox>
                                	<html:checkbox  property="partido2"  value="X"></html:checkbox>
                                	<html:checkbox  property="partido2"  value="2"></html:checkbox> 		
							</td>
						</tr>
		
						<tr>
							<td>Betis - Levante</td>
							<td>3</td>
							<td  BGCOLOR="#FF9933">
									<html:checkbox  property="partido3"  value="1"> </html:checkbox>
                                	<html:checkbox  property="partido3"  value="X"></html:checkbox>
                                	<html:checkbox  property="partido3"  value="2"></html:checkbox> 	
							</td>
						</tr>
		
						<tr>
							<td>Getafe - Zaragoza</td>
							<td>4</td>
							<td BGCOLOR="#FF9933">
									<html:checkbox  property="partido4"  value="1"> </html:checkbox>
                                	<html:checkbox  property="partido4"  value="X"></html:checkbox>
                                	<html:checkbox  property="partido4"  value="2"></html:checkbox> 
							</td>
						</tr>
	
						<tr>
							<td>Recreativo - Barcelona</td>
							<td>5</td>
							<td  BGCOLOR="#FF9933">
									<html:checkbox  property="partido5"  value="1"> </html:checkbox>
                                	<html:checkbox  property="partido5"  value="X"></html:checkbox>
                                	<html:checkbox  property="partido5"  value="2"></html:checkbox> 
							</td>
						</tr>
		
						<tr>
							<td>Espanyol - Osasuna</td>
							<td>6</td>
							<td BGCOLOR="#FF9933">
									<html:checkbox  property="partido6"  value="1"> </html:checkbox>
                                	<html:checkbox  property="partido6"  value="X"></html:checkbox>
                                	<html:checkbox  property="partido6"  value="2"></html:checkbox> 
							</td>
						</tr>
	
						<tr>
							<td>Deportivo - Atl. Club</td>
							<td>7</td>
							<td  BGCOLOR="#FF9933">
									<html:checkbox  property="partido7"  value="1"> </html:checkbox>
                                	<html:checkbox  property="partido7"  value="X"></html:checkbox>
                                	<html:checkbox  property="partido7"  value="2"></html:checkbox> 
							</td>
						</tr>
		
						<tr>
							<td>Valencia - Racing</td>
							<td>8</td>
							<td  BGCOLOR="#FF9933">
									<html:checkbox  property="partido8"  value="1"> </html:checkbox>
                                	<html:checkbox  property="partido8"  value="X"></html:checkbox>
                                	<html:checkbox  property="partido8"  value="2"></html:checkbox> 
							</td>
						</tr>
					
						<tr>
							<td>R.Madrid - Murcia</td>
							<td>9</td>
							<td  BGCOLOR="#FF9933">
									<html:checkbox  property="partido9"  value="1"> </html:checkbox>
                                	<html:checkbox  property="partido9"  value="X"></html:checkbox>
                                	<html:checkbox  property="partido9"  value="2"></html:checkbox> 
							</td>
						</tr>
		
						<tr>
							<td>Hercules - Castellon</td>
							<td>10</td>
							<td  BGCOLOR="#FF9933">
									<html:checkbox  property="partido10"  value="1"> </html:checkbox>
                                	<html:checkbox  property="partido10"  value="X"></html:checkbox>
                                	<html:checkbox  property="partido10"  value="2"></html:checkbox> 
							</td>
						</tr>
		
						<tr>
							<td>Salamanca - Las Palmas</td>
							<td>11</td>
							<td  BGCOLOR="#FF9933">
									<html:checkbox  property="partido11"  value="1"> </html:checkbox>
                                	<html:checkbox  property="partido11"  value="X"></html:checkbox>
                                	<html:checkbox  property="partido11"  value="2"></html:checkbox> 
							</td>
						</tr>
				
						<tr>
							<td>Cadiz - Albacete</td>
							<td>12</td>
							<td  BGCOLOR="#FF9933">
									<html:checkbox  property="partido12"  value="1"> </html:checkbox>
                                	<html:checkbox  property="partido12"  value="X"></html:checkbox>
                                	<html:checkbox  property="partido12"  value="2"></html:checkbox> 
							</td>
						</tr>
		
						<tr>
							<td>Malaga - Sporting</td>
							<td>13</td>
							<td  BGCOLOR="#FF9933">
									<html:checkbox  property="partido13"  value="1"> </html:checkbox>
                                	<html:checkbox  property="partido13"  value="X"></html:checkbox>
                                	<html:checkbox  property="partido13"  value="2"></html:checkbox> 
							</td>
						</tr>
			
						<tr>
							<td>Celta - R.Sociedad</td>
							<td>14</td>
							<td  BGCOLOR="#FF9933">
									<html:checkbox  property="partido14"  value="1"> </html:checkbox>
                                	<html:checkbox  property="partido14"  value="X"></html:checkbox>
                                	<html:checkbox  property="partido14"  value="2"></html:checkbox> 
							</td>
						</tr>
					</table>
				
					<table frame="hsides">
						<tr>
							<td>Mallorca - Sevilla</td>
							<td>15</td>
							<td>
									<html:checkbox  property="partido15"  value="1"> </html:checkbox>
                                	<html:checkbox  property="partido15" value="X"></html:checkbox>
                                	<html:checkbox  property="partido15"  value="2"></html:checkbox> 
							</td>
						</tr>
					</table>
				</div>
				
			</div>
		</div>
	</div>
	<html:submit>Envia</html:submit>
			<br><br>
	</html:form>
</body>
</html>