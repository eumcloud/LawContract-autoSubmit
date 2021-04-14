<%@page import="com.web.DAO.ContractfileDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.web.DTO.*"%>
<%@page import="com.web.DAO.*"%>
<%@page import="java.util.List"%>
    
<%	

	String fno = request.getParameter("contractNum");
	ContractDetailsDAO contractDetailsDAO = new ContractDetailsDAO();
	List<ContractFile> conList =  contractDetailsDAO.getFileList(fno);
	session.setAttribute("conList", conList);
	
%>

<jsp:forward page="/index.jsp">
<jsp:param value="ContractDetailsForm" name="currentPage"/>
</jsp:forward>