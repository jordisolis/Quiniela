package com.jsr.struts.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class QuinielaRegisterDAO {
	
	public void insertData( String quiniela1,String quiniela2,String quiniela3,
			String quiniela4,String quiniela5,String quiniela6,String quiniela7,String quiniela8,
			String quiniela9,String quiniela10,String quiniela11,String quiniela12,
			String quiniela13,String quiniela14,String quiniela15,String usuario) throws Exception {
		System.out.println("jdbc connection");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3307/strutsdb", "root", "12345");

		try {

			try {
				Statement st = con.createStatement();
				int value = st
						.executeUpdate("INSERT INTO QUINIELA_REGISTER(quiniela1,quiniela2,quiniela3,quiniela4,quiniela5,quiniela6,quiniela7,"
								+ "quiniela7,quiniela8,quiniela9,quiniela10,quiniela11,quiniela12,quiniela13,quiniela14,quiniela15,usuario) "
								+ "VALUES('"		
								+ usuario +
								"','"
								+ quiniela1
								+ "','"
								+ quiniela2
								+ "','"
								+ quiniela3 + 
								  "','"
								+ quiniela4 +
								"','"
								+ quiniela5 +
								"','"
								+ quiniela6 +
								"','"
								+ quiniela7 +
								"','"
								+ quiniela8 +
								"','"
								+ quiniela9 +
								"','"
								+ quiniela10 +
								"','"
								+ quiniela11 +
								"','"
								+ quiniela12 +
								"','"
								+ quiniela13 +
								"','"
								+ quiniela14 +
								"','"
								+ quiniela15 +
							
								"')");
				System.out.println("1 row affected" + value + usuario);
			} catch (SQLException ex) {
				System.out.println("SQL statement is not executed!" + ex);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
