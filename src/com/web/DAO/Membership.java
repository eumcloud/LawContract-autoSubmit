package com.web.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.web.DTO.Member;

public class Membership {

	public Connection getConn() {
<<<<<<< HEAD
		String url="jdbc:oracle:thin:@192.168.0.21:1521:xe";
=======
		String url = "jdbc:oracle:thin:@192.168.0.21:1521:xe";
>>>>>>> refs/remotes/origin/youngsin
		String usr = "c##acon";
		String pass= "1234";
		Connection conn = null;
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn= DriverManager.getConnection(url, usr, pass);
		} catch (Exception e) {			e.printStackTrace();		}
		return conn;
	}
	
	public int getAI(Connection conn) {
		String sql="select nvl(max(no), 0)+1 from membership";
		int maxNum=0;
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			//pstmt.setString(1, tableName);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
				maxNum =rs.getInt(1);
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return maxNum;
	}
	public void Insert(Connection conn, Member member, int maxNum) {
		String querry = "Insert into Membership(no, email, phoneNum, residentNum, pw, name) "
				+ " values (?, ?, ?, ? ,?, ?) ";
		
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(querry);
			System.out.println("³Ñ¹ö °ª : "+maxNum);
			pstmt.setInt(1, maxNum);
			pstmt.setString(2, member.getEmail());
			pstmt.setString(3, member.getPhoneNum());
			pstmt.setString(4, member.getResidentNum());
			pstmt.setString(5, member.getPw());
			
		//	pstmt.setString(6, member.getAddr());
			pstmt.setString(6, member.getName());
			
			pstmt.executeUpdate();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}		
	}
}
