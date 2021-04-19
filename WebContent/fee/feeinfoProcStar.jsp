<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pakicg = "STARTER";
	String money = "10,000원";
	
	session.setAttribute("pakicg", pakicg);
	session.setAttribute("money", money);
<<<<<<< HEAD
	 
	System.out.println("안녕하세요");
%>
<jsp:forward page="feePayment.jsp"/> 
=======
	
	System.out.println("안녕하세요");
%>
<jsp:forward page="feePayment.jsp"/>
>>>>>>> branch 'youngsin' of https://github.com/eumcloud/mini2Pj
