package com.web.DAO;

import java.sql.*;
import java.util.*;

import com.web.DTO.Contractfile;

public class ContractfileDAO {
	
	private Connection conn;
	public ContractfileDAO() {
		String url="jdbc:oracle:thin:@localhost:1522:xe";
		String user="c##jin";
		String pass="jin1234";
		//Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn= DriverManager.getConnection(url, user, pass);
		} catch (Exception e) {	e.printStackTrace();	}
	}
	
	public List<Contractfile> getBoardList(int PageNumber, int RowsPerPage, String Email){
		String sql  ="select * "
				+ "from contractfile "
				+ "where creditoraddr = ?";
		List<Contractfile> lst = new ArrayList<Contractfile>();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Email);
			
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Contractfile dao = new Contractfile();
				
				dao.setNo(rs.getInt(1));
				dao.setCreditoraddr(rs.getString(2));
				dao.setDebtoraddr(rs.getString(3));
				dao.setContractfile(rs.getString(4));
				dao.setFilepath(rs.getString(5));
				dao.setContractname(rs.getString(6));
				dao.setCondition(rs.getString(7));
				
				lst.add(dao);
			}
			rs.close();
			pstmt.close();
		} catch (SQLException e) {			e.printStackTrace();		}
		return lst;
	}
	
	
	public int getBoardCount(){
		String sql  ="select count(*) from board ";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {		return rs.getInt(1);			}
			rs.close();
			pstmt.close();
		} catch (SQLException e) {			e.printStackTrace();		}
		return 0;
	}
}
