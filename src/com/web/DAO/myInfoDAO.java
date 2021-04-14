package com.web.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class myInfoDAO {
	
public Connection getConn() {
		
//		String url="jdbc:oracle:thin:@localhost:1522:xe";
//		String usr="c##jin";
//		String pass="jin1234";
//		Connection conn = null;
	
		String url="jdbc:oracle:thin:@192.168.0.21:1521:xe";
		String usr = "c##acon";
		String pass= "1234";
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn= DriverManager.getConnection(url, usr, pass);
		} catch (Exception e) {	e.printStackTrace();	}
		
		return conn;
	}
	
	public void userPWUpdate(Connection conn, String email, String newpw ) {
		String SQL = "update membership "
				+"set pw = ?"  // newpw
				+"where email in (" 
				+ "select email "
				+ "from membership " 
				+ "where email = ? " // userid
				+ ")";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, newpw);
			pstmt.setString(2, email);
			pstmt.executeUpdate();
			pstmt.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void userADDRUpdate(Connection conn, String email, String newaddr ) {
		String SQL = "update membership "
				+"set addr = ?"  // newpw
				+"where email in (" 
				+ "select email "
				+ "from membership " 
				+ "where email = ? " // userid
				+ ")";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, newaddr);
			pstmt.setString(2, email);
			pstmt.executeUpdate();
			pstmt.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void userDelete(Connection conn, String email) {
		String SQL = "delete "
				+ "from membership "
				+ "where email = ?";
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			pstmt.executeUpdate();
			pstmt.close();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
