<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@page import="com.web.DAO.*"%>
<%@page import="com.web.DTO.*"%>

<%
Member currentUser = (Member)session.getAttribute("currentUser");
%>
<html>
<body>
<h1>주소 수정</h1>
<form id='frm' action="<%=request.getContextPath()%>/myinfo/AddrModityProc.jsp">
	현재 주소<input type="text" name="currentadd" value=<%=currentUser.getAddr() %> /><br />
	새로운 주소<input type="text" name="newaddr" /><br /> 
	<input type="submit" value="수정완료" />
	<input type="button" value ="취소"><br />
</body>
</html>
