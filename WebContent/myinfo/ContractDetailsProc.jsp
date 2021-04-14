<%@page import="com.web.DAO.ContractfileDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.web.DTO.*"%>
<%@page import="com.web.DAO.*"%>
<%@page import="java.util.List"%>
    
<%	
	Member currentUser = (Member)session.getAttribute("currentUser");
	int rowsPerPage = 3;
	int pageNumber = Integer.parseInt( request.getParameter("pageNumber") );
	
	ContractfileDAO dao = new ContractfileDAO();
	List<ContractFile> lst = dao.getBoardList(pageNumber, rowsPerPage, currentUser.getEmail());
	
	session.setAttribute("ContractList", lst);
	session.setAttribute("rowsPerPage", rowsPerPage);
	session.setAttribute("totalPage", dao.getBoardCount(currentUser.getEmail()));
	
	String fno = request.getParameter("contractNum");
	ContractDetailsDAO contractDetailsDAO = new ContractDetailsDAO();
	List<ContractFile> conList =  contractDetailsDAO.getFileList(fno);
	session.setAttribute("conList", conList);
	
%>

<jsp:forward page="/index.jsp">
<jsp:param value="ContractDetailsForm" name="currentPage"/>
</jsp:forward>