<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
  //Destroi as sessions
  session.invalidate();
  out.println("<script>document.location.href='index.html';</script>");
%>