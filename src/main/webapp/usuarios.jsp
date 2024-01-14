<?xml version="1.0" encoding="ISO-8859-1" ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Visualização de Usuários</title>
</head>
<body>

<%@ page import="br.com.crudjava.DAO.UsuarioDAO, br.com.crudjava.*, java.util.*"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
 <h1>Listagem de Usuários</h1>
 
 <% List<Usuario> lista = UsuarioDAO.getAllUsuarios();
 	request.setAttribute("lista", lista);
 
 
 
 %>

<table border="1">
  <tr>
  <th>ID</th>
  <th>Nome</th>
  <th>Senha</th>
  <th>Email</th>
  <th>Sexo</th>
  <th>Usucol</th>
  <th>Editar</th>
  <th>Excluir</th>
  </tr>
 
 <c:forEach items="${lista}" var="usuario">
 
 
 
 
  <tr>
  
  <td>${usuario.getId()}</td>
  <td>${usuario.getNome()}</td>
  <td>${usuario.getSenha()}</td>
  <td>${usuario.getEmail()}</td>
  <td>${usuario.getSexo()}</td>
  <td>${usuario.getUsucol()}</td>
  <td><a href="editform.jsp">Editar</a></td>
  <td><a href="#">Excluir</a></td>
  
  
  </tr>
 
 </c:forEach>

 

 
</table>

	<br>
	
	<a href="#">Adicionar novo Usuário</a>
	
	
	</br>



</body>
</html>