<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--
    . : 클래스
    # : 아이디
    -->
<style type="text/css">
	.headBox {
		margin-top : 0px;
		background: red;
		text-align:center;
		height: 90px;
		
	}
	.boxAll {
		margin-top : 0px;
		background: red;
		text-align:center;
		height: 90px;
		
	}
	
	.boxTwo{
		background: #A9F5F2;
		margin-top : 15px;
	}
	
	.boxTwo table{
		background: #ffffff;
		margin : auto;
		width: 100%;
		height: 400px;
	}
	.boxTwo td{
		text-align: left;
		border : 1px solid black;
		font-size:20px;
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
		width:70px;
  		height:35px;
  		font-size:20px;
  		margin : 10px;
	}
	
</style>
<div class="boxAll">
<body>
		<div class="headBox">
		<div style="text-align:center">
		<h1 style="valign=middle">요금결제</h1>
		</div>
		</div>
		<div class="boxTwo">
		<table width="350px">
			<tr bgcolor="#4000FF">
				<th width="250px" valign=middle><h2>상점명</h2></th>
				<td ><b>주) ACON 프로젝트</b></td>
			</tr>
			<tr bgcolor="#81F7F3">
				<th><h2>상품명</h2></th>
				<td><b>테스트 아이템</b></td>
			</tr>
			<tr bgcolor="#4000FF">
				<th><h2>결제금액</h2></th>
				<td><b>???원</b></td>
			</tr>
			<tr bgcolor="#81F7F3">
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
			<tr bgcolor="#4000FF">
				<th><h2>카드번호</h2></th>
				<td><input type="text"><input type="password"><input type="password"><input type="password"></td>
			</tr>
			<tr bgcolor="#81F7F3">
				<th><h2>유효기간</h2></th>
				<td><input type="text" style="width: 50px;" > <b>/</b> <input type="text" style="width: 50px;"></td>
			</tr>
		</table>
		</div>
		
</body>
	</div>

