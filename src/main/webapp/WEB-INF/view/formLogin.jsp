<!-- Variaveis e imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/entrada?acao=Login" var="linkEntradaServlet" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login de usuários</title>
</head>
<body>
	<h1>Realize seu login abaixo</h1>
	<form action="${linkEntradaServlet}" method="post">
		<label for="input_login">Login:</label>
		<input type="text" id="input_login" name="login" />
		
		<label for="input_senha">Senha:</label>
		<input type="password" id="input_senha" name="senha" />
		
		<input type="submit" />
	</form>
</body>
</html>