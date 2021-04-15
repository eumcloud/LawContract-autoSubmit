package com.web.DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.web.DTO.Condition;
import com.web.DTO.ContractFile;
import com.web.DTO.Member;

public class ConditionDAO {
	private MultipartRequest multiReq;
	public Connection getConn() {
		String url="jdbc:oracle:thin:@192.168.0.78:1521:xe";
		String usr = "c##acon";
		String pass= "1234";
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn= DriverManager.getConnection(url, usr, pass);
		} catch (Exception e) {	e.printStackTrace();	}
		
		return conn;
	}
	public void getMultiReq(HttpServletRequest request) {
		String uploadFilePath = request.getServletContext().getRealPath("uploadFile");
		int maxSize = 1024*1024*10;
		try {
		multiReq = new MultipartRequest(request, uploadFilePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		} catch (IOException e) {	e.printStackTrace();	}
		}
	
	public int getAI(Connection conn, String tn) {
		String sql="select nvl(max(no), 0)+1 from "+tn;
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
		System.out.println("DAO "+condition.getDeptorEmail());
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
	public ContractFile getcontractFile(HttpServletRequest request, Condition condition) {
		ContractFile cf = new ContractFile();
		int no = getAI(getConn(), "contractfile");
		cf.setNo(no);
		cf.setCreditorEmail(condition.getCreditorEmail());
		cf.setDeptorEmail(condition.getDeptorEmail());
		cf.setFno(condition.getNo());
		cf.setFilePath(multiReq.getFilesystemName("uploadFile"));
		cf.setContractFile(multiReq.getOriginalFileName("uploadFile"));
		cf.setFilePath2(multiReq.getFilesystemName("uploadFile2"));
		cf.setContractFile2(multiReq.getOriginalFileName("uploadFile2"));

		return cf;
		
		
	}
	public int Insert(Connection conn, ContractFile cf) {
		
		String sql = "INSERT INTO contractFile (no, CREDITOREMAIL, DEPTOREMAIL, CONTRACTFILE, CONTRACTFILE2, FILEPATH, FILEPATH2, FNO, condition) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, '미완료')";

		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, cf.getNo());
			pstmt.setString(2, cf.getCreditorEmail());
			pstmt.setString(3, cf.getDeptorEmail());
			pstmt.setString(4, cf.getContractFile());
			pstmt.setString(5, cf.getContractFile2());
			pstmt.setString(6, cf.getFilePath());
			pstmt.setString(7, cf.getFilePath2());
			pstmt.setInt(8, cf.getFno());
			
			pstmt.executeUpdate();
			pstmt.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	public void addInfo(Connection conn, String deptorRegiNum, String contractNum) {
		String sql="UPDATE contractinfo SET deptorresinum = ? WHERE no = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, deptorRegiNum);
			pstmt.setString(2, contractNum);
			pstmt.executeUpdate();
			pstmt.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void addFile(Connection conn, String contractNum, ContractFile cf) {
		String sql="UPDATE CONTRACTFILE SET "
				+ "CONTRACTFILE = ?, CONTRACTFILE2 = ?, FILEPATH = ?, FILEPATH2 = ?, CONDITION = '완료' "
				+ "WHERE FNO = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cf.getContractFile());
			pstmt.setString(2, cf.getContractFile2());
			pstmt.setString(3, cf.getFilePath());
			pstmt.setString(4, cf.getFilePath2());
			pstmt.setString(5, contractNum);
			pstmt.executeUpdate();
			pstmt.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
