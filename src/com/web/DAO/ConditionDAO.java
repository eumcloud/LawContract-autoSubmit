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
	
	
	public int getAI(Connection conn) {
		String sql="select nvl(max(no), 0)+1 from membership";
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
	public void Insert(Connection conn, Condition condition, int maxNum) {
		
		String cquery = ""
				+ "CREATE SEQUENCE contrCondition_SEQ "
				+ "START WITH 1 "
				+ "INCREMENT BY 1 "
				+ "CREATE TABLE contrCondition "
				+ "( "
				+ "    creditorName       VARCHAR2(20)      NOT NULL,  "
				+ "    creditorResiNum    VARCHAR2(14)      NOT NULL,  "
				+ "    creditorAddr       VARCHAR2(200)     NOT NULL,  "
				+ "    deptorName         VARCHAR2(20)      NOT NULL,  "
				+ "    deptorResiNum      VARCHAR2(14)      NOT NULL,  "
				+ "    deptorAddr         VARCHAR2(200)     NOT NULL,  "
				+ "    money              INT               NOT NULL,  "
				+ "    interest           int               NOT NULL,  "
				+ "    deadline           DATE              NOT NULL,  "
				+ "    condition          VARCHAR2(400)     NOT NULL,  "
				+ "    spcContents        VARCHAR2(1000)    NULL,  "
				+ "    signdate               date              NOT NULL,  "
				+ "    creditorEmail      VARCHAR2(70)      NULL,  "
				+ "    deptorEmail        VARCHAR2(70)      NULL,  "
				+ "    fno                INT               NOT NULL,  "
				+ "    CONSTRAINT CONTRCONDITION_PK PRIMARY KEY (fno) "
				+ ") ";
		
		String query = "INSERT INTO contrCondition "
				+ "    (creditorName, creditorResiNum, creditorAddr,deptorName, deptorResiNum,  "
				+ "    deptorAddr,money, interest, deadline, condition, spcContents, signdate,  "
				+ "    creditorEmail, deptorEmail) "
				+ "VALUES "
				+ "    (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ;
		PreparedStatement pstmt;
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, condition.getClient());
			pstmt.setString(2, condition.getClientResiNum());
			pstmt.setString(3, condition.getClientAddr());
			
			pstmt.setString(4, condition.getDebtor());
			pstmt.setString(5, condition.getDebtorResiNum());
			pstmt.setString(6, condition.getDebtorAddr());
			
			pstmt.setString(7, condition.getMoney());
			pstmt.setString(8, condition.getInterest());
			pstmt.setString(9, condition.getDeadline());
			pstmt.setString(10, condition.getCondition());
			pstmt.setString(11, condition.getSpcContents());
			pstmt.setString(12, condition.getSigndate());
			
			pstmt.setString(13, condition.getClientEmail());
			pstmt.setString(14, condition.getDebtorEmail());
			
			pstmt.executeUpdate();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}		
	}
}
