<%@page import="java.util.Random"%>
<%@ page language="java" pageEncoding="utf-8"%>
<%
Random rand = new Random();
int randNum = rand.nextInt(10000);
String authNum = String.format("%04d", randNum);
String residentNum = request.getParameter("residentNum");
session.setAttribute("deptorRegiNum", residentNum);
session.setAttribute("authNum", authNum);
  
%>
<jsp:forward page="authPop2.jsp">
<jsp:param value="conditionFormSnd" name="currentPage"/>
</jsp:forward>