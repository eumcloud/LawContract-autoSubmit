
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String path = request.getContextPath();
    	Date d = new Date();
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    	String today = sdf.format(d);

    %>
<script src="<%=path %>/js/conditionForm.js" type="text/javascript"></script>
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
</style>
<input type="hidden" name="currentPage" value="signatureForm"/>
<br/><br/><br/><br/><br/>
<center>
<table class="table1">
<tr style="text-align: center;">
<th>계약 당사자</th><th>주소</th><th colspan="2">기한</th><th>계약날짜</th><th>대차금액</th>
</tr>
<tr>
<td><input type="text" name='writer' placeholder='이름을 입력하세요'/></td>
<td><input type="text" name='addr' placeholder='주소를 입력하세요'/></td>
<td><input type="date" name='date' value="<%=today%>"/></td>
<td><input type="date" name='startTerm' value="<%=today%>"/></td><td><input type="date" name='endTerm' value="<%=today%>"/></td>
<td><input type="text" name='Loan' placeholder='대차금액을 입력하세요'/></td>
</tr>
</table>
</center>
<table id=list>
<p style="color: red; font-size: 10px;">※ 특약사항은 일반적인 계약사항과 상충되는 경우 ‘특약사항을 우선’ 하도록 협의하는 내용입니다.</p>
<tr>
	<td>특약사항</td>
	<td><textarea rows="2" cols="50" name="spcContents"></textarea></td>
	<td colspan='2' align="center"><img src="<%=path%>/image/add.png" onclick="add();" id="add" width="20px" height="20px"/></td>
</tr>
</table>
<img src="<%=path%>/image/next.png" id="next" width="70px" height="70px" />
