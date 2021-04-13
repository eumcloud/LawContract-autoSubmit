<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--
    . : 클래스
    # : 아이디
    -->
<script src='<%=request.getContextPath() %>/js/feeinfoForm.js' type="text/javascript"></script>   
<input type="hidden" name="currentPage" value="feeinfoForm"/>
<style type="text/css">
	.btn button{
		background: #A9F5F2;
		padding: 2px 15px;
		margin-left:120px;
		margin-right:145px;
		margin-top:20px;
		width: 80px;
		height: 60px;
	}
	.boxForm {
		width: 1200px;
		border: solid 3px red;
		
	}
	.boxForm h2{
		margin : 20px;
		text-align:left;
	}
	.boxForm h3{
		margin : 20px;
		text-align:left;
	}
</style>
<%
	String path = request.getContextPath()+"/fee/payment.jsp";
%>
<br/><br/><br/>
<center>
<h1>급액안내</h1><br/>
<table>
  <tr>
    <th colspan="7"><img src="<%=request.getContextPath()%>/image/feeinImg.png" width="990px" height="350px"></th>
    
  </tr>
  <tr>
    
    <td>
    	<div class="btn">
   			<form action="/payment.jsp">
   				<button onclick="openPop('<%=path%>');">선택</button>
    			<button>선택</button>
    			<button>선택</button>
    		</form>
    	</div>
   </td>
  </tr>
</table>
<br/>
<hr/>
<br/>
<h1>공과금</h1><br/>
    <img src="<%=request.getContextPath()%>/image/feeinImg2.png" width="990px" height="350px">
<br/><br/><br/>
<hr/>
<br/>

<h1>ACON 계약에 대한 질문 내용</h1><br/>
<div class="boxForm">
	<h2>어떤 결제 수단을 지원하나요?</h2>
	<hr>
	<h3>저희는 카드만 결제만 지원합니다.</h3>
</div>
<div class="boxForm">
	<h2>공과금이란?</h2>
	<hr>
	<h3>개인 또는 법인에 대하여 국가나 지방공공단체에서 부과하는 국세·지방세 등의 제세금과 국가나 공공단체에 의하여 국민 또는 공공단체의 구성원에게 강제적으로 부과되는 공적부담금을 말합니다.</h3>
</div>
<div class="boxForm">
	<h2>인지대란?</h2>
	<hr>
	<h3>국가가 발행하는 '수입인지'의 가격을 줄인 말이다.</h3>
	<h3>*수입인지 : 국고수입이 되는 조세(인지세ㆍ등록면허세)ㆍ수수료ㆍ벌금ㆍ과료 등이 수납금의 징수를 위하여 정부가 발행하고 있는 증지를 말한다.</h3>
</div>
<div class="boxForm">
	<h2>송달료란?</h2>
	<hr>
	<h3>소송진행시 현출되는 서류들을 당사자들에게 발송하기 위한 비용이다.</h3>
</div>

</center>
