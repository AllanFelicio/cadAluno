package com.danilo.cjweb1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {


	public static Connection getConnection (){
		Connection con=null;	

		try {
			Class.forName("org.postgresql.Driver");//força o carregamento do drive 
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/bancocjweb1","postgres","091288");
			System.out.println("conectado com sucesso");
			
		} catch (SQLException e) {
			System.out.println("erro ao conectar"+e.getMessage());
		} catch (ClassNotFoundException e) {
			System.out.println("drive não encotrado");
		}
		
		return con;
	}

}
