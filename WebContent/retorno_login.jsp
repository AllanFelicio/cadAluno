<%@ page
language="java"
contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"
import="cjweb1.UsuarioDAO"
%>
<%
String cpf = request.getParameter("cpf");
String senha = request.getParameter("senha");

if( ( !cpf.equals("") ) && ( !senha.equals("") ) ){
	
	UsuarioDAO ud = new UsuarioDAO();
	
	if( ud.verificarUsuario(cpf,senha) ){
		session.setAttribute("cpf",cpf);
		session.setAttribute("senha",senha);
		response.sendRedirect("inicio.jsp");
	}else{
		String erro = "Login e/ou Senha não cadastrado";
		response.sendRedirect("index.jsp?e="+erro);
	}
	
}else{
	String erro = "Login e/ou Senha inválido";
	response.sendRedirect("index.jsp?e="+erro);
}
%>