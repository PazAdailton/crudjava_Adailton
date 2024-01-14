package br.com.crudjava.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.crudjava.Usuario;

public class UsuarioDAO {

	public static Connection getConnection() throws Exception {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bancodedados", "root", "mysql");
			System.out.println("Conectado com sucesso");
			
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		
		
		return con;
	}
	
	public static List<Usuario> getAllUsuarios(){
		List<Usuario> lista = new ArrayList<Usuario>();
	   
		try {
			
		
			Connection con = getConnection();
			
		
			
			PreparedStatement preparador = (PreparedStatement) con.prepareStatement("select * from usu");
			
			ResultSet rs = preparador.executeQuery();
			
			while(rs.next()) {
			Usuario usuario = new Usuario();
			usuario.setId(rs.getInt("id"));
			usuario.setNome(rs.getString("nome"));
			usuario.setSenha(rs.getString("senha"));
			usuario.setEmail(rs.getString("email"));
			usuario.setSexo(rs.getString("sexo"));
			usuario.setUsucol(rs.getString("usucol"));
			lista.add(usuario);
			
			}
		} catch (Exception e) {
		System.out.println(e);	
		}
			
		return lista;
		
		
		
		
	
	
	}
	
	
	
	
	
	

	
	
}
