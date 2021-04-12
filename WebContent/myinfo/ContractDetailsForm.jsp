<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.web.DTO.*"%>
<%@page import="com.web.DAO.*"%>
<%@page import="com.web.common.*"%>
<%@page import="java.util.List"%>

<%
	List<ContractFile> ContractList = (List<ContractFile>)session.getAttribute("ContractList");
	String url = request.getContextPath()+"/myinfo/ContractDetailsProc.jsp?currentPage=ContractDetailsProc&pageNumber=";
	
	int pageNumber = Integer.parseInt( request.getParameter("pageNumber") );
	int rowsPerPage = (Integer)session.getAttribute("rowsPerPage");
	int totalPage = (int)session.getAttribute("totalPage");	
	
	System.out.println("pageNumber : " + pageNumber);
	System.out.println("rowsPerPage : " + rowsPerPage);
	System.out.println("totalPage : " + totalPage);	
	
%>
<form id="frm" action="<%=request.getContextPath()%>/myinfo/ContractDetailsProc.jsp" method="get">
<table style="width: 650px; ">
	<thead>
	<tr>
		<th style="width: 10px; height:20px;" align="center">선택</th>
		<th style="width: 10px; height:20px;" align="center">계약 상태</th>
		<th style="width: 10px; height:20px;" align="center">계약명</th>
		<th style="width: 120px; height:20px;" align="center">삭제 / 수정</th>
	</tr>
	</thead>
	<tr>
		<td style="width: 40px; height:20px;" align="center"><hr/></td>
		<td style="width: 10px; height:20px;" align="center"><hr/></td>
		<td style="width: 40px; height:20px;" align="center"><hr/></td>
		<td style="width: 120px; height:20px;" align="center"><hr/></td>
	</tr>
<%
	for(ContractFile c : ContractList){
%>
	<tr>
		<td><input type="checkbox" value='<%=c.getNo()%>' name="boardCheckbox"/></td>
		<td><%=c.getCondition()%></td>
		<td><%=c.getFno()%></td>
		<td><%=c.getContractFile() %></td>
	</tr>
<%
}
%>
</table>

<%
out.println(ContractTools.getNavi(totalPage, rowsPerPage, url, pageNumber));
%>	
</form>

