<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.web.DAO.*"%>
<%@page import="com.web.DTO.*"%>

<%
	String pageName = "/myinfo/myinfoForm.jsp";
	Member currentUser = (Member)session.getAttribute("currentUser");
	String contextPath =request.getContextPath();
	String path = contextPath +  "/index.jsp?currentPage=";	
	
	String currentPage = request.getParameter("currentPage");
	System.out.println(currentPage);
	
	if(currentPage==null)
		pageName = "/myinfo/myinfoForm.jsp";
	else if("myinfoForm".contentEquals(currentPage))
		pageName = "/myinfo/myinfoForm.jsp";
	else if("ContractDetailsForm".contentEquals(currentPage))
		pageName = "/myinfo/ContractDetailsForm.jsp";
	else if("ContractDetailsProc".contentEquals(currentPage))
		pageName = "/myinfo/ContractDetailsProc.jsp?pageName=ContractDetailsProc&pageNumber=1";

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
	<nav>
		<br/><br/><br/>
        <a href="<%=path%>myinfoForm">회원정보</a>
        <a href="<%=path%>ContractDetailsProc&pageName=ContractDetailsProc&pageNumber=1">계약정보</a>
        <br/>
        <jsp:include page="<%=pageName%>"/>        
    </nav>
</center>
</body>
</html>