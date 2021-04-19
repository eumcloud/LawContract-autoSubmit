<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%	 
	String pakicg = "BUSINESS";
	String money = "40,000원";

	session.setAttribute("pakicg", pakicg);
	session.setAttribute("money", money);
 
=======
<%	
	String pakicg = "BUSINESS";
	String money = "40,000원";

	session.setAttribute("pakicg", pakicg);
	session.setAttribute("money", money);

>>>>>>> branch 'youngsin' of https://github.com/eumcloud/mini2Pj
%>
<jsp:forward page="feePayment.jsp"/>
