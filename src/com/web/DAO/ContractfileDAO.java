package com.web.DAO;

import java.sql.*;
import java.util.*;

import com.web.DTO.Condition;
import com.web.DTO.ContractFile;

public class ContractfileDAO {
	
	public Connection conn;
	
	public ContractfileDAO() {

		String url="jdbc:oracle:thin:@localhost:1522:xe";
		String usr="c##jin";
		String pass="jin1234";
		
//		String url="jdbc:oracle:thin:@192.168.0.78:1521:xe";
//		String usr = "c##acon";
//		String pass= "1234";
//		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn= DriverManager.getConnection(url, usr, pass);
		} catch (Exception e) {	e.printStackTrace();	}
	}
	
	public List<Condition> getBoardList(int PageNumber, int RowsPerPage, String Email, String contextPath, String uploadFolderName){
		
		 String sql = "select condition,fno, contractfile, contractfile2,  creditor, deptor, money, signdate, deadline, lawaction, creditoremail "
		 		+ "    from ( "
		 		+ "       select rownum as rn, creditoremail, fno, condition, contractfile, contractfile2,creditor, deptor, money, signdate, deadline, lawaction "
		 		+ "        from( "
		 		+ "        select * from"
		 		+ "        ( "
		 		+ "        select  f.creditoremail,f.fno, f.condition, f.contractfile, f.contractfile2, i.creditor, i.deptor, i.money, i.signdate, i.deadline, i.lawaction "
		 		+ "        from contractfile f left join contractinfo i "
		 		+ "       on f.fno = i.no"
		 		+ "         )"
		 		+ "        where creditoremail = ?"
		 		+ "        order by fno desc  "
		 		+ "               ) "
		 		+ "            ) "
		 		+ "        where rn >= ? and rownum <= ?";
		 
		
		List<Condition> lst = new ArrayList<Condition>();
		
		try {

			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, Email);
			pstmt.setInt(2, ((PageNumber - 1) * RowsPerPage) + 1);
			pstmt.setInt(3, RowsPerPage);
			 
			ResultSet rs = pstmt.executeQuery();
			   
			while(rs.next()) {
				Condition dao = new Condition();
				 
				dao.setCondition(rs.getString(1));
				dao.setFno(rs.getInt(2));
				dao.setContractFile(rs.getString(3));
				dao.setContractFile2(rs.getString(4));
				dao.setDownloadPath("<a href='"+contextPath+"/"+uploadFolderName+"/"+rs.getString(3)+"' download='"+rs.getString(3)+"' id='file"+rs.getInt(2)+"'  style='display: none'>"+
						rs.getInt(2)+"</a><br/>");
				dao.setDownloadPath2("<a href='"+contextPath+"/"+uploadFolderName+"/"+rs.getString(4)+"' download='"+rs.getString(4)+"' id='filee"+rs.getInt(2)+"'  style='display: none'>" + 
						rs.getInt(2)+"</a>");
				dao.setCreditor(rs.getString(5));
				dao.setDeptor(rs.getString(6));
				dao.setMoney(rs.getString(7));
				dao.setSignDate(rs.getString(8));
				dao.setDeadLine(rs.getString(9));
				dao.setLawaction(rs.getString(10));
				dao.setCreditorEmail(rs.getString(11));
				
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
