package com.web.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.web.DTO.Member;

public class Membership {

	
	
	public Connection getConn() {
		String url = "jdbc:oracle:thin:@local:1521:xe";
		String usr = "c##acon";
		String pass= "1234";
		Connection conn = null;
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn= DriverManager.getConnection(url, usr, pass);
		} catch (Exception e) {			e.printStackTrace();		}
		return conn;
	}
	
	
	public void Insert(Connection conn, Member member) {
		String querry = "Insert into Membership( no, email, phonNum, pw, residentNum, addr "
				+ "values (?, ?, ?, ? ,?, ?) ";
		
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(querry);
			
			pstmt.setString(1, member.getNo());
			pstmt.setString(2, member.getEmail());
			pstmt.setString(3, member.getPhoneNum());
			pstmt.setString(4, member.getPw());
			pstmt.setString(5, member.getResidentNum());
			pstmt.setString(6, member.getAddr());
			
			pstmt.executeUpdate();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}		
	}
}
