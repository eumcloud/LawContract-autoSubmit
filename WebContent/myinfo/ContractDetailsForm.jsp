<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.web.DTO.*"%>
<%@page import="com.web.DAO.*"%>
<%@page import="com.web.common.*"%>
<%@page import="java.util.List"%>


<%
	List<Condition> ContractList = (List<Condition>)session.getAttribute("ContractList");
	String url = request.getContextPath()+"/myinfo/ContractDetailsProc.jsp?currentPage=ContractDetailsProc&pageNumber=";
	int pageNumber = Integer.parseInt( request.getParameter("pageNumber") );
	int rowsPerPage = (Integer)session.getAttribute("rowsPerPage");
	int totalPage = (int)session.getAttribute("totalPage");	
	String ContractDetailsModityFormPath = request.getContextPath() + "/myinfo/ContractDetailsModityForm.jsp";
	String ContractDetailsDeleteProcPath = request.getContextPath() + "/myinfo/ContractDetailsDeleteProc.jsp";
	String ContractDetailsSubmitProcPath = request.getContextPath() + "/myinfo/ContractDetailsSubmitProc.jsp";
	
	int cnt = 0;

	String procpath = request.getContextPath()+"/myinfo/ContractDetailsProc.jsp";
	
	String track = "contractDedetails";

	
%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<script type="text/javascript" src='<%=request.getContextPath()+"/js/common.js"%>'></script>
<script type="text/javascript" src='<%=request.getContextPath()+"/js/contractDetails.js"%>'></script>
<script type="text/javascript" src='<%=request.getContextPath()+"/js/jquery-1.11.3.min.js"%>'></script>
<script type="text/javascript" src='<%=request.getContextPath()+"/js/feeProc.js"%>'></script>

<script type="text/javascript">
function downClick(fno) {
	document.getElementById("file"+fno).click();
	document.getElementById("filee"+fno).click();
}

</script>
<style>
#downImg{
	width: 40px;
	height: 50px;
	margin-left: 17px;
}
#downImg:hover {
	background: #d0d1d0;
}

.row{

}


</style>
<body class="row">

<form style=margin-bottom:200; id="frm" action="<%=request.getContextPath()%>/myinfo/ContractDetailsProc.jsp" method="post">
<input type='hidden' value='<%=track %>'/>
<table class="table table-hover mt-5 mx-auto" style="width: 1200px; ">
	 
	<tr>
		<th style="padding-left: 60px; width: 188px;" ><input type="checkbox" name="checkAllName" onclick="checkAll('checkAllName', 'boardCheckbox')" />전체선택</th>
		<th style="width:120px;padding-top: 8px; background-color:skyblue; padding-left: 10px;" >계약번호</th>
		<th style="width: 124px; padding-left: 20px;" >계약 상태</th>
		<th style=" width: 180px; text-align:center;" >계약 요약내용</th>
		<th  style="width: 120px; padding-left: 15px;">다운로드</th>
		<th  style="width: 100px; padding-left: 30px;">계약일</th>
		<th  style="width: 100px; padding-left: 30px;">종료일</th>
		<th  style="width: 160px; padding-left: 15px;">법원제출 현황</th>
	</tr>
<%
SimpleDateFormat sf = new SimpleDateFormat("yyyy.MM.dd");
for(Condition c : ContractList){

	String condition = c.getCondition(); if(condition==null){condition = "진행 중";}
	String lawaction = c.getLawaction(); if(lawaction==null){lawaction = "확인 중";}
	String signdate = c.getSignDate().replace("00:00:00",""); 
	String deadline = c.getDeadLine().replace("00:00:00",""); 
	
%>
	<tr>
		<%-- <input type="hidden" name="contractNum" value="<%=c.getFno()%>"/></td> --%>
		<td align="center" ><input type="checkbox" value='<%=c.getFno()%>' name="boardCheckbox"/></td>
		<td align="center"><p><%=c.getFno() %></p></td>
		<td align="center"><%=condition%></td>
		<td align='left' style='width:500px;'><%="  채권자 : "+ c.getCreditor() +"과 채무자 : " +c.getDeptor()+"의 "+ c.getMoney()+"만 원" %>
		<td><img id="downImg" src="<%=request.getContextPath()%>/image/download.png" onclick="downClick('<%=c.getFno()%>');"><%=c.getDownloadPath() %><%=c.getDownloadPath2() %></td>
		<td align="center" style='width:150px;'><%=signdate %></td>
		<td align="center" style='width:150px;'><%=deadline %></td>
		<td align="center"><%=lawaction %></td>
		
		<%
}

%></tr>



<tr><td/><td/><td/><td/><td/><td/><td colspan='3' style="padding-left:10px; ">
<input type="button" class="btn btn-warning" name="btn" onclick="formSubmit('frm', '<%=ContractDetailsDeleteProcPath%>');" value = "삭제 " />	
<input type="button" class="btn btn-danger" name="btn" onclick="checkForm('<%=request.getContextPath() %>/fee/feePayment.jsp', 'frm', '<%=request.getContextPath() %>/myinfo/ContractDetailsSubmitProc.jsp')" value = "법원제출 " /></td>

		
	</tr>


</table>

<nav aria-label>
<ul class="pagination mx-auto mt-5 " style="width: 280; color : white;">
<%
out.println(ContractTools.getNavi(totalPage, rowsPerPage, url, pageNumber));
%>
	</ul>
</nav>

</form>
</body>