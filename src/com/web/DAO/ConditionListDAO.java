package com.web.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.web.DTO.Condition;

public class ConditionListDAO {
	private Connection conn;
	public ConditionListDAO() {
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String usr = "c##jon";
		String pass= "wns1234";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn= DriverManager.getConnection(url, usr, pass);
		} catch (Exception e) {	e.printStackTrace();	}
	}
	public List<Condition> getConditionList(String contractNum){

		String sql = "SELECT NO, CREDITOR, CREDITORADDR, CREDITOREMAIL, DEPTOR, DEPTORADDR, SPCCONTENTS, SIGNDATE, DEADLINE, INTEREST, MONEY, CREDITORRESINUM, LAWACTION " + 
				"FROM CONTRACTINFO " + 
				"WHERE NO = ?";
		
		List<Condition> lst = new ArrayList<Condition>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, contractNum);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				Condition condition =  new Condition();
				condition.setNo(rs.getInt(1));
				condition.setCreditor(rs.getString(2));
				condition.setCreditorAddr(rs.getString(3));
				condition.setCreditorEmail(rs.getString(4));
				condition.setDeptor(rs.getString(5));
				condition.setDeptorAddr(rs.getString(6));
				condition.setSpcContents(rs.getString(7));
				condition.setSignDate(rs.getString(8));
				condition.setDeadLine(rs.getString(9));
				condition.setInterest(rs.getInt(10));
				condition.setMoney(rs.getString(11));
				condition.setCreditorResiNum(rs.getString(12));
				condition.setLawaction(rs.getString(13));
				lst.add(condition);
			}
			rs.close();
			pstmt.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
		
	}
}
