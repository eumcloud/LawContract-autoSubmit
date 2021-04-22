<%@page import="java.sql.Connection"%>
<%@page import="com.web.DAO.*"%>
<%@page import="com.web.DTO.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member currentUser = (Member)session.getAttribute("currentUser");
	String newaddr = request.getParameter("newaddr");
	myInfoDAO dao = new myInfoDAO();
	Connection conn = dao.getConn();

	dao.userADDRUpdate(conn, currentUser.getEmail(), newaddr);	
	currentUser.setAddr(newaddr);
%>
<jsp:forward page="/index.jsp">
<jsp:param value="myinfoForm" name="currentPage"/>
</jsp:forward>