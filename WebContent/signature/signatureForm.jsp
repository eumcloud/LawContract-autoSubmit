<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.web.DTO.Condition"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%
Date nowTime = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 ");


String creditor = (String)session.getAttribute("creditor");
if (creditor== null) creditor = "____________";

String deptor= (String)session.getAttribute("deptor");
if (deptor ==null) deptor = "____________";

String money = (String)session.getAttribute(" money ");
if ( money ==null) money = "______________";

String interest = (String)session.getAttribute(" interest ");
if ( interest ==null) interest = "_____";

String deadline= (String)session.getAttribute(" deadline");
if ( deadline==null) deadline= "__________";

String spcContents = (String)session.getAttribute(" spcContents ");
if ( spcContents ==null) spcContents = "_____________________________";

String creditorRegiNum = (String)session.getAttribute(" creditorRegiNum  ");
if ( creditorRegiNum ==null) creditorRegiNum  = "____________________";

String creditorAddr = (String)session.getAttribute(" creditorAddr ");
if ( creditorAddr ==null) creditorAddr ="____________________";


String deptorRegiNum = (String)session.getAttribute(" deptorRegiNum ");
if ( deptorRegiNum==null ) deptorRegiNum = "____________________";

String deptorAddr = (String)session.getAttribute(" deptorAddr ");
if ( deptorAddr ==null) deptorAddr = "____________________";


%>


<html>
<head>
<script src="<%=request.getContextPath() %>/js/common.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/js/conditionForm.js" type="text/javascript"></script>
<style type='text/css'>
.paper {
	width:595px;
	height:842px;
	padding:80px;
	box-shadow: 4px 4px 4px 4px gray;
	background-color: #fff;
	padding: 40px;
}


#title {
	align-text: center;
	margin-bottom:40px;
}
.article {
	align: center;
	font-size: 16px;
	font-weight: bold;
	margin: 20px;
}
.contents {
	margin: 0 20px 0 20px;
	font-weight: none;
	
}
#list {
	width:200px;
	height:100px;
}
#next{
	float: right;
	background: white;
	border-radius: 50%;
}
#next:hover{
	background:yellow;
	border-radius: 50%;
}
</style>
</head>
<form id = "frm" method="post">
<body style="background-color: black;">
		<input type="hidden" name="currentPage" value="signatureForm" /> <br />
		
		<div class='paper'>
						<div id='title' align="center" ><h2>금전소비대차 계약서</h2></div>
						<div class='contetns'>
							<br/>
							
						

  <div>채권자 <%=creditor %> 을「갑」이라 하고, 채무자 <%=deptor %> 을「을」로 하여 「갑」과「을」 간에 다음과 같이 금전소비대차계약을 체결한다.</div><br/>
<div><b>제1조 (금전소비대차)</b><br/>  「갑」은 「을」에게 금<%=money %>원을 대여하고, 「을」은 이를 차용한다.</div><br/>
<div><b>제2조 (이자) </b><br/> 위의 차용금에 대한 이자는 없는 것으로 하되 제3조 정한 기한의 익일부터 실질 변제시 까지 연<%=interest%>%의 연체이자를 지급하여야 한다.</div><br/>
<div><b>제3조 (변제기한)</b><br/>  「을」의「갑」에 대한 위 차용금의 변제기한은 <%=deadline %> 까지로 한다.</div><br/>
<div><b>제4조 (변제장소)</b><br/>  「을」의「갑」에 대한 변제 장소는 「갑」의 주소지로 한다.</div><br/>
<div><b>제5조 (기한의 이익 상실)</b><br/>  「을」이 변제일 까지의 사이에 다음 각호에 해당하게 될 경우에는 기한의 이익이 상실되는 것으로 하여 「갑」은 어떠한 최고절차도 거칠 필요 없이 즉시 원금 및 위약금을 청구할 수 있다.<br/><br/>
1. 「을」의 부도 또는 파산시<br/>
2. 「을」이 담보로 제공한 부동산에 대하여 강제집행이 개시된 경우<br/>
3. 「을」이 담보로 제공한 부동산을 매도한 경우</div><br/>
<div>
<b>제6조 (위약금)</b><br/> 「을」이 「갑」으로부터 채무이행의 최고를 받았음에도 즉시 원리금을 상환하지 않을 때는 「을」은 「갑」에 대하여 위약금으로서 
금<%=money %>원을 지급하기로 하며, 이와는 별도로 「갑」에게 발생한 손해 일체에 대하여 배상하여야 한다.</div><br/>
<div><b>제7조 (담보의 제공)</b><br/>  「을」은 「갑」에게 차용금 및 기타 부대채무의 상환을 담보하기 위하여 말미 부동산에 대하여 근저당권설정등기를 이행하기로 하며 이에 대한 비용부담은 「을」이 하기로 한다.</div><br/>
</div></div><br/><br/><br/><br/><br/>


<div class='paper' >  
<div><b>제8조 (특약사항)</b><br/>  상기 계약 일반사항 이외에 아래 내용을 특약사항으로 정하며, 일반사항과 특약사항이 상충되는 경우에는 특약사항을 우선하여 적용하도록 한다.</div><br/>
1. <%=spcContents %><br/>2.<br/>3.<br/>


<div>본 계약의 성립을 증명하기 위하여 본 증서 각자 서명 날인한 후 1통씩 보관한다.</div><br/>
<br/><div align=center> <%=sf.format(nowTime) %></div><br/><br/><br/><br/>

<div align='right'>
         <div>「갑」  성 명 :<%=creditor %> (인)
                <br/>주민등록번호 :<%=creditorRegiNum %>
                <br/>주 소 :<%=creditorAddr %>
</div><br/><br/>

      <div>「을」  성 명 :<%=deptor %> (인)
                <br/>주민등록번호 :<%=deptorRegiNum %>
                <br/>주 소 :<%=deptorAddr %>
                
</div></div></div>
<img src="<%=request.getContextPath()%>/image/next.png" id="next" width="70px" height="70px" style="margin-right: 300px; margin-bottom: 200px;" onclick="openPop2('http://localhost:8080/20210402_miniPj2/signature/sendMailPop.jsp');"/>
 <br/><br/><br/><br/>
 
</body>
</form>
</html>