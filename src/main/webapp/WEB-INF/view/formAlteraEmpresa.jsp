<!-- Variaveis e imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/entrada?acao=AlteraEmpresa" var="linkEntradaServlet" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Alteração de empresas</title>
</head>
<body>
	<h1>Altere os dados da sua empresa abaixo</h1>
	<c:import url="logout-parcial.jsp" />
	<form action="${linkEntradaServlet}" method="post">
		<label for="input_empresa">Nome da empresa:</label>
		<input type="text" id="input_empresa" name="nome" value="${empresa.nome}" />
		
		<label for="data_empresa">Data de criação:</label>
		
		<input type="text" id="data_empresa" name="data"
		value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" />" />
		
		<input type="hidden" name="id" value="${empresa.id}" />
		<input type="submit" />
	</form>
</body>
</html>