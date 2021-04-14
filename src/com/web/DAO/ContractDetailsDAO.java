package com.web.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.web.DTO.ContractFile;

public class ContractDetailsDAO {
	private Connection conn;
	public ContractDetailsDAO() {
		String url="jdbc:oracle:thin:@192.168.0.21:1521:xe";
		String usr = "c##acon";
		String pass= "1234";
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
	public List<ContractFile> getFileList(String fno){
		String sql="select fno, FILEPATH, CONTRACTFILE, FILEPATH2, CONTRACTFILE2 from CONTRACTFILE "
				+ "where fno=?";
		List<ContractFile> lst = new ArrayList<ContractFile>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, fno);
	
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ContractFile contractFile = new ContractFile();
				contractFile.setFno(rs.getInt(1));
				contractFile.setFilePath(rs.getString(2));
				contractFile.setContractFile(rs.getString(3));
				contractFile.setFilePath2(rs.getString(4));
				contractFile.setContractFile2(rs.getString(5));
				
				lst.add(contractFile);
			}
			rs.close();
			pstmt.close();
		} catch (SQLException e) {			e.printStackTrace();		}
		return lst;
	}
}
