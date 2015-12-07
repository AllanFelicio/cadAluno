package com.danilo.test;

import java.util.List;

import com.danilo.cjweb1.UsuarioDao;
import com.danilo.entidade.Usuario;

public class TestUsuarioDao {

	public static void main(String[] args) {
		
		//testCadastrar();
		//testAlterar();
		//testExcluir();
		//testBucarTodos();
		//testAutenticar();
		testBuscarPorId();

	}

	private static void testCadastrar() {
		Usuario usu = new Usuario();
		usu.setNome("danilo");
		usu.setSenha("dan123");
		
		UsuarioDao usuDao = new UsuarioDao();
		usuDao.cadastrar(usu);
	}
	
	private static void testAlterar(){
		Usuario usu = new Usuario();
		usu.setId(1);
		usu.setNome("jao da silva");
		usu.setSenha("js123");
		
		UsuarioDao usuDao = new UsuarioDao();
		usuDao.alterar(usu);
	}
	
	private static void testExcluir(){
		Usuario usu = new Usuario();
		usu.setId(1);
		
		UsuarioDao usuDao = new UsuarioDao();
		usuDao.excluir(usu);
	}
	
	private static void testBucarTodos(){
		UsuarioDao usuDao = new UsuarioDao();
		List<Usuario> listaResultado = usuDao.buscaTodos();
		
		for(Usuario u: listaResultado){
			System.out.println(u.getId()+" "+u.getNome()+" "+u.getNome()+" "+u.getSenha());
		}
	}
	
	public static void  testAutenticar(){
		Usuario usuario = new Usuario();
		usuario.setSenha("dan123");
		
		UsuarioDao usuDao = new UsuarioDao();
		System.out.println(usuDao.autenticar(usuario));
				
	}
	
	public static void  testBuscarPorId(){
		UsuarioDao usuarioDao = new UsuarioDao();
		
		Usuario usuRetorno = usuarioDao.buscarPorId(23);
		if (usuRetorno!=null){
			System.out.println("nome: "+usuRetorno.getNome());
		}
				
	}

}


