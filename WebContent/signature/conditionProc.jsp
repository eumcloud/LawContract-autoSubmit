<%@ page contentType="text/html; charset=UTF-8"%>
<% 
String writer = request.getParameter("writer");
String addr = request.getParameter("addr");
String date = request.getParameter("date");
String Term = request.getParameter("Term");
String Loan = request.getParameter("Loan");
String targetWriter = request.getParameter("targetWriter");
String targetAddr = request.getParameter("targetAddr");
String targetEmail = request.getParameter("targetEmail");
String spcContents = request.getParameter("spcContents");
session.setAttribute("writer", writer);
session.setAttribute("addr", addr);
session.setAttribute("date", date);
session.setAttribute("Term", Term);
session.setAttribute("Loan", Loan);
session.setAttribute("targetWriter", targetWriter);
session.setAttribute("targetAddr", targetAddr);
session.setAttribute("targetEmail", targetEmail);
session.setAttribute("spcContents", spcContents);
%>

<jsp:forward page="/index.jsp">
<jsp:param value="signatureForm" name="currentPage"/>
</jsp:forward>