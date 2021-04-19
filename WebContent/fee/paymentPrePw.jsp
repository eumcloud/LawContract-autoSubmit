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
		width: 306px;
		height: 60px;
		 font-size:20px;
		 font-weight:bold;
	}
	.boxTwo table{
		background: #ffffff;
		width: 100%;
		height: 200px;
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
  		width:300px;
  		height: 40px;
  		font-size:20px;
  		margin : 10px;
  		text-align: center;
	}	
</style>
<script type="text/javascript">
function openPopCloss(path){
	window.opener.location.href=path;
   	self.close();
}
</script>
<%
	String padd = "pre";
	session.setAttribute("padd", padd);
%>
<body>
		<div class="boxAll">
		<div class="headBox">
		<div style="text-align:center">
		<h1 style="color: ffffff;">요금결제</h1>
		</div>
		</div>
		<div class="boxTwo">
		<form action="<%=request.getContextPath()%>/fee/paymentPwProc.jsp" method="post">
		<table width="350px">
			<tr bgcolor="#FAF8F6">
				<th colspan="2"><font size="2em">패스워드</font></th>
			</tr>
			<tr bgcolor="#F3EEE8">
				<th colspan="2"><input type="password" placeholder='비밀번호 6자리 입력하세요'></th>
			</tr>
			<tr bgcolor="#FAF8F6">
				<th colspan="2"><button onclick="openPopCloss('<%=request.getContextPath()%>/fee/paymentPwNoProc.jsp');">취소</button><button onclick="openPopCloss('<%=request.getContextPath()%>/fee/paymentPwProc.jsp');">다음</button></th>
			</tr>
		</table>
		</form>
		<br/>
		</div>
		</div>
</body>