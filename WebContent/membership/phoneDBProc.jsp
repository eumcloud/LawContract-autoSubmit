<%@page import="java.sql.Connection"%>
<%@page import="com.web.DAO.Membership"%>
<%@page import="jdk.internal.misc.FileSystemOption"%>
<%@page import="java.util.Random"%>
<%@page import="com.web.DTO.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	String name = (String)session.getAttribute("name");
	String phoneNum = (String)session.getAttribute("phoneNum");
	String residentNum = (String)session.getAttribute("residentNum");
	String email = (String)session.getAttribute("email");
	String pw = (String)session.getAttribute("pw");
	
	System.out.println("디비 저장하는 장소");
	System.out.println("name : "+name);
	System.out.println("phoneNum : "+phoneNum);
	System.out.println("residentNum : "+residentNum);
	System.out.println("email : "+email);
	System.out.println("pw : "+pw);
	
	Member member = new Member();
	member.setEmail(email);
	member.setPhoneNum(phoneNum);
	member.setName(name);
	member.setResidentNum(residentNum);
	member.setPw(pw);

	Membership  membership = new Membership();
	Connection conn = membership.getConn();
	int maxNum = membership.getAI(conn);
	membership.Insert(conn, member, maxNum);
	
	
%>
<jsp:forward page="/index.jsp">
<jsp:param value="loginForm" name="currentPage"/>
</jsp:forward>
