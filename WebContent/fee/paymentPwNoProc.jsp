<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String popUp = (String)session.getAttribute("popUp");
	if("payment".contentEquals(popUp));
	popUp = "실패";
	request.setAttribute("popUp", popUp);
%>
<jsp:forward page="/index.jsp">
<jsp:param value="feeinfoForm" name="currentPage"/>
</jsp:forward>  