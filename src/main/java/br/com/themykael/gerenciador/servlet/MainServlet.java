package br.com.themykael.gerenciador.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.themykael.gerenciador.acao.Acao;

//@WebServlet("/entrada")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String paramAcao = request.getParameter("acao");
		
		String nomeDaClasse = "br.com.themykael.gerenciador.acao." + paramAcao;

		String nomeAcao = null;
		try {
			Class classe = Class.forName(nomeDaClasse);
			Acao acao = (Acao) classe.newInstance();
			nomeAcao = acao.executa(request, response);
		} catch (ClassNotFoundException | InstantiationException | IllegalAccessException
				| ServletException | IOException e) {
			throw new ServletException(e);
		}

		String[] tipoEEndereco = nomeAcao.split(":");

		if (tipoEEndereco[0].equals("forward")) {
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("WEB-INF/view/" + tipoEEndereco[1]);
			requestDispatcher.forward(request, response);
		} else if (tipoEEndereco[0].equals("redirect")) {
			response.sendRedirect(tipoEEndereco[1]);
		}

	}

}