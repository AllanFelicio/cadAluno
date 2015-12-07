package com.danilo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.danilo.cjweb1.UsuarioDao;
import com.danilo.entidade.Usuario;


@WebServlet("/usucontroller.do")
public class UsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UsuarioController() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		System.out.println("chamando method GET");
		
		UsuarioDao usuarioDao = new UsuarioDao();
		List<Usuario> lista = usuarioDao.buscaTodos();
		
		PrintWriter saida = response.getWriter();
		saida.println(lista);
		
		//String nome = request.getParameter("nome");
		//String empresa = request.getParameter("empresa");
		//System.out.println("Nome: "+ nome);
		
		//PrintWriter saida = response.getWriter();
		//saida.println("nome: "+ nome +"empresa: " + empresa);
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("chamando method POST");
		
		//recebe dados na tela
		//String id = request.getParameter("id");
		String nome = request.getParameter("nome");
		String senha = request.getParameter("senha");
		String usuario = request.getParameter("usuario");
		String rg = request.getParameter("rg");
		String email = request.getParameter("email");
		String sexo = request.getParameter("sexo");
		String pais = request.getParameter("paises");
		String estado = request.getParameter("estado");
		String curso = request.getParameter("curso");
		String escolaridade = request.getParameter("escolaridade");
		String turno = request.getParameter("turno");
		String cpf = request.getParameter("cpf");
		
		
		
		//cria o objeto e seta os valores vindo da tela
		Usuario usuari = new Usuario();
		
		//if(id!=""){
			//usuari.setId(Integer.parseInt(id));
		//}
		usuari.setNome(nome);
		usuari.setCpf(cpf);
		usuari.setUsuario(usuario);
		usuari.setCurso(curso);
		usuari.setEmail(email);
		usuari.setEscolaridade(escolaridade);
		usuari.setEstado(estado);
		usuari.setRg(rg);
		usuari.setPais(pais);
		usuari.setSexo(sexo);
		usuari.setTurno(turno);
		usuari.setSenha(senha);
		
		//pede pra salvar no banco
		UsuarioDao usuarioDao = new UsuarioDao();
			
		usuarioDao.cadastrar(usuari);
		
		PrintWriter saida = response.getWriter();
		saida.println("salvo com sucesso!");
		
		
		
		//doGet(request, response);
	

	}
	
	protected void pesquisa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("chamando method pesquisa");
		
		//recebe dados na tela
		//String id = request.getParameter("id");
		String nome = request.getParameter("nome");
		String senha = request.getParameter("senha");
		String usuario = request.getParameter("usuario");
		String rg = request.getParameter("rg");
		String email = request.getParameter("email");
		String sexo = request.getParameter("sexo");
		String pais = request.getParameter("paises");
		String estado = request.getParameter("estado");
		String curso = request.getParameter("curso");
		String escolaridade = request.getParameter("escolaridade");
		String turno = request.getParameter("turno");
		String cpf = request.getParameter("cpf");
		
		
		
		//cria o objeto e seta os valores vindo da tela
		Usuario usuari = new Usuario();
		
		//if(id!=""){
			//usuari.setId(Integer.parseInt(id));
		//}
		usuari.setNome(nome);
		usuari.setCpf(cpf);
		usuari.setUsuario(usuario);
		usuari.setCurso(curso);
		usuari.setEmail(email);
		usuari.setEscolaridade(escolaridade);
		usuari.setEstado(estado);
		usuari.setRg(rg);
		usuari.setPais(pais);
		usuari.setSexo(sexo);
		usuari.setTurno(turno);
		usuari.setSenha(senha);
		
		//pede pra salvar no banco
		UsuarioDao usuarioDao = new UsuarioDao();
			
		usuarioDao.alterar(usuari);
		
		PrintWriter saida = response.getWriter();
		saida.println("salvo com sucesso!");
		
		
		
		//doGet(request, response);
	

	}
	
	protected void atualizar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("chamando method atualizar");
		
		//recebe dados na tela
		//String id = request.getParameter("id");
		String nome = request.getParameter("nome");
		String senha = request.getParameter("senha");
		String usuario = request.getParameter("usuario");
		String rg = request.getParameter("rg");
		String email = request.getParameter("email");
		String sexo = request.getParameter("sexo");
		String pais = request.getParameter("paises");
		String estado = request.getParameter("estado");
		String curso = request.getParameter("curso");
		String escolaridade = request.getParameter("escolaridade");
		String turno = request.getParameter("turno");
		String cpf = request.getParameter("cpf");
		
		
		
		//cria o objeto e seta os valores vindo da tela
		Usuario usuari = new Usuario();
		
		//if(id!=""){
			//usuari.setId(Integer.parseInt(id));
		//}
		usuari.setNome(nome);
		usuari.setCpf(cpf);
		usuari.setUsuario(usuario);
		usuari.setCurso(curso);
		usuari.setEmail(email);
		usuari.setEscolaridade(escolaridade);
		usuari.setEstado(estado);
		usuari.setRg(rg);
		usuari.setPais(pais);
		usuari.setSexo(sexo);
		usuari.setTurno(turno);
		usuari.setSenha(senha);
		
		//pede pra salvar no banco
		UsuarioDao usuarioDao = new UsuarioDao();
			
		usuarioDao.alterar(usuari);
		
		PrintWriter saida = response.getWriter();
		saida.println("salvo com sucesso!");
		
		
		
		//doGet(request, response);
	

	}
	}
