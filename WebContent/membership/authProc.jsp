<!--membership/authProc.jsp  -->
<%@page import="java.util.Random"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Random rand = new Random();
	int randNum = rand.nextInt(10000);
	String sessinAuthNum = String.format("%04d", randNum);
	
	session.setAttribute("sessinAuthNum", sessinAuthNum);
	
%>
<jsp:forward page="/index.jsp">
<jsp:param value="membershipForm" name="currentPage"/>
</jsp:forward>
