
<%@page import="java.sql.Connection"%>
<%@page import="com.web.DAO.Membership"%>
<%@page import="com.web.DTO.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String email = request.getParameter("email");
	String pw = request.getParameter("pw");
	String pwOk = request.getParameter("pwOk");
	 
	session.setAttribute("email", email);
	session.setAttribute("pw", pw);
	session.setAttribute("pwOk", pwOk);
	
	System.out.println("멤버프락 석세스 이메일 :"  +email);
	System.out.println("멤버프락 석세스 패스워드 :"  +pw);
	System.out.println("멤버프락 석세스 패스워드 확인 :"  +pwOk);
	
%>
<jsp:forward page="/index.jsp">
<jsp:param value="membershipForm" name="currentPage"/>
</jsp:forward>