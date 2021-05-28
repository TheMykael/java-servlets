package br.com.themykael.gerenciador.servlet;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

//@WebFilter("/entrada")
public class MonitoramentoFilter implements Filter {
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
	}
	
	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("MonitoramentoFilter");
		
		long tempoInicial = System.currentTimeMillis();
		String acao = request.getParameter("acao");
		
		chain.doFilter(request, response);
		
		long tempoFinal = System.currentTimeMillis();
		System.out.println("Tempo de execu��o da a��o: " + acao + " -> " + (tempoFinal - tempoInicial));
	}
	
}