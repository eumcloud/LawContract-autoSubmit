<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


// 	String currentInfoPage = request.getParameter("currentInfoPage");
	String pageName = "/myinfo/myinfoForm.jsp";
	
	String contextPath =request.getContextPath();
	String path = contextPath +  "/index.jsp?currentPage=";	
	
	
// 	if(currentInfoPage==null)
// 		pageName = "/myinfo/myinfoForm.jsp";
// 	else if("myinfoForm".contentEquals(currentInfoPage))
// 		pageName = "/myinfo/myinfoForm.jsp";
// 	else if("modifyForm".contentEquals(currentInfoPage))
// 		pageName = "/myinfo/modifyForm.jsp";
	
	String currentPage = request.getParameter("currentPage");
	System.out.println(currentPage);
	
	if(currentPage==null)
		pageName = "/myinfo/myinfoForm.jsp";
	else if("myinfoForm".contentEquals(currentPage))
		pageName = "/myinfo/myinfoForm.jsp";
	else if("ContractDetailsForm".contentEquals(currentPage))
		pageName = "/myinfo/ContractDetailsForm.jsp";
	else if("ContractDetailsProc".contentEquals(currentPage))
		pageName = "/myinfo/ContractDetailsProc.jsp";

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
        <a href="<%=path%>ContractDetailsProc">계약정보</a>
        <br/>
        <jsp:include page="<%=pageName%>"/>        
    </nav>
</center>
</body>
</html>