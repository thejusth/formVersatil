<%@ tag body-content="empty" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ attribute name="tipoForm" required="true" %>
<jsp:useBean id="now" scope="application" class="java.util.Date" /> 
<%
String resultado;

resultado = "<form class='form_custom text-center element-animation'>Nome: <br /><input class='form-control text-center' type='text' id='nome'> <br ><br >";
resultado = resultado + "CPF: <br /><input  class='form-control text-center'type='text' id='cpf' required> <br ><br >";
resultado = resultado + "Email: <br /><input type='email'  class='form-control text-center'id='email' required> <br ><br >";
resultado = resultado + "telefone: <br /><input type='text' class='form-control text-center' id='telefone'> <br ><br >";


   if (tipoForm == "COM"){
	   resultado = resultado + "Produto 1: <br /><input type='text'  class='form-control text-center' id='prod1'> <br >";
	   resultado = resultado + "Valor: <br /><input type='text'  class='form-control text-center' id='vl1'> <br >";
	   resultado = resultado + "Quantidade: <br /><input  class='form-control text-center' type='text' id='qtd1'> <br >";
	   resultado = resultado + "Data: <br /><input  class='form-control text-center' type='text' id='dt1'> <br ><br >";
	   
	   resultado = resultado + "Produto 2: <br /><input  class='form-control text-center' type='text' id='prod2'> <br >";
	   resultado = resultado + "Valor: <br /><input  class='form-control text-center' type='text' id='vl2'> <br >";
	   resultado = resultado + "Quantidade: <br /><input  class='form-control text-center' type='text' id='qtd2'> <br >";
	   resultado = resultado + "Data: <br /><input  class='form-control text-center' type='text' id='dt2'> <br ><br >";
	   
	   resultado = resultado + "Produto 3: <br /><input  class='form-control text-center' type='text' id='prod3'> <br >";
	   resultado = resultado + "Valor: <br /><input  class='form-control text-center' type='text' id='vl3'> <br >";
	   resultado = resultado + "Quantidade: <br /><input   class='form-control text-center'type='number' id='qtd3'> <br >";
	   resultado = resultado + "Data: <br /><input  class='form-control text-center' type='text' id='dt3'> <br ><br >";	   
	   
	   out.println(resultado);

   }
   else
   if (tipoForm == "FIN"){
	   resultado = resultado +"Fatura 1: <br /> <textarea class='form-control' rows='4' cols='50'></textarea> <br /><br />";
	   resultado = resultado +"Fatura 2: <br /> <textarea class='form-control' rows='4' cols='50'></textarea> <br /><br />";
	   resultado = resultado +"Fatura 3: <br /> <textarea class='form-control' rows='4' cols='50'></textarea> <br /><br />";			   
		
	   out.println(resultado);
   }
   else
   if (tipoForm == "SUP"){
	   resultado = resultado +"Produtos com mais garantia: <br /> <textarea rows='4' cols='50'></textarea> <br /><br />";
	   out.println(resultado);
	}
   else{
	   out.println("Parâmetro componente inválido.");
   }

 %>
