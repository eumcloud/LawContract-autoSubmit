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
	String[] boarderckeck = request.getParameterValues("boardCheckbox");
	
	String ContractDetailsModityFormPath = request.getContextPath() + "/myinfo/ContractDetailsModityForm.jsp";
	String ContractDetailsDeleteProcPath = request.getContextPath() + "/myinfo/ContractDetailsDeleteProc.jsp";
	String ContractDetailsSubmitProcPath = request.getContextPath() + "/myinfo/ContractDetailsSubmitProc.jsp";
	
	int cnt = 0;

	String procpath = request.getContextPath()+"/myinfo/ContractDetailsProc.jsp";

%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<script type="text/javascript" src='<%=request.getContextPath()+"/js/common.js"%>'></script>
<script type="text/javascript" src='<%=request.getContextPath()+"/js/contractDetails.js"%>'></script>
<script src='<%=request.getContextPath() %>/js/infoput.js' type="text/javascript"></script>
<script type="text/javascript">
function downClick(fno) {
	document.getElementById("file"+fno).click();
	document.getElementById("filee"+fno).click();
}

</script>
<style>
#downImg{
	width: 40px;
	height: 40px;
	margin-left: 17px;
}
#downImg:hover {
	background: #d0d1d0;
}
</style>
<form id="frm" action="<%=request.getContextPath()%>/myinfo/ContractDetailsProc.jsp" method="get">
<table class="table table-hover mt-5 mx-auto" style="width: 600px; ">
	<tr>
		<th style="padding-left: 80px; width: 188px; " >선택</th>
		<th style="width: 116px; padding-left: 20px;" >계약 상태</th>
		<th style="padding-top: 8px; padding-left: 35px;" >계약번호</th>
	
		<th  style="width: 100px; padding-left: 15px;">다운로드</th>
	</tr>
<%
	for(ContractFile c : ContractList){
%>
	<tr>

		<td align="center"><input type="checkbox" <%=boarderckeck %> value='<%=c.getFno()%>' name="boardCheckbox"/></td>
		<td align="center"><%=c.getCondition()%></td>
		<td align="center"><p><%=c.getFno()%></p>
		</td>
		<td><img id="downImg" src="<%=request.getContextPath()%>/image/download.png" onclick="downClick('<%=c.getFno()%>');">
		<input type="hidden" name="contractNum" value="<%=c.getFno()%>"/>111</td>
		<td align="center"><%=c.getDownloadPath() %><%=c.getDownloadPath2() %></td>
		<%
}
%>
		
	</tr>


</table>

<nav aria-label>
<ul class="pagination mx-auto mt-5 " style="width: 280; color : white;">
<%
out.println(ContractTools.getNavi(totalPage, rowsPerPage, url, pageNumber));
%>
	</ul>
</nav>
<input type="checkbox" id='checkAllName' name="checkAllName" onclick="checkAll('checkAllName', 'boardCheckbox')" >전체선택</input>
<input type="button" name="btn" onclick="formSubmit('frm', '<%=ContractDetailsDeleteProcPath%>');" value = "삭제 " />	
<input type="button" name="btn" onclick="openPop2('boardCheckbox', '<%=request.getContextPath() %>/fee/paymentBus.jsp');" value = "법원제출 " />	
</form>
