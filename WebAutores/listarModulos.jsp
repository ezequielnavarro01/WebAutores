<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="instituto.ManagerBD"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Módulos profesionales</title>
<link rel="stylesheet" type="text/css" href="css/estilos.css">
</head>
<body>
	<%! private final static String sql =
	" SELECT C.NOMBRECICLO, M.NOMBREMODULO FROM MODULO M JOIN CICLO C USING (IDCICLO) ORDER BY C.NOMBRECICLO, M.NOMBREMODULO";
	%>
	<%
	Connection con = ManagerBD.crearConexion();	
	ResultSet rs = ManagerBD.ejecutaStatement(sql, con);
	
	%>
	<p><a href="index.jsp">Volver a la home</a></p>
	<table border="1">
		<tr>
			<th>Título</th>
			<th>Módulo</th>
		</tr>
		
	<%while(rs.next()){%>
		<tr>
			<td><%=rs.getString("NOMBRECICLO")%></td>
			<td><%=rs.getString("NOMBREMODULO")%></td>
		</tr>
	<%}
	ManagerBD.cerrarConexion(con);%>
	</table>
</body>
</html>