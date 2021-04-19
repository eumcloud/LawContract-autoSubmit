<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--
    . : 클래스
    # : 아이디
    -->
<script src='<%=request.getContextPath() %>/js/feeinfoForm.js' type="text/javascript"></script>   
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

<style type="text/css">
	table{
		width : 90%;
		height: 730px;
		font-size : 20px;
		margin: auto;
		text-align: center;
		font-weight: bold;
	} 
	td, tr{
		padding: 10px;
	}
	.btn button{
		background: #FF874B;
		padding: 2px 15px;
		margin-left:120px;
		margin-right:145px;
		margin-top:20px;
		width: 200px;
		height: 100px;
		border-radius:15px;
		font-size:2em;
		color: #ffffff;
		border-radius:0.5em;
		padding:5px 20px;"
		
	}
	.boxForm {
		width: 1200px;
		text-align : center;
		border: solid 3px #3B240B;
		background: #FAF8F6;
	}
	.boxForm h2{
		margin : 20px;
		text-align:left;
	}
	.boxForm h3{
		margin : 20px;
		text-align:left;
	}
	.line{border-bottom: 1px solid red;}
	.a {
		line-height:80px;
	}
	.tableTwo{
		
	}
	.tableTwo td{
		border:3px #3B240B solid;
		background: #FAF8F6;
	}
	.tableTwo th{
		border:3px #3B240B solid;
		background: #6D8ECE;
	}
</style>
<%
	String feePath = request.getContextPath()+"/fee/feePaymentProc.jsp";
	String pathStar = request.getContextPath()+"/fee/feeinfoProcStar.jsp";
	String pathBus = request.getContextPath()+"/fee/feeinfoProcBus.jsp";
	String pathPre = request.getContextPath()+"/fee/feeinfoProcPre.jsp";
	String popUp = (String)request.getAttribute("popUp");
	String usrId = (String)session.getAttribute("usrId");
	System.out.println(usrId);
	
	if(popUp ==null)
		popUp="";
	if(usrId ==null)
		usrId=""; 
	
%>
<!--결제완료 시 팝업 창 띄우기 위한 것-->
<input id="popUp" type="hidden" value="<%=popUp%>">
<script type="text/javascript">
	var popUp = document.getElementById("popUp").value;
	if(popUp == "성공")
		alert('결제가 완료되었습니다.');
	if(popUp == "실패")
		alert('결제를 취소하였습니다.');
</script>
<head>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
</head>

<h1></h1>
<br/><br/><br/>
<form id="frm" action="<%=request.getContextPath() %>/index.jsp" method="post">
<input type="hidden" name="currentPage" value="feeinfoForm"/>
<input type="hidden" id="usrId" value="<%=usrId%>"/>
		<table border="1" >
    		<tr>
    			<td><table  border="1" >
    				<tr>
    					<td class="a" style="font-size: 28px; color: #FF8A4E">STARTER<br/>
    						<p style="font-size: 40px; color: #FF8A4E"><span class="material-icons">task_alt</span>
    						<b style="color :#323232">금액 : 10,000원</b></p>
    						━━━━━━━━━━━━━━━
    					</td>
    				</tr>
    				
    				<tr>
    					<td height="80px;" class="a">수량 : 50건
    					<p style="color: red">*다른 상품은 준비중입니다.</p>
    					<p style="font-size: 28px; color: #FF8A4E">━━━━━━━━━━━━━━━</p>
    					</td>
    					
    				</tr>
    				
    				<tr>
    					<td>혼자 모든 문서를 관리해야 하는<br/>
    					프리랜서, 1인 기업<br/>
    					<div class="btn"><button class="btn btn-outline-secondary" onclick="openPath('<%=pathStar%>','<%=feePath%>' ,'frm');">선택</button></div>
    					</td>
    				</tr>
    				
    				</table></td>
    		
    			<td><table  border="1">
    				<tr>
    					<td class="a" style="font-size: 28px; color: #FF8A4E">BUSINESS<br/>
    						<p style="font-size: 40px; color: #FF8A4E"><span class="material-icons">task_alt</span>
    						<b style="color :#323232">금액 : 40,000원</b></p>
    						━━━━━━━━━━━━━━━
    					</td>
    				</tr>
    				
    				<tr>
    					<td height="80px;" class="a">수량 : 100건
    					<p style="color: red">*다른 상품은 준비중입니다.</p>
    					<p style="font-size: 28px; color: #FF8A4E">━━━━━━━━━━━━━━━</p>
    					</td>
    					
    				</tr>
    				
    				<tr>
    					<td>문서를 효율적으로 관리하고자 하는<br>
    					 소규모 팀, 중소기업<br/>
    					 <div class="btn"><button class="btn btn-outline-secondary" onclick="openPath('<%=pathBus%>','<%=feePath%>' ,'frm');">선택</button></div>
    					</td>
    				</tr>
    				
    				</table></td>
    		
    			<td><table  border="1"  >
    				<tr>
    					<td class="a" style="font-size: 28px; color: #FF8A4E">PREMIUM<br/>
    						<p style="font-size: 40px; color: #FF8A4E"><span class="material-icons">task_alt</span>
    						<b style="color :#323232">금액 : 100,000원</b></p>
    						━━━━━━━━━━━━━━━
    					</td>
    				</tr>
    				
    				<tr>
    					<td height="80px;" class="a">수량 : 200건
    					<p style="color: red">*다른 상품은 준비중입니다.</p>
    					<p style="font-size: 28px; color: #FF8A4E">━━━━━━━━━━━━━━━</p>
    					</td>
    					
    				</tr>
    				<tr>
    					<td>여러 부서에서 함께 대량의 문서를<br/>
    					관리하는 기관, 회사<br/>
    					<div class="btn"><button class="btn btn-outline-secondary" onclick="openPath('<%=pathPre%>','<%=feePath%>' ,'frm');">선택</button></div>
    				</td>
    				</tr>
    				
    				</table></td>
    		</tr>
    	</table>
</form>
    	
<br/>
<hr/>
<br/>
<center>
<h1>공과금</h1><br/>
 <%--  <img src="<%=request.getContextPath()%>/image/feeinImg2.png" width="990px" height="350px"> --%>
 	<div class="tableTwo">
 	<table border="1" style="width: 70%; height: 400px;" class="tdbor">
    <tr>
	<th>법원공과금</th>
	<th>1천만원 미만</th>
	<th>1억원 이하</th>
	<th>10억원 이하</th>
	<th>10억원 이상</th>
    </tr>
    
    <tr>
	<td rowspan="2" class="tdbor" style="background: #ADBCD4">인지대</td>
	<td class="tdbor">(소가X0.005)/10</td>
	<td>(소가X0.0045<br/>
		+5,000) /10</td>
	<td>(소가X0.0040<br/>
		+55,000) /10</td>
	<td>(소가X0.0035<br/>
		+555,000) /10</td>
    </tr>
    <tr>
	<td>5,000원 이하</td>
	<td>45,500원 이하</td>
	<td>40만5,500원 이하</td>
	<td>40만5,500원 이상</td>
    </tr>
    <tr>
    	<td style="background: #ADBCD4">송달료</td>
    	<td>57,600</td>
    	<td>57,600</td>
    	<td>57,600</td>
    	<td>57,600</td>
    </tr>
</table>
</div>
<br/><br/><br/>
<hr/>
<br/>

<h1>ACON 계약에 대한 질문 내용</h1><br/>
<div class="boxForm">
	<h2>어떤 결제 수단을 지원하나요?</h2>
	<hr>
	<h3>저희는 카드만 결제만 지원합니다.</h3>
</div>
<br/>
<div class="boxForm">
	<h2>공과금이란?</h2>
	<hr>
	<h3>개인 또는 법인에 대하여 국가나 지방공공단체에서 부과하는 국세·지방세 등의 제세금과 국가나 공공단체에 의하여 국민 또는 공공단체의 구성원에게 강제적으로 부과되는 공적부담금을 말합니다.</h3>
</div>
<br/>
<div class="boxForm">
	<h2>인지대란?</h2>
	<hr>
	<h3>국가가 발행하는 '수입인지'의 가격을 줄인 말이다.</h3>
	<h3>*수입인지 : 국고수입이 되는 조세(인지세ㆍ등록면허세)ㆍ수수료ㆍ벌금ㆍ과료 등이 수납금의 징수를 위하여 정부가 발행하고 있는 증지를 말한다.</h3>
</div>
<br/>
<div class="boxForm">
	<h2>송달료란?</h2>
	<hr>
	<h3>소송진행시 현출되는 서류들을 당사자들에게 발송하기 위한 비용이다.</h3>
</div>
<br/>
</center>
