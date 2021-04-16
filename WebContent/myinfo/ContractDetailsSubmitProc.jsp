<%@page import="java.util.*"%>
<%@page import="com.web.DAO.*"%>
<%@page import="com.web.DTO.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	Member currentUser = (Member) session.getAttribute("currentUser");

	List<Condition> a = new ArrayList<Condition>();
	List<ContractFile> b = new ArrayList<ContractFile>();
	
	String[] boardCheckbox = request.getParameterValues("boardCheckbox");
	String email = currentUser.getEmail();
	
	ContractDetailsDAO dao = new ContractDetailsDAO();
	int typeInt = 0;
	
	for(String s : boardCheckbox){
		typeInt = Integer.parseInt(s);
		a = dao.getUserContractInfo(email, typeInt);
		b = dao.getUserContractFile(email, typeInt);
	}
	
	 

	session.setAttribute("userContractInfo", a);
	session.setAttribute("getUserContractFile", b);
// 	for(Condition x : a){
// 		System.out.println("info : " +x.getNo());
// 		System.out.println("info : " +x.getCreditor());
// 		System.out.println("info : " +x.getCreditorAddr());
// 	}
	
// 	for(ContractFile y : b){
// 		System.out.println("file : " + y.getNo());
// 		System.out.println("file : " +y.getCreditorEmail());
// 		System.out.println("file : " +y.getDeptorEmail());
// 	}
%>

<jsp:forward page="/index.jsp">
<jsp:param value="ContractDetailsProc" name="currentPage"/>
</jsp:forward>