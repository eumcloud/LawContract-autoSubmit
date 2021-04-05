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
		String usr = "c##acon";
		String pass= "1234";
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn= DriverManager.getConnection(url, usr, pass);
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
			
			if/*while*/(rs.next())//select문 실행 후 반환값이 존재한다면
				return rs.getInt(1);	//query문 실행 결과 첫 번째 숫자 반환
			
			pstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
}
