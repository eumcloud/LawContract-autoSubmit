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
	String procpath = request.getContextPath()+"/myinfo/ContractDetailsProc.jsp";
	System.out.println("pageNumber : " + pageNumber);
	System.out.println("rowsPerPage : " + rowsPerPage);
	System.out.println("totalPage : " + totalPage);	
	List<ContractFile> conList = (List<ContractFile>)session.getAttribute("conList");
	ContractDetailsDAO contractDetailsDAO = new ContractDetailsDAO();
	String fileurl="";
	for(ContractFile contractFile : conList){
		fileurl+=contractDetailsDAO.getContractFile(request.getContextPath(), "uploadFile", contractFile);
	}
%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<script type="text/javascript" src='<%=request.getContextPath()+"/js/common.js"%>'></script>
<form id="frm" action="<%=request.getContextPath()%>/myinfo/ContractDetailsProc.jsp" method="get">
<table class="table table-hover mt-5 mx-auto" style="width: 600px; ">
	<tr>
		<th style="padding-left: 80px; width: 188px; " >선택</th>
		<th style="width: 116px; padding-left: 20px;" >계약 상태</th>
		<th style="padding-top: 8px; padding-left: 64px;" >계약명</th>
		<th style="width: 116px; padding-left: 10px;" >삭제 / 수정</th>
	</tr>
<%
	for(ContractFile c : ContractList){
%>
	<tr>

		<td align="center"><input type="checkbox" value='<%=c.getNo()%>' name="boardCheckbox"/></td>
		<td align="center"><%=c.getCondition()%></td>
		<td align="center"><p onclick="formSubmit('frm', '<%=procpath%>');"><%=c.getFno() %></p>
		<input type="hidden" name="contractNum" value="<%=c.getFno()%>"/></td>
		<td align="center"><%=c.getContractFile() %></td>
	</tr>
<%
}
%>
<%=fileurl %>
</table>

<nav aria-label>
	<ul class="pagination mx-auto mt-5" style="width: 200;">
<%
out.println(ContractTools.getNavi(totalPage, rowsPerPage, url, pageNumber));
%>
	</ul>
</nav>
<br /><br /><br />	
</form>
