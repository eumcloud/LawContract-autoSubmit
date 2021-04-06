<%@ page contentType="text/html; charset=UTF-8"%>
<% 
	String writer = request.getParameter("writer");
	String addr = request.getParameter("addr");
	String date = request.getParameter("date");
	String startTerm = request.getParameter("startTerm");
	String endTerm = request.getParameter("endTerm");
	String Loan = request.getParameter("Loan");
	String targetWriter = request.getParameter("targetWriter");
	String targetAddr = request.getParameter("targetAddr");
	String targetEmail = request.getParameter("targetEmail");
	System.out.println(writer);
	System.out.println(addr);
	System.out.println(date);
	System.out.println(startTerm);
	System.out.println(endTerm);
	System.out.println(Loan);
	System.out.println(targetWriter);
	System.out.println(targetAddr);
	System.out.println(targetEmail);
%>
<jsp:forward page="/index.jsp">
<jsp:param value="signatureForm" name="currentPage"/>
</jsp:forward>