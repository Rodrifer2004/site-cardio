<%@page import="Dao.PacienteDao"%>
<%@page import="Model.Paciente"%>

	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
	<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Insert teu tio aqui</title>
	</head>
	<body>
		
		<%
			String email = (String) session.getAttribute("email");
			if (email == null) {
				response.sendRedirect("Login.jsp");
			} else {
				out.print("Bem vindo, " + email + "<br/>");
				
			}
		%>
		
		
		
	
		Conta Bancaria:123456
		Senha do Banco:abcde
		<br> <a href="Deslogar.jsp">Deslogar</a>
	</body>
	</html>