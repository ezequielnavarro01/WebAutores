<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="autores.GestionBD"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listado de Autores</title>
<link rel="stylesheet" type="text/css" href="css/estilos.css">
</head>
<body>
	<%! private final static String sql = " SELECT * FROM autor"; %>
	<%
	Connection con = GestionBD.abrirConexion();	
	ResultSet rs = GestionBD.ejecutaStatement(sql, con);
	
	%>
	<p><a href="index.jsp">Volver a al home</a></p>
	<table border="1">
		<tr>
			<th>Nombre</th>
			<th>Nacionalidad</th>
			<th>FNacimiento</th>
		</tr>
		
	<%while(rs.next()){%>
		<tr>
			<td><%=rs.getString("NOMBRECICLO")%></td>
			<td><%=rs.getString("NOMBREMODULO")%></td>
		</tr>
	<%}
	
	GestionBD.cerrarConexion(con);%>
	</table>
</body>
</html>