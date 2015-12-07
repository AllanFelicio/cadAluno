package com.danilo.cjweb1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.danilo.entidade.Usuario;

public class UsuarioDao {

	private Connection con = Conexao.getConnection();
	
	public void cadastrar(Usuario usuario){
		String sql = "INSERT INTO USUARIO (nome, senha, usuario, rg, cpf, email, sexo, pais, estado, escolaridade, curso, turno) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";

		// constroe o PreparedStatement com sql
		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			preparador.setString(1, usuario.getNome());
			preparador.setString(2, usuario.getSenha());
			preparador.setString(3, usuario.getUsuario());
			preparador.setString(4, usuario.getRg());
			preparador.setString(5, usuario.getCpf());
			preparador.setString(6, usuario.getEmail());
			preparador.setString(7, usuario.getSexo());
			preparador.setString(8, usuario.getPais());
			preparador.setString(9, usuario.getEstado());
			preparador.setString(10, usuario.getEscolaridade());
			preparador.setString(11, usuario.getCurso());
			preparador.setString(12, usuario.getTurno());

			preparador.execute();
			preparador.close();

			System.out.println("cadastrado com sucesso!");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void alterar(Usuario usuario){
		String sql = "UPDATE USUARIO SET nome=?, login=?, senha=MD5(?), usuario=?, rg=?, cpf=?, email=?, sexo=?, pais=?, estado=?, escolaridade=?, curso=?, turno=?, matricula=? WHERE id=?";

		// constroe o PreparedStatement com sql
		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			preparador.setString(1, usuario.getNome());
			preparador.setString(2, usuario.getSenha());
			preparador.setString(3, usuario.getUsuario());
			preparador.setString(4, usuario.getRg());
			preparador.setString(5, usuario.getCpf());
			preparador.setString(6, usuario.getEmail());
			preparador.setString(7, usuario.getSexo());
			preparador.setString(8, usuario.getPais());
			preparador.setString(9, usuario.getEstado());
			preparador.setString(10, usuario.getEscolaridade());
			preparador.setString(11, usuario.getCurso());
			preparador.setString(12, usuario.getTurno());
			preparador.setInt(13, usuario.getId());
			
			preparador.execute();
			preparador.close();

			System.out.println("alterado com sucesso!");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
    
	public void salvar (Usuario usuario){
		if(usuario.getId()> 0){
			alterar(usuario);
		}else{
			cadastrar(usuario);
		}
	}
	
	public void excluir(Usuario usuario){
		String sql = "DELETE FROM USUARIO WHERE id=?";

		// constroe o PreparedStatement com sql
		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			preparador.setInt(1, usuario.getId());

			preparador.execute();
			preparador.close();

			System.out.println("excluido com sucesso!");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public List<Usuario> buscaTodos(){
		String sql = "SELECT * FROM USUARIO";

		List<Usuario> lista = new ArrayList<Usuario>();

		try {
			PreparedStatement preparador = con.prepareStatement(sql);

			ResultSet resultado = preparador.executeQuery();

			while(resultado.next()){
				Usuario usu = new Usuario();

				usu.setId(resultado.getInt("id")); //o valor da coluna
				usu.setNome(resultado.getString("nome"));
				usu.setSenha(resultado.getString("senha"));
				usu.setUsuario(resultado.getString("usuario"));
				usu.setRg(resultado.getString("rg"));
				usu.setCpf(resultado.getString("cpf"));
				usu.setEmail(resultado.getString("email"));
				usu.setSexo(resultado.getString("sexo"));
				usu.setPais(resultado.getString("pais"));
				usu.setEstado(resultado.getString("estado"));
				usu.setEscolaridade(resultado.getString("escolaridade"));
				usu.setCurso(resultado.getString("curso"));
				usu.setTurno(resultado.getString("turno"));

				lista.add(usu);
			}			

			preparador.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return lista;

	}
	public Usuario buscarPorId(Integer id){
		String sql="SELECT * FROM USUARIO WHERE ID = ?";
		Usuario usuario = null;
		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			preparador.setInt(1,id);

			ResultSet resultado = preparador.executeQuery();

			if(resultado.next()){
				usuario = new Usuario();
				usuario.setId(resultado.getInt("id"));
				usuario.setNome(resultado.getString("nome"));
				usuario.setSenha(resultado.getString("senha"));
				usuario.setUsuario(resultado.getString("usuario"));
				usuario.setRg(resultado.getString("rg"));
				usuario.setCpf(resultado.getString("cpf"));
				usuario.setEmail(resultado.getString("email"));
				usuario.setSexo(resultado.getString("sexo"));
				usuario.setPais(resultado.getString("pais"));
				usuario.setEstado(resultado.getString("estado"));
				usuario.setEscolaridade(resultado.getString("escolaridade"));
				usuario.setCurso(resultado.getString("curso"));
				usuario.setTurno(resultado.getString("turno"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return usuario;

	}
	public List<Usuario> buscarPorNome(String nome){
		String sql="SELECT * FROM USUARIO WHERE NOME LIKE = ?";
		List<Usuario> lista = new ArrayList<Usuario>();
		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			preparador.setString(1, "%"+nome+"%");

			ResultSet resultado = preparador.executeQuery();

			while(resultado.next()){
				Usuario usuario = new Usuario();
				usuario.setId(resultado.getInt("id"));
				usuario.setNome(resultado.getString("nome"));
				usuario.setSenha(resultado.getString("senha"));
				usuario.setUsuario(resultado.getString("usuario"));
				usuario.setRg(resultado.getString("rg"));
				usuario.setCpf(resultado.getString("cpf"));
				usuario.setEmail(resultado.getString("email"));
				usuario.setSexo(resultado.getString("sexo"));
				usuario.setPais(resultado.getString("pais"));
				usuario.setEstado(resultado.getString("estado"));
				usuario.setEscolaridade(resultado.getString("escolaridade"));
				usuario.setCurso(resultado.getString("curso"));
				usuario.setTurno(resultado.getString("turno"));
				
				lista.add(usuario);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return lista;

	}

	public Usuario autenticar(Usuario usuario){
		String sql="SELECT * FROM USUARIO WHERE LOGIN = ? AND SENHA = ?";
		Usuario usuarioRetorno=null;
		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			preparador.setString(2, usuario.getSenha());
			
			ResultSet resultado = preparador.executeQuery();

			if(resultado.next()){
				usuarioRetorno = new Usuario();
				usuarioRetorno.setId(resultado.getInt("id"));
				usuarioRetorno.setNome(resultado.getString("nome"));
				usuarioRetorno.setSenha(resultado.getString("senha"));
				usuarioRetorno.setUsuario(resultado.getString("usuario"));
				usuarioRetorno.setRg(resultado.getString("rg"));
				usuarioRetorno.setCpf(resultado.getString("cpf"));
				usuarioRetorno.setEmail(resultado.getString("email"));
				usuarioRetorno.setSexo(resultado.getString("sexo"));
				usuarioRetorno.setPais(resultado.getString("pais"));
				usuarioRetorno.setEstado(resultado.getString("estado"));
				usuarioRetorno.setEscolaridade(resultado.getString("escolaridade"));
				usuarioRetorno.setCurso(resultado.getString("curso"));
				usuarioRetorno.setTurno(resultado.getString("turno"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return usuario;

	}
	public boolean existeUsuario(Usuario usuario){
		String sql="SELECT * FROM USUARIO WHERE LOGIN = ? AND SENHA = ?";
		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			preparador.setString(2, usuario.getSenha());
			
			ResultSet resultado = preparador.executeQuery();
			
			return resultado.next();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}
}
