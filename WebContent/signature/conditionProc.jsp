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
String email = request.getParameter("email");

session.setAttribute("creditor", writer);
session.setAttribute("creditorAddr", addr);
session.setAttribute("signdate", date);
session.setAttribute("deadline", Term);
session.setAttribute("money", Loan);
session.setAttribute("deptor", targetWriter);
session.setAttribute("deptorAddr", targetAddr);
session.setAttribute("deptorEmail", targetEmail);
session.setAttribute("spcContents", spcContents);
session.setAttribute("creditorEmail", email);

%>

<jsp:forward page="/index.jsp">
<jsp:param value="conditionForm" name="currentPage"/>
</jsp:forward>