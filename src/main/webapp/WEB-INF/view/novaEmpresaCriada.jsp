<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<title>Empresas cadastradas</title>
</head>
<body>
	<c:if test="${not empty empresa}">
		<h1>A empresa ${empresa} foi cadastrada com sucesso!</h1>
	</c:if>
	<c:if test="${empty empresa}">
		<h1>A empresa não foi cadastrada corretamente pois o campo está vazio.</h1>
	</c:if>
	<c:import url="logout-parcial.jsp" />
</body>
</html>