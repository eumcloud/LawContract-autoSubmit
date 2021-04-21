<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String popUp = (String)session.getAttribute("popUp");
	if("payment".contentEquals(popUp));
	popUp = "실패";
	request.setAttribute("popUp", popUp);
	String Success = "Success";
	session.setAttribute("Success", Success);
	String result = (String)session.getAttribute("SelectFno");
	String nextPage = "feeinfoForm";
	if(result==null){
	nextPage = "feeinfoForm";
	}
	else {
		nextPage="ContractDetailsProc";
	}
%>
<jsp:forward page="/index.jsp">
<jsp:param value="<%=nextPage %>" name="currentPage"/>
</jsp:forward>  