<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
	<head>		
	</head>
		<title>Cadastro de Novos Alunos</title>

		<style type="text/css">
			body{margin:0; padding:0; background:url("img/bg.jpg") no-repeat; background-size:cover;}

			#header {
			/*background-color:#146DFF;*/
			color:white;
			text-align:center;
			padding:5px;
			}
		</style>
	


	</style>
	
	<body>

		<div id="header" align="center"> 
			<img src="img\faculdade-nova-roma-topo_novo.png">
		</div>

		<link rel="stylesheet" type="text/css" href="css/estilo.css">
		<script type ="text/javascript" src="script/validacoes.js"></script>
		<form action="usucontroller.do" method="post">
			<div align="center">
				<h1 class="cad_usuario">Cadastro de Usu�rio</h1>
			</div>
			<br>
			<fieldset>
				<label>
					<span>Us�ario: </span>
					<input id="usuario" type="text" name="usuario" placeholder="At� 10 Caracteres" maxlength="10" required >
				</label>
				<label>
					<span>Nome: </span>
					<input id="nome" type="text" name="nome" placeholder="At� 40 Caracteres" onkeyup="validar(this,'text');" size="40" maxlength="40" required >
				</label>
				<label>
					<span>RG: </span>
					<input id="rg" type="text" name="rg" placeholder="At� 7 Caracteres" onkeypress="mascara(this, '####-###')" onKeyUp="javascript:numero(this);" size="40" maxlength="8" required >
				</label>
				<label>
					<span>CPF: </span>
					<input id="cpf" type="text" name="cpf" placeholder="At� 11 Caracteres" onKeyUp="javascript:numero(this);" onkeypress="mascara(this, '#########-##')" size="40" maxlength="12" required >
				</label>
				<label>
					<span>E-Mail </span>
					<input id="email" type="email" name="nome" placeholder="Digite seu E-mail" size="40" maxlength="40" required>
				</label>
				<label>
					<span>Sexo: </span>
					Feminino <input type="radio" name="sexo" id="F"	onclick="getRadios();">
					Masculino <input type="radio" name="sexo" id="M"onclick="getRadios();">
				</label>
				<label>
					<span>Pa�s </span>
					<select name="paises" id="paises" style="font-size:12px;">
						<option value="Brasil" selected="selected">Brasil</option>
						<option value="Afeganist�o">Afeganist�o</option>
						<option value="�frica do Sul">�frica do Sul</option>
						<option value="Alb�nia">Alb�nia</option>
						<option value="Alemanha">Alemanha</option>
						<option value="Andorra">Andorra</option>
						<option value="Angola">Angola</option>
						<option value="Anguilla">Anguilla</option>
						<option value="Antilhas Holandesas">Antilhas Holandesas</option>
						<option value="Ant�rctida">Ant�rctida</option>
						<option value="Ant�gua e Barbuda">Ant�gua e Barbuda</option>
						<option value="Argentina">Argentina</option>
						<option value="Arg�lia">Arg�lia</option>
						<option value="Arm�nia">Arm�nia</option>
						<option value="Aruba">Aruba</option>
						<option value="Ar�bia Saudita">Ar�bia Saudita</option>
						<option value="Austr�lia">Austr�lia</option>
						<option value="�ustria">�ustria</option>
						<option value="Azerbaij�o">Azerbaij�o</option>
						<option value="Bahamas">Bahamas</option>
						<option value="Bahrein">Bahrein</option>
						<option value="Bangladesh">Bangladesh</option>
						<option value="Barbados">Barbados</option>
						<option value="Belize">Belize</option>
						<option value="Benim">Benim</option>
						<option value="Bermudas">Bermudas</option>
						<option value="Bielorr�ssia">Bielorr�ssia</option>
						<option value="Bol�via">Bol�via</option>
						<option value="Botswana">Botswana</option>
						<option value="Brunei">Brunei</option>
						<option value="Bulg�ria">Bulg�ria</option>
						<option value="Burkina Faso">Burkina Faso</option>
						<option value="Burundi">Burundi</option>
						<option value="But�o">But�o</option>
						<option value="B�lgica">B�lgica</option>
						<option value="B�snia e Herzegovina">B�snia e Herzegovina</option>
						<option value="Cabo Verde">Cabo Verde</option>
						<option value="Camar�es">Camar�es</option>
						<option value="Camboja">Camboja</option>
						<option value="Canad�">Canad�</option>
						<option value="Catar">Catar</option>
						<option value="Cazaquist�o">Cazaquist�o</option>
						<option value="Chade">Chade</option>
						<option value="Chile">Chile</option>
						<option value="China">China</option>
						<option value="Chipre">Chipre</option>
						<option value="Col�mbia">Col�mbia</option>
						<option value="Comores">Comores</option>
						<option value="Coreia do Norte">Coreia do Norte</option>
						<option value="Coreia do Sul">Coreia do Sul</option>
						<option value="Costa do Marfim">Costa do Marfim</option>
						<option value="Costa Rica">Costa Rica</option>
						<option value="Cro�cia">Cro�cia</option>
						<option value="Cuba">Cuba</option>
						<option value="Dinamarca">Dinamarca</option>
						<option value="Djibouti">Djibouti</option>
						<option value="Dominica">Dominica</option>
						<option value="Egito">Egito</option>
						<option value="El Salvador">El Salvador</option>
						<option value="Emirados �rabes Unidos">Emirados �rabes Unidos</option>
						<option value="Equador">Equador</option>
						<option value="Eritreia">Eritreia</option>
						<option value="Esc�cia">Esc�cia</option>
						<option value="Eslov�quia">Eslov�quia</option>
						<option value="Eslov�nia">Eslov�nia</option>
						<option value="Espanha">Espanha</option>
						<option value="Estados Federados da Micron�sia">Estados Federados da Micron�sia</option>
						<option value="Estados Unidos">Estados Unidos</option>
						<option value="Est�nia">Est�nia</option>
						<option value="Eti�pia">Eti�pia</option>
						<option value="Fiji">Fiji</option>
						<option value="Filipinas">Filipinas</option>
						<option value="Finl�ndia">Finl�ndia</option>
						<option value="Fran�a">Fran�a</option>
						<option value="Gab�o">Gab�o</option>
						<option value="Gana">Gana</option>
						<option value="Ge�rgia">Ge�rgia</option>
						<option value="Gibraltar">Gibraltar</option>
						<option value="Granada">Granada</option>
						<option value="Gronel�ndia">Gronel�ndia</option>
						<option value="Gr�cia">Gr�cia</option>
						<option value="Guadalupe">Guadalupe</option>
						<option value="Guam">Guam</option>
						<option value="Guatemala">Guatemala</option>
						<option value="Guernesei">Guernesei</option>
						<option value="Guiana">Guiana</option>
						<option value="Guiana Francesa">Guiana Francesa</option>
						<option value="Guin�">Guin�</option>
						<option value="Guin� Equatorial">Guin� Equatorial</option>
						<option value="Guin�-Bissau">Guin�-Bissau</option>
						<option value="G�mbia">G�mbia</option>
						<option value="Haiti">Haiti</option>
						<option value="Honduras">Honduras</option>
						<option value="Hong Kong">Hong Kong</option>
						<option value="Hungria">Hungria</option>
						<option value="Ilha Bouvet">Ilha Bouvet</option>
						<option value="Ilha de Man">Ilha de Man</option>
						<option value="Ilha do Natal">Ilha do Natal</option>
						<option value="Ilha Heard e Ilhas McDonald">Ilha Heard e Ilhas McDonald</option>
						<option value="Ilha Norfolk">Ilha Norfolk</option>
						<option value="Ilhas Cayman">Ilhas Cayman</option>
						<option value="Ilhas Cocos (Keeling)">Ilhas Cocos (Keeling)</option>
						<option value="Ilhas Cook">Ilhas Cook</option>
						<option value="Ilhas Fero�">Ilhas Fero�</option>
						<option value="Ilhas Ge�rgia do Sul e Sandwich do Sul">Ilhas Ge�rgia do Sul e Sandwich do Sul</option>
						<option value="Ilhas Malvinas">Ilhas Malvinas</option>
						<option value="Ilhas Marshall">Ilhas Marshall</option>
						<option value="Ilhas Menores Distantes dos Estados Unidos">Ilhas Menores Distantes dos Estados Unidos</option>
						<option value="Ilhas Salom�o">Ilhas Salom�o</option>
						<option value="Ilhas Virgens Americanas">Ilhas Virgens Americanas</option>
						<option value="Ilhas Virgens Brit�nicas">Ilhas Virgens Brit�nicas</option>
						<option value="Ilhas �land">Ilhas �land</option>
						<option value="Indon�sia">Indon�sia</option>
						<option value="Inglaterra">Inglaterra</option>
						<option value="�ndia">�ndia</option>
						<option value="Iraque">Iraque</option>
						<option value="Irlanda do Norte">Irlanda do Norte</option>
						<option value="Irlanda">Irlanda</option>
						<option value="Ir�">Ir�</option>
						<option value="Isl�ndia">Isl�ndia</option>
						<option value="Israel">Israel</option>
						<option value="It�lia">It�lia</option>
						<option value="I�men">I�men</option>
						<option value="Jamaica">Jamaica</option>
						<option value="Jap�o">Jap�o</option>
						<option value="Jersey">Jersey</option>
						<option value="Jord�nia">Jord�nia</option>
						<option value="Kiribati">Kiribati</option>
						<option value="Kuwait">Kuwait</option>
						<option value="Laos">Laos</option>
						<option value="Lesoto">Lesoto</option>
						<option value="Let�nia">Let�nia</option>
						<option value="Lib�ria">Lib�ria</option>
						<option value="Liechtenstein">Liechtenstein</option>
						<option value="Litu�nia">Litu�nia</option>
						<option value="Luxemburgo">Luxemburgo</option>
						<option value="L�bano">L�bano</option>
						<option value="L�bia">L�bia</option>
						<option value="Macau">Macau</option>
						<option value="Maced�nia">Maced�nia</option>
						<option value="Madag�scar">Madag�scar</option>
						<option value="Malawi">Malawi</option>
						<option value="Maldivas">Maldivas</option>
						<option value="Mali">Mali</option>
						<option value="Malta">Malta</option>
						<option value="Mal�sia">Mal�sia</option>
						<option value="Marianas Setentrionais">Marianas Setentrionais</option>
						<option value="Marrocos">Marrocos</option>
						<option value="Martinica">Martinica</option>
						<option value="Maurit�nia">Maurit�nia</option>
						<option value="Maur�cia">Maur�cia</option>
						<option value="Mayotte">Mayotte</option>
						<option value="Mold�via">Mold�via</option>
						<option value="Mong�lia">Mong�lia</option>
						<option value="Montenegro">Montenegro</option>
						<option value="Montserrat">Montserrat</option>
						<option value="Mo�ambique">Mo�ambique</option>
						<option value="Myanmar">Myanmar</option>
						<option value="M�xico">M�xico</option>
						<option value="M�naco">M�naco</option>
						<option value="Nam�bia">Nam�bia</option>
						<option value="Nauru">Nauru</option>
						<option value="Nepal">Nepal</option>
						<option value="Nicar�gua">Nicar�gua</option>
						<option value="Nig�ria">Nig�ria</option>
						<option value="Niue">Niue</option>
						<option value="Noruega">Noruega</option>
						<option value="Nova Caled�nia">Nova Caled�nia</option>
						<option value="Nova Zel�ndia">Nova Zel�ndia</option>
						<option value="N�ger">N�ger</option>
						<option value="Om�">Om�</option>
						<option value="Palau">Palau</option>
						<option value="Palestina">Palestina</option>
						<option value="Panam�">Panam�</option>
						<option value="Papua-Nova Guin�">Papua-Nova Guin�</option>
						<option value="Paquist�o">Paquist�o</option>
						<option value="Paraguai">Paraguai</option>
						<option value="Pa�s de Gales">Pa�s de Gales</option>
						<option value="Pa�ses Baixos">Pa�ses Baixos</option>
						<option value="Peru">Peru</option>
						<option value="Pitcairn">Pitcairn</option>
						<option value="Polin�sia Francesa">Polin�sia Francesa</option>
						<option value="Pol�nia">Pol�nia</option>
						<option value="Porto Rico">Porto Rico</option>
						<option value="Portugal">Portugal</option>
						<option value="Quirguist�o">Quirguist�o</option>
						<option value="Qu�nia">Qu�nia</option>
						<option value="Reino Unido">Reino Unido</option>
						<option value="Rep�blica Centro-Africana">Rep�blica Centro-Africana</option>
						<option value="Rep�blica Checa">Rep�blica Checa</option>
						<option value="Rep�blica Democr�tica do Congo">Rep�blica Democr�tica do Congo</option>
						<option value="Rep�blica do Congo">Rep�blica do Congo</option>
						<option value="Rep�blica Dominicana">Rep�blica Dominicana</option>
						<option value="Reuni�o">Reuni�o</option>
						<option value="Rom�nia">Rom�nia</option>
						<option value="Ruanda">Ruanda</option>
						<option value="R�ssia">R�ssia</option>
						<option value="Saara Ocidental">Saara Ocidental</option>
						<option value="Saint Martin">Saint Martin</option>
						<option value="Saint-Barth�lemy">Saint-Barth�lemy</option>
						<option value="Saint-Pierre e Miquelon">Saint-Pierre e Miquelon</option>
						<option value="Samoa Americana">Samoa Americana</option>
						<option value="Samoa">Samoa</option>
						<option value="Santa Helena, Ascens�o e Trist�o da Cunha">Santa Helena, Ascens�o e Trist�o da Cunha</option>
						<option value="Santa L�cia">Santa L�cia</option>
						<option value="Senegal">Senegal</option>
						<option value="Serra Leoa">Serra Leoa</option>
						<option value="Seychelles">Seychelles</option>
						<option value="Singapura">Singapura</option>
						<option value="Som�lia">Som�lia</option>
						<option value="Sri Lanka">Sri Lanka</option>
						<option value="Suazil�ndia">Suazil�ndia</option>
						<option value="Sud�o">Sud�o</option>
						<option value="Suriname">Suriname</option>
						<option value="Su�cia">Su�cia</option>
						<option value="Su��a">Su��a</option>
						<option value="Svalbard e Jan Mayen">Svalbard e Jan Mayen</option>
						<option value="S�o Crist�v�o e Nevis">S�o Crist�v�o e Nevis</option>
						<option value="S�o Marino">S�o Marino</option>
						<option value="S�o Tom� e Pr�ncipe">S�o Tom� e Pr�ncipe</option>
						<option value="S�o Vicente e Granadinas">S�o Vicente e Granadinas</option>
						<option value="S�rvia">S�rvia</option>
						<option value="S�ria">S�ria</option>
						<option value="Tadjiquist�o">Tadjiquist�o</option>
						<option value="Tail�ndia">Tail�ndia</option>
						<option value="Taiwan">Taiwan</option>
						<option value="Tanz�nia">Tanz�nia</option>
						<option value="Terras Austrais e Ant�rticas Francesas">Terras Austrais e Ant�rticas Francesas</option>
						<option value="Territ�rio Brit�nico do Oceano �ndico">Territ�rio Brit�nico do Oceano �ndico</option>
						<option value="Timor-Leste">Timor-Leste</option>
						<option value="Togo">Togo</option>
						<option value="Tonga">Tonga</option>
						<option value="Toquelau">Toquelau</option>
						<option value="Trinidad e Tobago">Trinidad e Tobago</option>
						<option value="Tun�sia">Tun�sia</option>
						<option value="Turcas e Caicos">Turcas e Caicos</option>
						<option value="Turquemenist�o">Turquemenist�o</option>
						<option value="Turquia">Turquia</option>
						<option value="Tuvalu">Tuvalu</option>
						<option value="Ucr�nia">Ucr�nia</option>
						<option value="Uganda">Uganda</option>
						<option value="Uruguai">Uruguai</option>
						<option value="Uzbequist�o">Uzbequist�o</option>
						<option value="Vanuatu">Vanuatu</option>
						<option value="Vaticano">Vaticano</option>
						<option value="Venezuela">Venezuela</option>
						<option value="Vietname">Vietname</option>
						<option value="Wallis e Futuna">Wallis e Futuna</option>
						<option value="Zimbabwe">Zimbabwe</option>
						<option value="Z�mbia">Z�mbia</option>
				</select>
				</label>
				<label>
					<span>Estado </span>
					<input id="estado" type="text" name="estado"  onkeyup="validar(this,'text');" placeholder="Digite seu Estado" required>
				</label>
				<label>
					<span>N�vel de escolariedade </span>
						<select id="curso" name="curso" style="font-size:12px;">
							<option>Ensino Fundamental</option>
							<option>Ensino M�dio</option>
							<option>P�s-Gradua��o</option>
							<option>Superior Completo</option>
							<option>Superior em Andamento</option>						
						</select>	
				</label>
					<label>
						<span>Curso</span>
						<select  id ="area_sup" style="font-size:12px;">
							<option>Administra��o</option>
							<option>Ci�ncias contab�is</option>
							<option>Ci�ncia da computa��o</option>
							<option>Direito</option>
							<option>Engenharia da produ��o</option>

						</select>
				</label>
				<label>
					<span>Escolha o turno:</span>
						<input type="checkbox" name="manh�"> Manh� 
						<input type="checkbox" name="tarde"> Tarde
						<input type="checkbox" name="Noite"> Noite 
							
				</label>		
				<label>
					<span>Senha: </span>
					<input type="password" name="senha" minlength='8' maxlength='15' placeholder='At� 8 Digitos' required>
				</label>
				<label>
					<span>Confirme a Senha: </span>
					<input type="password" name="senha1" minlength='8' maxlength='15' required>
				</label>
				<label>
					<label>
					<input type="submit" value="" class="btm_cad" onclick="confirmaSenha()">
					<input type="submit" value="" class="btm_cad2">					
				</label>
	</form><br><br><br><br><br><br>
	</body>
	</*div  class="rodape"*"/>
		<!-- Come�o do rodap� --> 
		<p>  <center>&copy Equipe de Autores:<br/>
    Allan Carlos<br/>
    Danilo Correia<br/>
    El�zio Neto<br/>
    Joanna Maressith<br/>2015 - Faculdade Nova Roma - Todos os Direitos Reservados </center>.</p>
		<<!-- Fim do Rodap� -->> 
		</*/div*/>
</html>
