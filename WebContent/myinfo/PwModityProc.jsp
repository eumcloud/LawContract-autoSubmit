<%@page import="java.sql.Connection"%>
<%@page import="com.web.DAO.*"%>
<%@page import="com.web.DTO.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member currentUser = (Member)session.getAttribute("currentUser");
	myInfoDAO dao = new myInfoDAO();
	Connection conn = dao.getConn();
	
	String currentpw = request.getParameter("currentpw");
	String newpw = request.getParameter("newpw");
	String newpwok = request.getParameter("newpwok");
	
	if(currentpw.contentEquals(currentUser.getPw())){
		if(newpw.contentEquals(newpwok)){
			dao.userPWUpdate(conn, currentUser.getEmail(), newpw);	
			currentUser.setPw(newpw);
			System.out.println("수정에 성공하셨습니다.");
		}
	}
	else{
		System.out.println("수정에 실패하셨습니다.");
	}
	
%>
<jsp:forward page="/index.jsp">
<jsp:param value="myinfoForm" name="currentPage"/>
</jsp:forward>