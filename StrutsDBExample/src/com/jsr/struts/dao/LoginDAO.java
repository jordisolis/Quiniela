package com.jsr.struts.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;

public class LoginDAO {
	
    String databaseUsername = "";
    String databasePassword = "";
	
	public boolean login(String username,String password) throws ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = null;
		try {
			connection = DriverManager.getConnection(
					"jdbc:mysql://localhost:3307/strutsdb", "root", "12345");
			// Create SQL Query
			Statement stmt = (Statement) connection.createStatement();
			// Create SQL Query
			String SQL = "SELECT * FROM usuarios WHERE user_name='" + username + "' && password='" + password+ "'";

	        ResultSet rs = stmt.executeQuery(SQL);

	        // Check Username and Password
	        while (rs.next()) {
	            databaseUsername = rs.getString("user_name");
	            databasePassword = rs.getString("password");
	        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
    

    if (username.equals(databaseUsername) && password.equals(databasePassword)) {
        System.out.println("Successful Login!\n----");
        return true;
    } else {
        System.out.println("Incorrect Password\n----");
        return false;
    }
		
		
		
	}

}
