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
		String sql = "select creditoraddr, contractname, condition "
				+ "from ( "
				+ "select rownum as rn,creditoraddr,contractname, condition "
				+"from( "
				+"select * "
				+"from contractfile "
				+"where CREDITORADDR = ?"
				+"order by no desc "
				+"        ) "
				+"    ) "
				+"where rn >= ? and rownum <= ?";
		
		List<Contractfile> lst = new ArrayList<Contractfile>();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, Email);
			pstmt.setInt(2, ((PageNumber - 1) * RowsPerPage) + 1);
			pstmt.setInt(3, RowsPerPage);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Contractfile dao = new Contractfile();
				
				dao.setCreditoraddr(rs.getString(1));
				dao.setContractname(rs.getString(2));
				dao.setCondition(rs.getString(3));
				
				lst.add(dao);
			}
			rs.close();
			pstmt.close();
		} catch (SQLException e) {			e.printStackTrace();		}
		return lst;
	}
	
	
	public int getBoardCount(){
		String sql  ="select count(*) from contractfile ";
		
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
