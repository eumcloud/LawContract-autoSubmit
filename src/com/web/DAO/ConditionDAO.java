package com.web.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.web.DTO.Condition;
import com.web.DTO.Member;

public class ConditionDAO {
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
	
	
	public int getAI(Connection conn) {
		String sql="select nvl(max(no), 0)+1 from contractinfo";
		int maxNum=0;
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			 
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
				maxNum =rs.getInt(1);
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return maxNum;
	}
	
	public int insert(Connection conn, Condition condition) {
		String sql="INSERT INTO contractinfo (no, creditor, creditorAddr, creditorResiNum, creditorEmail, "
				+ "deptor, deptorAddr, deptorEmail, spcContents, signDate, deadLine, interest, money) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, condition.getNo());
			pstmt.setString(2, condition.getCreditor());
			pstmt.setString(3, condition.getCreditorAddr());
			pstmt.setString(4, condition.getCreditorResiNum());
			pstmt.setString(5, condition.getCreditorEmail());
			pstmt.setString(6, condition.getDeptor());
			pstmt.setString(7, condition.getDeptorAddr());
			pstmt.setString(8, condition.getDeptorEmail());
			pstmt.setString(9, condition.getSpcContents());
			pstmt.setString(10, condition.getSignDate());
			pstmt.setString(11, condition.getDeadLine());
			pstmt.setInt(12, condition.getInterest());
			pstmt.setString(13, condition.getMoney());
			
			pstmt.executeUpdate();
			pstmt.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
		
	}
}
