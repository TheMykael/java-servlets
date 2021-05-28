<!-- Variaveis e imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/entrada?acao=NovaEmpresa" var="linkEntradaServlet" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de empresas</title>
</head>
<body>
	<h1>Cadastre sua empresa abaixo</h1>
	<c:import url="logout-parcial.jsp" />
	<form action="${linkEntradaServlet}" method="post">
		<label for="input_empresa">Nome da empresa:</label>
		<input type="text" id="input_empresa" name="nome" />
		
		<label for="data_empresa">Data de criação:</label>
		<input type="text" id="data_empresa" name="data" />
		
		<input type="submit" />
	</form>
</body>
</html>