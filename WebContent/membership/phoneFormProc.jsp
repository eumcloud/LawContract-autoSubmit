<%@page import="jdk.internal.misc.FileSystemOption"%>
<%@page import="java.util.Random"%>
<%@page import="com.web.DTO.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	

	String name = request.getParameter("name");
	String residentNum = request.getParameter("residentNum");
	String phoneNum = request.getParameter("phoneNum");
	
	session.setAttribute("name", name);
	session.setAttribute("residentNum", residentNum);
	session.setAttribute("phoneNum", phoneNum);
	
	
	Random rand = new Random();
	int randNum = rand.nextInt(10000);
	String authNum = String.format("%04d", randNum);
	
	System.out.println("디비 전 : "+name);
	System.out.println("디비 전residentNum : "+residentNum);
	System.out.println("디비 전 phoneNum : "+phoneNum);
	request.setAttribute("authNum", authNum);
%>
<jsp:forward page="phoneForm.jsp"/>
