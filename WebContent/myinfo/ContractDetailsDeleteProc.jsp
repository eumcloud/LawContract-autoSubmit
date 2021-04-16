<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.web.DTO.*"%>
<%@page import="com.web.DAO.*"%>
<%@page import="java.util.List"%>

<%
	Member currentUser = (Member)session.getAttribute("currentUser");
	String Email = currentUser.getEmail();
	int typeInt;
	
	try{
		String[] boardCheckbox = request.getParameterValues("boardCheckbox");
		for(String s : boardCheckbox){
			System.out.println("체크된 No의 값 : " +s);
		}
	}catch (NullPointerException e){
		System.out.println("체크를 선택하지않으셨습니다.");
	}
	
	ContractDetailsDAO dao = new ContractDetailsDAO();
	
	
// 	try{
// 		String[] boardCheckbox = request.getParameterValues("boardCheckbox");
// 		for(String s : boardCheckbox){
// 			typeInt = Integer.parseInt(s);
// 			dao.ContractDelete(Email, typeInt);
// 		}
// 	}catch (NullPointerException e){
//  		System.out.println("체크를 선택하지않으셨습니다.");
//  	}
%>

<jsp:forward page="/index.jsp">
<jsp:param value="ContractDetailsProc" name="currentPage"/>
</jsp:forward>