	<%@page import="Dao.FormularioDao"%>
	<%@page import="Model.Formulario"%>
	
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	
	<%
	
    boolean ok = false;
    
    Formulario formulario = new Formulario();
    formulario.setPergunta1(request.getParameter(""));
    formulario.setPergunta2(request.getParameter(""));
    formulario.setPergunta3(request.getParameter(""));
    formulario.setPergunta4(request.getParameter(""));
    formulario.setPergunta5(request.getParameter(""));
    formulario.setPergunta6(request.getParameter(""));
    formulario.setPergunta7(request.getParameter(""));
    
	FormularioDao formularioDao = new FormularioDao();
	ok = formularioDao.InserirFormulario(formulario);
	
	if(ok){
		
	%>
	<script type="text/javascript">
	alert("Informações do Formulario cadastradas Com Sucesso!");
	window.location.href=".jsp";
	</script>
	<%}else{ %>
	<script type="text/javascript">
	alert("Erro ao Cadastrar as Infomações do Formulario!");
	window.location.href=".jsp";
	</script>
	<%} %>