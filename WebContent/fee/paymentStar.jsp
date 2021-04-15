<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--
    . : 클래스
    # : 아이디
    -->
<style type="text/css">
	.headBox {
		margin-top : 0px;
		background: #CA394F;
		text-align:center;
		height: 75px;
	}
	.boxAll {
		margin : 0px;
		background: #F3EEE8;
		text-align:center;
	}
	.boxTwo{
		margin : 25px;
	}
	.boxTwo button{
		width: 250px;
		height: 60px;
		font-size:20px;
		font-weight:bold;
	}
	.boxTwo table{
		background: #ffffff;
		width: 100%;
		height: 400px;
	}
	.boxTwo td{
		text-align: left;
		border : 1px solid black;
		margin : 10px;
	}
	.boxTwo th{
		text-align: center;
		border : 1px solid black;
		margin : 10px;
	}
	input {
  		width:50px;
  		font-size:20px;
  		margin : 10px;
	}
	select {
		width:85px;
  		height:35px;
  		font-size:20px;
  		margin : 10px;
	}	
</style>
<%
	String path = request.getContextPath()+"/fee/feeinfoForm.jsp";
%>
<script type="text/javascript">
function openPopCloss(path){
	window.opener.location.href=path;
   	self.close();
}
</script>
<body>
		<div class="boxAll">
		<div class="headBox">
		<div style="text-align:center">
		<h1 style="color: ffffff;">요금결제</h1>
		</div>
		</div>
		<div class="boxTwo">
		<form action="<%=request.getContextPath()%>/fee/paymentStarPw.jsp">
		<table width="350px">
			<tr bgcolor="#FAF8F6">
				<th width="250px"><h2>상점명</h2></th>
				<td ><b>주) ACON 프로젝트</b></td>
			</tr>
			<tr bgcolor="#F3EEE8">
				<th><h2>상품명</h2></th>
				<td><b>테스트 아이템</b></td>
			</tr>
			<tr bgcolor="#FAF8F6">
				<th><h2>결제금액</h2></th>
				<td><b>???원</b></td>
			</tr>
			<tr bgcolor="#F3EEE8">
				<th><h2>계열사</h2></th>
				<td>
					<select>
						<option>국민</option>
						<option>우리</option>
						<option>롯데</option>
						<option>하나</option>
					</select>
				</td>
			</tr>
			<tr bgcolor="#FAF8F6">
				<th><h2>카드번호</h2></th>
				<td><input type="text"><input type="password"><input type="password"><input type="password"></td>
			</tr>
			<tr bgcolor="#F3EEE8">
				<th><h2>유효기간</h2></th>
				<td><input type="text" style="width: 50px;" > <b>/</b> <input type="text" style="width: 50px;"></td>
			</tr>
			<tr bgcolor="#FAF8F6">
				<th><h2>할부개월</h2></th>
				<td>
					<select>
						<option>일시불</option>
						<option>12개월</option>
						<option>1개월</option>
					</select>
				</td>
			</tr>
			<tr bgcolor="#F3EEE8">
				<th colspan="2">
				<button onclick="openPopCloss('<%=request.getContextPath()%>/fee/feeinfoProc.jsp')">취소</button><button>다음</button>
				</th>
			</tr>
		</table>
		</form>
		<br/>
		</div>
		</div>
</body>
	

