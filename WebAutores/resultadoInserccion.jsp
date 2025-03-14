<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h1>Resultado de la inserción del autor</h1>

	<%
	String mensaje = request.getParameter("mensaje"); 
	if ("exito".equals(mensaje)) {
	%>
	<p>El autor ha sido insertado correctamente.</p>
	<%
	} else {
	%>
	<p>Error al insertar el autor.</p>
	<%
	}
	%>

	<br>
	<a href="index.html">Volver al índice</a>
</body>
</html>