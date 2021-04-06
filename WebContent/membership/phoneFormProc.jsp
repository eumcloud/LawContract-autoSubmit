<%@page import="com.web.DTO.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String phoneNum = request.getParameter("phoneNum");
	String residentNum = request.getParameter("residentNum");
	session.setAttribute("phoneNum", phoneNum);
	session.setAttribute("residentNum", residentNum);
%>
<jsp:forward page="/index.jsp">
<jsp:param value="membershipForm" name="currentPage"/>
</jsp:forward>