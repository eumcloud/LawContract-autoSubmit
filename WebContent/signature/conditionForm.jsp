
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html; charset=UTF-8"%>
    <%
    	String path = request.getContextPath();
    	Date d = new Date();
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    	String today = sdf.format(d);
    	
    	
    %>

<style type="text/css">
#add:hover{
	background: #B0E0E6;
	border-radius: 50%;
}
#next{
	float: right;
}
#next:hover{
	background:#D1CFCF;
	border-radius: 50%;
}
table.table1 {
  border-collapse: separate;
  border-spacing: 1px;
  text-align: center;
  line-height: 1.5;
  margin: 20px 10px;
  margin-left: 260px;
}
table.table1 td {
  width: 155px;
  padding: 30px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  background: #eee;
  
}
table.table1 th {
  width: 155px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  color: #fff;
  background: #282d32 ;
 
}
#list {
	margin-left: 300px;
}
</style>
<form id="frm" method="post">
<input type="hidden" name="currentPage" value="conditionForm"/>
<script src="<%=path %>/js/conditionForm.js" type="text/javascript"></script>
<script src="<%=path %>/js/common.js" type="text/javascript"></script>
<br/><br/><br/><br/><br/>
<h1 style="margin-left: 300px;">계약 필수정보 요소</h1><br/><br/>
<table class="table1">
<tr style="text-align: center;">
<th>계약 당사자</th><th>주소</th><th>계약날짜</th><th>계약종료 날짜</th><th>대차금액</th><th>이메일</th>
</tr>
<tr>
<td><input type="text" id='writer' name='writer' placeholder='이름을 입력하세요'/></td>
<td><input type="text" id='addr' name='addr' placeholder='주소를 입력하세요'/></td>
<td><input type="date" id='date' name='date' value="<%=today%>"/></td>
<td><input type="date" id='Term' name='Term' value="<%=today%>"/></td>
<td><input type="text" id='Loan' name='Loan' placeholder='대차금액을 입력하세요'/></td>
<td><input type="text" id='email' name='email' placeholder='이메일을 입력하세요'/></td>
</tr>
</table>
<br/><br/><br/><br/>
<table class="table1" style="margin-left: 260px;">
<tr style="text-align: center;">
<th>계약 대상</th><th>주소</th><th>이메일</th>
</tr>
<tr>
<td><input type="text" id='targetWriter' name='targetWriter' placeholder='이름을 입력하세요'/></td>
<td><input type="text" id='targetAddr' name='targetAddr' placeholder='주소를 입력하세요'/></td>
<td><input type="text" id='targetEmail' name='targetEmail' placeholder='이메일을 입력하세요'/></td>
</tr>
</table>
<table id=list>
<p style="color: red; font-size: 13px; margin-left: 300px; margin-top: 200px;">※ 특약사항은 일반적인 계약사항과 상충되는 경우 ‘특약사항을 우선’ 하도록 협의하는 내용입니다.</p>
<tr>
	<td>특약사항</td>
	<td><textarea rows="2" cols="80" name="spcContents"></textarea></td>
	<td colspan='2' align="center"><img src="<%=path%>/image/add.png" onclick="add();" width="20px" height="20px"/></td>
</tr>
</table>
<img src="<%=path%>/image/next.png" id="next" width="70px" height="70px" style="margin-right: 300px; margin-bottom: 200px;" onclick="inputInfo('writer', 'addr', 'date', 'Term', 'Loan', 'email','targetWriter', 'targetAddr', 'targetEmail', 'http://localhost:8080/20210402_miniPj2/signature/authPop.jsp'), formSubmit('frm', '<%=request.getContextPath()%>/signature/conditionProc.jsp');"/>
</form>