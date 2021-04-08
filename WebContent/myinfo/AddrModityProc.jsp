<%@page import="java.sql.Connection"%>
<%@page import="com.web.DAO.*"%>
<%@page import="com.web.DTO.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member currentUser = (Member)session.getAttribute("currentUser");
	String newaddr = request.getParameter("newaddr");
	LoginDAO dao = new LoginDAO();
	Connection conn = dao.getConn();

	dao.userADDUpdate(conn, currentUser.getEmail(), newaddr);	
	currentUser.setAddr(newaddr);
%>
