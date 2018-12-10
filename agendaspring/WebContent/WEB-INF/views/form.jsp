<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:import url="../menu.jsp"></c:import>

<h1>Lista de contatos</h1>
<table border="1">


   

<thead>

<tr>
<td>Nome</td>
<td>Email</td>
<td>Endereco</td>
<td>Data de Nascimento</td>
</tr>

</thead>
<tbody>
  <c:forEach var="contato" items="${contatos }">
    <tr>
        <td>${contato.nome }</td>
       
        <td>
        <c:if test="${not empty contato.email }">
             <a href="mailto:${contato.email}">${contato.email }</a>
        </c:if> <c:if test="${empty contato.email }">
        
               
                 E-mail não informado
               
               </c:if></td>
        <td>${contato.endereco }</td>
        <td><fmt:formatDate value="${contato.dataNascimento.time }"
             pattern="dd/MM/yyyy" /></td>
        <td><a href="/agendaspring/contatos/remover?id=${contato.id }">remover</a></td>
    </tr>
 </c:forEach>
</tbody>
</table>
</body>
</html>