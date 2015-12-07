<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java.*"%>
<%@ page import="com.danilo.cjweb1.*" %>
<%@ page import="com.danilo.entidade.*" %>
<%@ page import="com.danilo.controller.*" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; Charset=UTF=8">
	</head>
		<title>Consulta de Aluno</title>

		<style type="text/css">
			body{margin:0; padding:0; background:url("img/bg.jpg") no-repeat; background-size:cover;}

			#header {
			/*background-color:#146DFF;*/
			color:white;
			text-align:center;
			padding:5px;
			}
		</style>

<body>

    <link rel="stylesheet" type="text/css" href="css/estiloConsulta.css">
    <form name="cad_user" method="post" action="AlunoServlet.java">
    <div id="header" align="center"> 
      <img src="img\logo_fnr.png">
    </div>

    <div align="center">
        <h1>Consulta de Aluno</h1>
      </div>
    
   
      <a href="cadastroAluno.html"><img id="addbig" src="img\addbig.png"></a>
     <br></br>
    
   <div id="pesq">

       <center>
          <label>
     
           Pesquisar: 

          </label>
          <input id="pesquisar" type="text" name="pesquisar"  placeholder="Digite o nome do aluno"></input>
          <img id="pesquisarimg" src="img\pesquisar.png"></img> 
        
        </center>
          
         <br/><br/>
        
   </div>
    
  <div>
  
  
  <table border="2" width="100%">    
    <tr>
      <td>ID</td>
      <td>Usuário</td>
      <td width="70%">Nome</td>
      <td>Matricula</td>
      <td>Status</td>
      <td>Alterar</td>
      <td>Excluir</td>
    </tr>


	UsuarioDao usuarioDao = new UsuarioDao();
    UsuarioDao it = new UsuarioDao(); 
    it.buscaTodos();
       while (it.hasNext()){ 
	Usuario u = (Usuario) it.next(); 
     out.println("<TR><TD>"+u.getUsuario()+"</TD><TD>"
	+u.getNome()+"</TD><TD>"
	+u.getRg()+"</TD><TR>" );
	%> 
    <!-- img src='img/alterar.png' -->
	<!-- //img src='img/excluir.png' -->    
    


//List<Usuario> lista = new List<Usuario>();

for(Usuario u:lista){
	 out.println("<TR><TD>"+u.getUsuario()+"</TD><TD>"
	+u.getNome()+"</TD><TD>"
	+u.getRg()+"</TD><TR>");
}

%>
    
</div>

  </table>
	</body>
	
		<!-- Começo do rodapé --> 
  <br/><br/>
 <br/><br/>
 <br/><br/>
 <br/><br/>
 <div id="rodape" class="rodape">
		<p>  <center>&copy Equipe de Autores:<br/>
    Allan Carlos<br/>
    Danilo Correia<br/>
    Elízio Neto<br/>
    Joanna Maressith<br/>2015 - Faculdade Nova Roma - Todos os Direitos Reservados </center>.</p></div><!-- Fim do Rodapé --> 

</html>