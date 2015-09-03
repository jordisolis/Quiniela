package com.jsr.struts.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
/**
 * 
 * @author jordisolis
 *
 */
public class UserRegisterDAO {
	public void insertData( String userName,
			String password, String email) throws Exception {
		System.out.println("jdbc connection");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3307/strutsdb", "root", "12345");

		try {

			try {
				Statement st = con.createStatement();
				int value = st
						.executeUpdate("INSERT INTO USUARIOS(USER_NAME,PASSWORD,EMAIL) "
								+ "VALUES('"
								+ userName
								+ "','"
								+ password
								+ "','"
								+ email + "')");
				System.out.println("1 row affected" + value);
			} catch (SQLException ex) {
				System.out.println("SQL statement is not executed!" + ex);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
