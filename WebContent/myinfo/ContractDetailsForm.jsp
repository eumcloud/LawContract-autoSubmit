<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.web.DTO.*"%>
<%@page import="com.web.DAO.*"%>
<%@page import="com.web.common.*"%>
<%@page import="java.util.List"%>

<%
	List<Contractfile> ContractList = (List<Contractfile>)session.getAttribute("ContractList");
	
	String url = request.getContextPath()+"/myinfo/ContractDetailsProc.jsp?currentPage=ContractDetailsProc&pageNumber=";
	int pageNumber = Integer.parseInt( request.getParameter("pageNumber") );
	System.out.println("pageNumber : " + pageNumber);
	int rowsPerPage = (Integer)session.getAttribute("rowsPerPage");
	System.out.println("rowsPerPage : " + rowsPerPage);
	int totalPage = (int)session.getAttribute("totalPage");	
	System.out.println("totalPage : " + totalPage);
	
%>

<form id="frm" action="<%=request.getContextPath()%>/myinfo/ContractDetailsProc.jsp" method="post">
<table style="width: 650px; ">
	<thead>
	<tr>
		<th style="width: 40px; height:20px;" align="center">선택</th>
		<th style="width: 330px; height:20px;" align="center">계약 상태</th>
		<th style="width: 80px; height:20px;" align="center">계약명</th>
		<th style="width: 120px; height:20px;" align="center">삭제 / 수정</th>
	</tr>
	</thead>
	<tr>
		<td style="width: 40px; height:20px;" align="center"><hr/></td>
		<td style="width: 330px; height:20px;" align="center"><hr/></td>
		<td style="width: 80px; height:20px;" align="center"><hr/></td>
		<td style="width: 120px; height:20px;" align="center"><hr/></td>
	</tr>

<%
	for(Contractfile c : ContractList){
%>
	<tr>
		<td style="width: 40px; height:40px;"><input type="checkbox" value='<%=c.getNo()%>' name="boardCheckbox"/></td>
		<td style="width: 80px; height:40px;"><%=c.getCondition()%></td>
		<td style="width: 120px; height:40px;"><%=c.getContractname()%></td>
		<td style="width: 80px; height:40px;"><%=c.getContractfile() %></td>
	</tr>
<%
}
%>

<%
out.print(ContractTools.getNavi(totalPage, rowsPerPage, url, pageNumber));
%>	
</table>
</form>

