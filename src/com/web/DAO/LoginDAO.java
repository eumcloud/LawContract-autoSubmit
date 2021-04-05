package com.web.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.web.DTO.Login;

public class LoginDAO {

	
	public Connection getConn() {
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="c##jin";
		String pass="jin1234";
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn= DriverManager.getConnection(url, user, pass);
		} catch (Exception e) {	e.printStackTrace();	}
		
		return conn;
	}
	public int LoginProc(Connection conn, Login login) {
		
		
		PreparedStatement pstmt = null;
		
		String sql="select count(*) "
				+ "from member "
				+ "where phoneNum=? "
				+ "and pw=?";
		
		String sql2 = "select count(*) "
				+ "from member "
				+ "where email=? "
				+ "and pw=?";
		try {
			if(login.getEmail() != null) {				
			 pstmt = conn.prepareStatement(sql2);
			
			pstmt.setString(1, login.getEmail());
			pstmt.setString(2, login.getPw());
			
			}
			
			else if (login.getPhoneNum() != null){				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, login.getPhoneNum());
				pstmt.setString(2, login.getPw());
				
			}
			
			ResultSet rs = pstmt.executeQuery();
			
			if/*while*/(rs.next())//select�� ���� �� ��ȯ���� �����Ѵٸ�
				return rs.getInt(1);	//query�� ���� ��� ù ��° ���� ��ȯ
			
			pstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
}