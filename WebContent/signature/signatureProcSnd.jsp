<%@page import="com.web.DTO.ContractFile"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.web.DAO.ConditionDAO"%>
<%@page import="com.web.DTO.Condition"%>
<%@page import="java.util.List"%>
<%@page import="com.web.DAO.ConditionListDAO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Condition condition = new Condition();
	String deptorRegiNum = (String)session.getAttribute("deptorRegiNum");
	String contractNum = (String)session.getAttribute("contractNum");
	ConditionDAO conditionDAO = new ConditionDAO();
	Connection conn = conditionDAO.getConn();
	conditionDAO.addInfo(conn, deptorRegiNum, contractNum);
	conditionDAO.getMultiReq(request);
	ContractFile cf = conditionDAO.getcontractFile(request, condition);
	conditionDAO.addFile(conn, contractNum, cf);
	
%>
<jsp:forward page="/index.jsp">
<jsp:param value="signatureFormSnd" name="currentPage"/>
</jsp:forward>