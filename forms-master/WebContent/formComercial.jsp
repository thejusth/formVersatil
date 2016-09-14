<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" tagdir="/WEB-INF/tags/" %>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Formulário Comercial</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
<link href="css/custom.css" type="text/css" rel="stylesheet">
<link href="css/minhas_animacoes.css" type="text/css" rel="stylesheet">
	
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script>
  function logout(){
	document.location.href='logout.jsp';
  }
</script>
<title>Formulário Comercial</title>
</head>
<body>
<nav class="nav nav-tabs nav-justified">
    <ul class="nav nav-tabs">
        </li>
        <li class="active"><a href="formComercial.jsp">Formulário Comercial</a></li>
        </a>
        </li>
    </ul>
</nav>
<div class=" element-animation  text-center">

</div>

 <form:formTypes tipoForm="COM"></form:formTypes>
 
 <%
   out.println("<script>document.getElementById('nome').value = '"+session.getValue("nome")+"' ;</script>");
   out.println("<script>document.getElementById('cpf').value = '"+session.getValue("cpf")+"' ;</script>");
   out.println("<script>document.getElementById('email').value = '"+session.getValue("email")+"' ;</script>");
   out.println("<script>document.getElementById('telefone').value = '"+session.getValue("telefone")+"' ;</script>");

   out.println("<script>document.getElementById('prod1').value = 'Produto 1' ;</script>");
   out.println("<script>document.getElementById('vl1').value = 'R$50,00' ;</script>");
   out.println("<script>document.getElementById('qtd1').value = '2' ;</script>");
   out.println("<script>document.getElementById('dt1').value = '12/09/2016' ;</script>");
   
   out.println("<script>document.getElementById('prod2').value = 'Produto 2' ;</script>");
   out.println("<script>document.getElementById('vl2').value = 'R$450,00' ;</script>");
   out.println("<script>document.getElementById('qtd2').value = '3' ;</script>");
   out.println("<script>document.getElementById('dt2').value = '10/01/2016' ;</script>");
   
   out.println("<script>document.getElementById('prod3').value = 'Produto 3' ;</script>");
   out.println("<script>document.getElementById('vl3').value = 'R$1.270,00' ;</script>");
   out.println("<script>document.getElementById('qtd3').value = '2' ;</script>");
   out.println("<script>document.getElementById('dt3').value = '10/07/2016' ;</script>");
 %>
 
 <input type="button" class="btn-info btn" value="sair" onClick="logout()">
 

</body>
<!-- script references -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>

</html>