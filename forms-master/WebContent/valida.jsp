<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
<link href="css/custom.css" type="text/css" rel="stylesheet">
<link href="css/minhas_animacoes.css" type="text/css" rel="stylesheet">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script>
  function formComercial(){
    document.location.href='formComercial.jsp';
  }
  
  function formFinanceiro(){
	    document.location.href='formFinanceiro.jsp';
  }
  
  function formSuporte(){
	    document.location.href='formSuporte.jsp';
  }
  
  function logout(){
		document.location.href='logout.jsp';
	  }
  function homepage(){
	  document.location.href='index.html'
  }
  
</script>

<title>Insert title here</title>
</head>
<body>

<%
	
   String nome = request.getParameter("login");
   String senha = request.getParameter("pass");
   String valida = "Login ou senha inválidos";
   
if(nome==null){
	
	out.println("<h1 class='warning'>Você não está logado.<h1>");
	out.println("<input type='button' class='btn-info btn element-animation'value='Home Page' onclick='homepage()''>");	
	
}
else{
   

if(nome.equals("jose") && senha.equals("senha")){ 

	session.setAttribute("logado", "s");
	session.setAttribute("nome", "José Antônio da Silva");
	session.setAttribute("cpf", "405130786-05");
	session.setAttribute("email", "jose.antonio@gmail.com");
	session.setAttribute("telefone", "(19)98765-4565");
	
	out.println("Olá José, você está logado! <input type='button' class='btn btn' value='sair' onClick='logout()'> <br /> <h2> Escolha um formulário: </h2>");
	//out.println("<script>document.location.href='formComercial.jsp';</script>");
	out.println("<input type='button' class='btn-warning btn element-animation' value='Form Comercial' onclick='formComercial()'>");
	out.println("<input type='button' class='btn-info btn element-animation' value='Form Financeiro' onclick='formFinanceiro()'>");
	out.println("<input type='button' class='btn-success btn element-animation'value='Form Suporte' onclick='formSuporte()'>");	

	
}
else
{
	out.println("<script>alert('Login ou senha inválidos.');</script>");
	session.setAttribute("logado", "n");	
	out.println("<script>document.location.href='index.html';</script>"); 
}
}
%>


</body>
</html>