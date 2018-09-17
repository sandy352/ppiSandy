<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista</title>
</head>
<body>

	<table border>
		<thead>
			<tr>
				<th>Nome:</th>
				<th>Email:</th>
				<th>Endereco:</th>
				<th>Data de Nascimento:</th>
			<tr>
		</thead>

		<tbody>
			<c:forEach var="contato" items="${contatos}">
				<tr>
					<td>${contato.nome}</td>
					<td>${contato.email}</td>
					<td>${contato.endereco}</td>
					<td>${contato.dataNascimento.time}</td>
				</tr>

			</c:forEach>

		</tbody>
	</table border>
</body>
</html>