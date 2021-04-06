<%@ page contentType="text/html; charset=UTF-8"%>
<%
	out.print("logout");
	session.removeAttribute("usrId");
%>
<jsp:forward page="/index.jsp">
<jsp:param value="home" name="currentPage"/>
</jsp:forward>