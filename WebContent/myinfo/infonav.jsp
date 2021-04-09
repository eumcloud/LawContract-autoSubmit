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
	
	if(currentPage==null)
		pageName = "/myinfo/myinfoForm.jsp";
	else if("myinfoForm".contentEquals(currentPage))
		pageName = "/myinfo/myinfoForm.jsp";
	else if("modifyForm".contentEquals(currentPage))
		pageName = "/myinfo/modifyForm.jsp";

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
        <a href="<%=path%>modifyForm">계약정보</a>
        <br/>
        <jsp:include page="<%=pageName%>"/>        
    </nav>
</center>
</body>
</html>