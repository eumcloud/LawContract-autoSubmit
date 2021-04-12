<%@page import="com.web.DAO.ContractfileDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.web.DTO.*"%>
<%@page import="com.web.DAO.*"%>
<%@page import="java.util.List"%>
    
<%	
	Member currentUser = (Member)session.getAttribute("currentUser");
	String currentUserEmail = currentUser.getEmail();
	System.out.println("너의 이메일은" + currentUser.getEmail());
	int rowsPerPage = 3;
	int pageNumber = Integer.parseInt( request.getParameter("pageNumber") );
	
// 	System.out.println("pageNumber = " + pageNumber);
	
	ContractfileDAO dao = new ContractfileDAO();
	System.out.println("currentUser = " + currentUser.getEmail());
	List<ContractFile> lst = dao.getBoardList(pageNumber, rowsPerPage, currentUserEmail);
	
	session.setAttribute("ContractList", lst);
	session.setAttribute("rowsPerPage", rowsPerPage);
	session.setAttribute("totalPage", dao.getBoardCount());
	
%>

<jsp:forward page="/index.jsp">
<jsp:param value="ContractDetailsForm" name="currentPage"/>
</jsp:forward>