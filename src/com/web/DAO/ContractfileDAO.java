package com.web.DAO;

import java.sql.*;
import java.util.*;

import com.web.DTO.ContractFile;

public class ContractfileDAO {
	
	public Connection conn;
	
	public ContractfileDAO() {
//		String url="jdbc:oracle:thin:@localhost:1522:xe";
//		String usr="c##jin";
//		String pass="jin1234";
		
		String url="jdbc:oracle:thin:@192.168.0.78:1521:xe";
		String usr = "c##acon";
		String pass= "1234";
//		
//		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn= DriverManager.getConnection(url, usr, pass);
		} catch (Exception e) {	e.printStackTrace();	}
	}
	
	public List<ContractFile> getBoardList(int PageNumber, int RowsPerPage, String Email){
		
		 String sql = "select condition, fno, contractfile "
		            + "from ( "
		            + "select rownum as rn, creditoremail, fno, condition, contractfile "
		            +"from( "
		            +"select * "
		            +"from contractfile "
		            +"where creditoremail = ? "
		            +"order by no desc "
		            +"        ) "
		            +"    ) "
		            +"where rn >= ? and rownum <= ?";
		
		List<ContractFile> lst = new ArrayList<ContractFile>();
		
		try {

			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, Email);
			pstmt.setInt(2, ((PageNumber - 1) * RowsPerPage) + 1);
			pstmt.setInt(3, RowsPerPage);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ContractFile dao = new ContractFile();
				
				dao.setCondition(rs.getString(1));
				dao.setFno(rs.getInt(2));
				dao.setContractFile(rs.getString(3));
				
				lst.add(dao);
			}
			rs.close();
			pstmt.close();
			
		} catch (SQLException e) {			e.printStackTrace();		}
		return lst;
	}
	
	
	public int getBoardCount(String Email){
		
		String sql  ="select count(*) "
				+ "from contractfile "
				+ "where creditoremail = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Email);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {		return rs.getInt(1);			}
			rs.close();
			pstmt.close();
		} catch (SQLException e) {			e.printStackTrace();		}
		return 0;
	}
}
