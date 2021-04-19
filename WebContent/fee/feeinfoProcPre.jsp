<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pakicg = "PREMIUM";
	String money = "100,000원";

	session.setAttribute("pakicg", pakicg);
	session.setAttribute("money", money); 
 
	System.out.println("안녕하세요");
%>
<jsp:forward page="feePayment.jsp"/>
