<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import="com.web.DAO.*"%>
<%@page import="com.web.DTO.*"%>
<%
	Member currentUser = (Member)session.getAttribute("currentUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>회원 탈퇴</h1>
<h3>비밀번호 재확인</h3>
<form action = "<%=request.getContextPath()%>/myinfo/withdrawalProc.jsp">
	아이디<input type = "text" name = "id" value = "<%=currentUser.getEmail()%>"/>
	<br />
	비밀번호<input type = "text" name = "pw" />
	<br />
	<input type = "submit" value = "회원 탈퇴" /> 
</form>
 
</body>
</html>