<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String checkFno =  request.getParameter("boardCheckbox");
	System.out.println(checkFno);
	session.setAttribute("SelectFno", checkFno);
%>
<jsp:forward page="/index.jsp">
<jsp:param value="ContractDetailsProc" name="currentPage"/>
</jsp:forward>