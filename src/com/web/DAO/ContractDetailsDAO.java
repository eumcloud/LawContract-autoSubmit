package com.web.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.web.DTO.ContractFile;
import com.web.DTO.Condition;

public class ContractDetailsDAO {
	private Connection conn;
	public ContractDetailsDAO() {
		
		String url="jdbc:oracle:thin:@192.168.0.78:1521:xe";
		String usr = "c##acon";
		String pass= "1234";
		
//		String url="jdbc:oracle:thin:@localhost:1522:xe";
//		String usr="c##jin";
//		String pass="jin1234";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn= DriverManager.getConnection(url, usr, pass);
		} catch (Exception e) {	e.printStackTrace();	}
	}
	public String getContractFile(String contextPath, String uploadFolderName, ContractFile contractFile) {
		return "<a href='"+contextPath+"/"+uploadFolderName+"/"+contractFile.getContractFile()+"'>"+
				contractFile.getFno()+"</a>"
						+ "<a href='"+contextPath+"/"+uploadFolderName+"/"+contractFile.getContractFile2()+"'>" + 
						contractFile.getFno()+"</a>";
		
	}
	public List<Condition> getFileList( String no){
		String sql="SELECT i.no,  f.fno, f.contractfile, f.filepath, "
				+ "f.contractfile2, f.filepath2, f.condition, i.creditor, i.deptor, "
				+ " i.money, i.signdate, i.deadline  "
				+ " from contractinfo i left join contractfile  f "
				+ " on i.no=f.no ";
		
		
		/* List<ContractFile> lst = new ArrayList<ContractFile>(); */
		List<Condition> lst = new ArrayList<Condition>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, no);
			
	
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				/* ContractFile contractFile = new ContractFile(); */
				Condition cond = new Condition();
				
				cond.setFno(rs.getInt(1));
				cond.setFilePath(rs.getString(2));
				cond.setContractFile(rs.getString(3));
				cond.setFilePath2(rs.getString(4));
				cond.setContractFile2(rs.getString(5));
				cond.setCreditor(rs.getString(6));
				cond.setDeptor(rs.getString(7));
				cond.setMoney(rs.getString(8));
				cond.setSignDate(rs.getString(9));
				cond.setDeadLine(rs.getString(10));
				
				lst.add(cond);
			}
			
			
			rs.close();
			pstmt.close();

		} catch (SQLException e) {			e.printStackTrace();		}
		return lst ;
	}
	
	//?????? ?????? 
	//???? : ?????? ????
	public void ContractDelete(String email, int num) {
		String ContractFileDeleteSQL = "delete "
				+ "from contractfile "
				+ "where creditoremail = ? "
				+ "and No = ? ";
		String ConditionDeleteSQL = "delete "
				+ "from condition "
				+ "where creditoremail = ?"
				+ "and No = ?";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(ContractFileDeleteSQL);
			pstmt.setString(1, email);
			pstmt.setInt(2, num);
			
			pstmt.executeUpdate();
			pstmt.close();
			
			pstmt = conn.prepareStatement(ConditionDeleteSQL);
			pstmt.setString(1, email);
			pstmt.setInt(2, num);
			
			pstmt.executeUpdate();
			pstmt.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//?????? ?????? 
	//???? : ?????? ????, ?????? ???????? ???? ?????? ???? ?????? ?????? ???? ????  ???? 
	public List<Condition> getUserContractInfo(String email, int num){
		
		String sql = "select * "
				+ "from ContractInfo "
				+ "where creditoremail = ? "
				+ "and No = ? ";
		 
		List<Condition> userContractInfo = new ArrayList<Condition>();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setInt(2, num);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				Condition c = new Condition();
				
				c.setNo(rs.getInt(1));
				c.setCreditor(rs.getString(2));
				c.setCreditorAddr(rs.getString(3));
				c.setCreditorResiNum(rs.getString(4));
				c.setCreditorEmail(rs.getString(5));
				c.setDeptor(rs.getString(6));
				c.setDeptorAddr(rs.getString(7));
				c.setDeptorResiNum(rs.getString(8));
				c.setDeptorEmail(rs.getString(9));
				c.setSpcContents(rs.getString(10));
				c.setSignDate(rs.getString(11));
				c.setDeadLine(rs.getString(12));
				c.setInterest(rs.getInt(13));
				c.setMoney(rs.getString(14));
				c.setLawaction(rs.getString(15));
				
				userContractInfo.add(c);
			}
			pstmt.close();
			rs.close();
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userContractInfo;
	}
	//?????? ?????? 
	//???? : ?????? ?????? ???? ?????? ???? ?????? ?????? ???? ????  ???? 
	public List<ContractFile> getUserContractFile(String email, int num){
		String sql = "select * "
				+ "from ContractFile "
				+ "where creditoremail = ? "
				+ "and No = ? ";
		
		List<ContractFile> userContractFile = new ArrayList<ContractFile>();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, email);
			pstmt.setInt(2, num);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				ContractFile c = new ContractFile();
				
				c.setNo(rs.getInt(1));
				c.setCreditorEmail(rs.getString(2));
				c.setDeptorEmail(rs.getString(3));
				c.setContractFile(rs.getString(4));
				c.setFilePath(rs.getString(5));
				c.setContractFile2(rs.getString(6));
				c.setFilePath2(rs.getString(7));
				c.setFno(rs.getInt(8));
				c.setCondition(rs.getString(9));
				
				userContractFile.add(c);
			}
			pstmt.close();
			rs.close();
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userContractFile;
		
	}
	
}
