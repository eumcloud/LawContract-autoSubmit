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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

<form class="table" id="frm" action="<%=request.getContextPath()%>/myinfo/ContractDetailsProc.jsp" method="get">
<table style="width: 650px; ">
	<thead>
	<tr>
		<center>
			<th>선택</th>
			<th>계약 상태</th>
			<th>계약명</th>
			<th>삭제 / 수정</th>
		</center>
	</tr>
	</thead>
<%
	for(ContractFile c : ContractList){
%>
	<tr>

		<td align="center"><input type="checkbox" value='<%=c.getNo()%>' name="boardCheckbox"/></td>
		<td align="center"><%=c.getCondition()%></td>
		<td align="center"><%=c.getFno()%></td>
		<td align="center"><%=c.getContractFile() %></td>
	</tr>
<%
}
%>
</table>
<%
out.println(ContractTools.getNavi(totalPage, rowsPerPage, url, pageNumber));
%>
<br /><br /><br />	
</form>
