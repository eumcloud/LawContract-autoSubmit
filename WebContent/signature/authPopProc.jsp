<%@page import="java.util.Random"%>
<%@ page language="java" pageEncoding="utf-8"%>
<%
Random rand = new Random();
int randNum = rand.nextInt(10000);
String authNum = String.format("%04d", randNum);
String residentNum = request.getParameter("residentNum");
session.setAttribute("creditorRegiNum", residentNum);
session.setAttribute("authNum", authNum);

%>
<jsp:forward page="conditionAuth.jsp">
<jsp:param value="conditionForm" name="currentPage"/>
</jsp:forward>