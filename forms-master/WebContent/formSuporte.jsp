<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" tagdir="/WEB-INF/tags/" %>         
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
<link href="css/custom.css" type="text/css" rel="stylesheet">
<link href="css/minhas_animacoes.css" type="text/css" rel="stylesheet">
<title>Formulário Suporte</title>
<script>
  function logout(){
	document.location.href='logout.jsp';
  }
</script>
</head>
<body>
 <form:formTypes tipoForm="SUP"></form:formTypes>
 <%
   out.println("<script>document.getElementById('nome').value = '"+session.getValue("nome")+"' ;</script>");
   out.println("<script>document.getElementById('cpf').value = '"+session.getValue("cpf")+"' ;</script>");
   out.println("<script>document.getElementById('email').value = '"+session.getValue("email")+"' ;</script>");
   out.println("<script>document.getElementById('telefone').value = '"+session.getValue("telefone")+"' ;</script>");
 %>
 
 <input type="button" value="sair" onClick="logout()"> 
</body>
<!-- script references -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
</html>