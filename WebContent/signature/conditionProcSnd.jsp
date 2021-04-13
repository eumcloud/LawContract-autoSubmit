<%@page import="com.web.DTO.Condition"%>
<%@page import="java.util.List"%>
<%@page import="com.web.DAO.ConditionListDAO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String contractNum = request.getParameter("contractNum");
	System.out.print("컨디션프락: "+contractNum);
	session.setAttribute("contractNum", contractNum);
	ConditionListDAO conditionListDAO = new ConditionListDAO();
	List<Condition> lst = conditionListDAO.getConditionList(contractNum);
	session.setAttribute("ConditionLst", lst);
%>
<jsp:forward page="/index.jsp">
<jsp:param value="signatureFormSnd" name="currentPage"/>
</jsp:forward>