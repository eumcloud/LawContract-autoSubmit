<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String usrId = (String)session.getAttribute("usrId");

	String homePath = "feeinfoForm";
	if(usrId == null)
		homePath = "loginForm";
%>
<jsp:forward page="/index.jsp">
<jsp:param value="<%=homePath %>" name="currentPage"/>
</jsp:forward>  