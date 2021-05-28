<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,br.com.themykael.gerenciador.modelo.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/entrada" var="linkEntradaServlet" />
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<title>Lista de empresas cadastradas</title>
</head>
<body>
	<h1>Usuário logado: ${usuarioLogado.login}</h1>
	<c:import url="logout-parcial.jsp" />
	<h2>Lista de empresas cadastradas:</h2>
	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<c:if test="${not empty empresa.nome}">
				<li>${empresa.nome} - Data de criação:
					<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" />
					<a href="${linkEntradaServlet}?acao=MostraEmpresa&id=${empresa.id}">Editar</a>
					<a href="${linkEntradaServlet}?acao=RemoveEmpresa&id=${empresa.id}">Remover</a>
				</li>
			</c:if>
		</c:forEach>
	</ul>
</body>
</html>