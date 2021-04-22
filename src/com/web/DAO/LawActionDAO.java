package com.web.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.web.DTO.Condition;

public class LawActionDAO {

   public Connection getConn() {
	   String url="jdbc:oracle:thin:@192.168.0.78:1521:xe";
		String usr = "c##acon";
		String pass= "1234";
      Connection conn = null;
      try {
         Class.forName("oracle.jdbc.driver.OracleDriver");
         conn= DriverManager.getConnection(url, usr, pass);
      } catch (Exception e) {   e.printStackTrace();   }
      
      return conn;
   }
   
   public void getLawaction(Connection conn, String fno ) {
      String sql = "Update contractinfo SET lawaction='제출완료' "
            + "where no=? ";
      
      try {
         PreparedStatement pstmt = conn.prepareStatement(sql);
         
         pstmt.setString(1, fno);
         
         pstmt.executeUpdate();
         pstmt.close();
         
      } catch (SQLException e) {
         e.printStackTrace();
      }
   }
   
   
}