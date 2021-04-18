package com.web.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.web.DTO.Login;
import com.web.DTO.Member;

public class LoginDAO {

	
	public Connection getConn() {
		
		 
//		String url="jdbc:oracle:thin:@localhost:1522:xe";
//		String usr="c##jin";
//		String pass="jin1234";
//		Connection conn = null;
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
		
		String sql="select count(*) "
				+ "from membership "
				+ "where phoneNum=? "
				+ "and pw=?";
		
		String sql2 = "select count(*) "
				+ "from membership "
				+ "where email=? "
				+ "and pw=?";
		try {
			PreparedStatement pstmt = null;
			if(login.getEmail() != null) {				
				pstmt = conn.prepareStatement(sql2);
			
				pstmt.setString(1, login.getEmail());
				pstmt.setString(2, login.getPw());
			
			}else if (login.getPhoneNum() != null){				
				pstmt = conn.prepareStatement(sql);
				   
				pstmt.setString(1, login.getPhoneNum());
				pstmt.setString(2, login.getPw());
				
			}
			ResultSet rs = pstmt.executeQuery();
			if/*while*/(rs.next()) {//select문 실행 후 반환값이 존재한다면
//				return rs.getInt(1);	//query문 실행 결과 첫 번째 숫자 반환
				System.out.println(rs);
				return 1;
			}
			pstmt.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return 0;
}
	public String userConfirm(Connection conn, String email) {
	      Member member = new Member();
	         String SQL = "select email "
	               + "from membership "
	               + "where email = ?";
	         String email3 ="";
	         PreparedStatement pstmt = null;
	         try {
	            pstmt = conn.prepareStatement(SQL);
	            
	            pstmt.setString(1, email);
	            
	            ResultSet rs = pstmt.executeQuery();
	            if(rs.next()) {
	              member.setEmail(rs.getString(1));
	              email3 = member.getEmail();
	               }
	            rs.close();
	            pstmt.close();

	         } catch (SQLException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	         }
	         return email3;
	      }
	public String kakaoLogin(Connection conn, String email) {
		String sql = "select pw from membership " +
					"where email = ?";
		String passWord = "";
			try {
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, email);
				ResultSet rs = pstmt.executeQuery();
				if(rs.next()) {
					passWord=rs.getString(1);
					rs.close();
					pstmt.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		return passWord;
		
	}
	public boolean userConfirm(Connection conn, String email, String pw) {
		String SQL = "select * "
				+ "from membership "
				+ "where email = ?"
				+ "and pw = ?";
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(SQL);
			
			pstmt.setString(1, email);
			pstmt.setString(2, pw);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())	return true;
			rs.close();
			pstmt.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public Member currentUserInsert(Connection conn, String email, String pw) {
		String SQL = "select * "
				+ "from membership "
				+ "where email = ? "
				+ "and pw = ?";
		
		Member member = new Member();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(SQL);
			
			pstmt.setString(1, email);
			pstmt.setString(2, pw);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				member.setNo(rs.getInt(1));
				member.setEmail(rs.getString(2));
				member.setPhoneNum(rs.getString(3));
				member.setResidentNum(rs.getString(4));
				member.setAddr(rs.getString(5));
				member.setPw(rs.getString(6));
				member.setName(rs.getString(7));
			}
			rs.close();
			pstmt.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return member;
	}
}
