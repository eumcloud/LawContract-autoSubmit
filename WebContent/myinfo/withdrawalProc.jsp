<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import="com.web.DAO.*"%>
<%@page import="com.web.DTO.*"%>
<%
	Member currentUser = (Member)session.getAttribute("currentUser");
	String pw = request.getParameter("pw");
	
	myInfoDAO dao = new myInfoDAO();
	Connection conn = dao.getConn();
	
	if(pw.contentEquals(currentUser.getPw())){
		dao.userDelete(conn, currentUser.getEmail());
	}
	session.removeAttribute("usrId");
%>

