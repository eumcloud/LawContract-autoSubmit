<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/header.jspf" %>
<%
	String currentPage = request.getParameter("currentPage");
	String pageName = "/form/home.jsp";
	if(currentPage==null)
		pageName = "/form/home.jsp";
	else if("home".contentEquals(currentPage))
		pageName = "/form/home.jsp";
	else if("loginForm".contentEquals(currentPage))
		pageName = "/login/loginForm.jsp";
	else if("membershipForm".contentEquals(currentPage))
		pageName = "/membership/membershipForm.jsp";
	else if("contractForm".contentEquals(currentPage))
		pageName = "/contract/contractForm.jsp";
	else if("feeinfoForm".contentEquals(currentPage))
		pageName = "/fee/feeinfoForm.jsp";
	else if("introduceForm".contentEquals(currentPage))
		pageName = "/introduce/introduceForm.jsp";
	else if("signatureForm".contentEquals(currentPage))
		pageName = "/signature/signatureForm.jsp";

	else if("phoneForm".contentEquals(currentPage))
		pageName = "/membership/phoneForm.jsp";
	//hello 자바 김기홍 추가 

	//hello 자바

%>

<html>
<body><head><title>여러분을 위한 스마트계약</title></head>
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

   
