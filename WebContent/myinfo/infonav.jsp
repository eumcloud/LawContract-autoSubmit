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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
</head> 

<style>
	.nav{
		width : 1000px;
	}
	.nav-item{
		width : 500px;
	}
</style>

<body>
<div class="card text-center">
        <div class="card-header">
          <ul class="nav nav-tabs card-header-tabs mx-auto mt-5" >
            <li class="nav-item">
              <a class="nav-link active" href="<%=path%>myinfoForm">회원정보</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<%=path%>ContractDetailsProc&pageName=ContractDetailsProc&pageNumber=1">계약정보</a>
            </li>
          </ul>
        </div>
</div>
      <jsp:include page="<%=pageName%>"/>     
</body>
</html>