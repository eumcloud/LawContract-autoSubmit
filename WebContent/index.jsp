<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/header.jspf" %>
<%@page import="com.web.DAO.*"%>
<%@page import="com.web.DTO.*"%>

<%
	String currentPage = request.getParameter("currentPage");
	String pageName = "/form/home.jsp";
	
	if(currentPage==null)
		pageName = "/form/home.jsp";
	else if("home".contentEquals(currentPage))
		pageName = "/form/home.jsp";
	else if("loginForm".contentEquals(currentPage))
		pageName = "/login/loginForm.jsp";
	else if("logout".contentEquals(currentPage))
		pageName = "/login/logout.jsp";
	else if("membershipForm".contentEquals(currentPage))
		pageName = "/membership/membershipForm.jsp";
	else if("contractForm".contentEquals(currentPage))
		pageName = "/contract/contractForm.jsp";
	else if("feeinfoForm".contentEquals(currentPage))
		pageName = "/fee/feeinfoForm.jsp";
	else if("introduceForm".contentEquals(currentPage))
		pageName = "/introduce/introduceForm.jsp";
	else if("conditionForm".contentEquals(currentPage))
		pageName = "/signature/conditionForm.jsp";
	else if("signatureForm".contentEquals(currentPage))
		pageName = "/signature/signatureForm.jsp";
	else if("myinfoForm".contentEquals(currentPage))
		pageName = "/myinfo/infonav.jsp";
	else if("ContractDetailsForm".contentEquals(currentPage))
		pageName = "/myinfo/infonav.jsp";
	else if("ContractDetailsProc".contentEquals(currentPage))
		pageName = "/myinfo/infonav.jsp";
	else if("phoneForm".contentEquals(currentPage))
		pageName = "/membership/phoneForm.jsp";
	else if("conditionFormSnd".contentEquals(currentPage))
		pageName = "/signature/conditionFormSnd.jsp";
	else if("signatureFormSnd".contentEquals(currentPage))
		pageName = "/signature/signatureFormSnd.jsp"; 
%>
<html>
<body><head><title>여러분을 위한 스마트계약입니다</title></head>
<table style="width: 100%;">
<tr>
	<td>
		<%@ include file="/common/top.jsp" %>
	</td>
</tr>
<tr>
	<td><br/><br/><br/>
		<jsp:include page="<%=pageName%>"/>
	</td>
</tr>
<tr>
	<td>
		<%@ include file="/common/footer.jsp" %>
	</td>
</tr>
</table>
</body>
</html>

   
