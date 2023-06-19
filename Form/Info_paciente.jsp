	<%@page import="Dao.Info_pacienteDao"%>
	<%@page import="Model.Info_paciente"%>

	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
	
    boolean ok = false;
    
    Info_paciente info_paciente = new Info_paciente();
    info_paciente.setNome_pai(request.getParameter(""));
    info_paciente.setNome_mae(request.getParameter(""));
    info_paciente.setTipo_sangue(request.getParameter(""));
    info_paciente.setTelefone_emergencia(request.getParameter(""));
    
	Info_pacienteDao info_pacienteDao = new Info_pacienteDao();
	ok = info_pacienteDao.InserirInfo_paciente(info_paciente);
	
	if(ok){
		
	%>
	<script type="text/javascript">
	alert("Informações do Paciente Cadastradas Com Sucesso!");
	window.location.href=".jsp";
	</script>
	<%}else{ %>
	<script type="text/javascript">
	alert("Erro ao Cadastrar as Informações do Paciente!");
	window.location.href=".jsp";
	</script>
	<%} %>
