
<%@page import="java.util.List"%>
<%@page import="java.awt.print.Printable"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.web.DTO.Condition"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%
Date nowTime = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 ");


List<Condition> lst = (List<Condition>)session.getAttribute("ConditionLst");
String deptorRegiNum = (String)session.getAttribute("deptorRegiNum");

Integer fno = (Integer)session.getAttribute("fno");

%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/es6-promise@4/dist/es6-promise.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/es6-promise@4/dist/es6-promise.auto.min.js"></script>
<script src="<%=request.getContextPath() %>/js/common.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/js/conditionForm.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script type="text/javascript">
function capClick() {
	document.getElementById("capBtn1").click();
	document.getElementById("capBtn2").click();
}
function getFno(number){
	alert('계약서 번호는 '+number+'입니다.');
}
</script>
<style type='text/css'>
body {
            margin: 0;
            padding: 0;
            font: 14pt "Tahoma";
            line-height:150%;
        }

.paper {
	width: 21cm;
	min-height: 29.7cm;
	padding: 2cm;
	margin: 1cm auto;
	border-radius: 5px;
	background: white;

}
.paper2 {
	width: 21cm;
	min-height: 29.7cm;
	padding: 2cm;
	margin: 1cm auto;
	border-radius: 5px;
	background: white;
 
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
#contList {
	width: 350px;
	height: 960px;
	float: left;
	background: #848484;
	overFlow-y : scroll;
	position: fixed;
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
#capbtn1 {
	display: none;
}
#capbtn2 {
	display: none;
} 
#conImg1:hover {
	border: 5 solid #99610f;

}
#conImg2:hover {
	border: 5 solid #99610f;
}
#capImg{
width: 50px; height: 50px; margin: 30px 100px 30px 125px;
}
#capImg:hover {
	background: white;
	border-radius: 25%;
}
#signHere{
position: relative;
}
#signImg{
top: 0px;
left: 50%;
position: absolute;
}
</style>
</head>
<form id = "frm" method="post" enctype="multipart/form-data">
<body style="background-color: black;">
<input type="hidden" name="currentPage" value="signatureFormSnd"/>

<div id="contList"><br/><br/>
<h1 align="center" style="color: white;">서류목록</h1><br/><br/><br/>
<img id="conImg1" src="<%=request.getContextPath()%>/image/example1.png" width="80%" style="margin-left: 30px;" onclick="javascript:window.scrollTo(0,0);"/>
<img id="conImg2" src="<%=request.getContextPath()%>/image/example2.png" width="80%" style="margin-left: 30px; margin-top: 100px;" onclick="javascript:window.scrollTo(0,1200)" />
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
 <input type="file" name="uploadFile" style="background: white;"/>
  <input type="file" name="uploadFile2" style="background: white;"/><br/>
  
<img id="capImg" src="/20210402_miniPj2/image/capture.png" onclick="javascript:window.scrollTo(0,0), capClick();">
    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
</div>
		<br/>

		<div class='paper'><input id="capBtn1" type="button"  class="capBtn" value="캡쳐" />

						<h2 id='title' align="center">금전소비대차 계약서</h2>
						<div class='contetns'>
							<br/>
							<input type="hidden" name="fno" value='<%=fno%>' />
						
<%for(Condition condition : lst){%>
  채권자 <%=condition.getCreditor() %> 을「갑」이라 하고, 채무자 <%=condition.getDeptor() %> 을「을」로 하여 「갑」과「을」 간에 다음과 같이 금전소비대차계약을 체결한다.<br/><br/>
<b>제1조 (금전소비대차)</b><br/>  「갑」은 「을」에게 금<%=condition.getMoney() %>원을 대여하고, 「을」은 이를 차용한다.<br/><br/>
<b>제2조 (이자) </b><br/> 위의 차용금에 대한 이자는 없는 것으로 하되 제3조 정한 기한의 익일부터 실질 변제시 까지 연<%=condition.getInterest()%>%의 연체이자를 지급하여야 한다.<br/><br/>
<b>제3조 (변제기한)</b><br/>  「을」의「갑」에 대한 위 차용금의 변제기한은 <%=condition.getDeadLine() %> 까지로 한다.<br/><br/>
<b>제4조 (변제장소)</b><br/>  「을」의「갑」에 대한 변제 장소는 「갑」의 주소지로 한다.<br/><br/>
<b>제5조 (기한의 이익 상실)</b><br/>  「을」이 변제일 까지의 사이에 다음 각호에 해당하게 될 경우에는 기한의 이익이 상실되는 것으로 하여 「갑」은 어떠한 최고절차도 거칠 필요 없이 즉시 원금 및 위약금을 청구할 수 있다.<br/>
1. 「을」의 부도 또는 파산시<br/>
2. 「을」이 담보로 제공한 부동산에 대하여 강제집행이 개시된 경우<br/>
3. 「을」이 담보로 제공한 부동산을 매도한 경우<br/><br/>

<b>제6조 (위약금)</b><br/> 「을」이 「갑」으로부터 채무이행의 최고를 받았음에도 즉시 원리금을 상환하지 않을 때는 「을」은 「갑」에 대하여 위약금으로서 
금<%=condition.getMoney() %>원을 지급하기로 하며, 이와는 별도로 「갑」에게 발생한 손해 일체에 대하여 배상하여야 한다.<br/><br/>
<b>제7조 (담보의 제공)</b><br/>  「을」은 「갑」에게 차용금 및 기타 부대채무의 상환을 담보하기 위하여 말미 부동산에 대하여 근저당권설정등기를 이행하기로 하며 이에 대한 비용부담은 「을」이 하기로 한다.<br/><br/>
</div></div> <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>


<article class='paper2'><input id="capBtn2" type="button"  class="capBtn" value="캡쳐"/> <br/><br/>
<b>제8조 (특약사항)</b><br/>  상기 계약 일반사항 이외에 아래 내용을 특약사항으로 정하며, 일반사항과 특약사항이 상충되는 경우에는 특약사항을 우선하여 적용하도록 한다.<br/>
1. <%=condition.getSpcContents() %><br/>2.<br/>3.<br/>


본 계약의 성립을 증명하기 위하여 본 증서 각자 서명 날인한 후 1통씩 보관한다.<br/><br/>
<br/><div align=center> <%=sf.format(nowTime) %></div><br/><br/><br/><br/>

<div align='right'>
         「갑」  성 명 :<%=condition.getCreditor() %> (인)
                <br/>주민등록번호 :<%=condition.getCreditorResiNum() %>
                <br/>주 소 :<%=condition.getCreditorAddr() %>
<br/><br/>

      「을」  성 명 :<%=condition.getDeptor() %><div id="signHere">(인)</div>
                <br/>주민등록번호 :<%=deptorRegiNum %>
                <br/>주 소 :<%=condition.getDeptorAddr() %>
<%
}
%>
</div></article>
<img src="<%=request.getContextPath()%>/image/next.png" id="next" width="70px" height="70px" style="margin-right: 300px; margin-bottom: 200px;"
onclick="formSubmit('frm', '<%=request.getContextPath()%>/signature/signatureProcSnd.jsp');"/>
 <br/><br/><br/><br/><div id=reqBtn><button class="btn btn-primary" id=signit style="margin-left: 600px;">서명하기</button> </div>
 
 <a id="target" style="display: none"></a>

 
<script>
$(".capBtn").on('click', function(e) { 
// html2canvas(e.target.parentElement).then(function(canvas) {
// document.body.appendChild(canvas)
// });
// html2canvas(e.target.parentElement).then(function(canvas) {
// $('body').append('<img src="' + canvas.toDataURL("image/png") + '"/>');
// }); 
html2canvas(e.target.parentElement).then(function(canvas) {
if (navigator.msSaveBlob) {
var blob = canvas.msToBlob();
return navigator.msSaveBlob(blob, '파일명.png');
} else {
var el = document.getElementById("target");
el.href = canvas.toDataURL("image/png");
el.download = '파일명.png';
el.click();
}
});
});

$("#signit").click(()=>{
	var url = "<%=request.getContextPath()%>/signature/SignPad.jsp"
	
	var popX = (document.body.offsetWidth/2)-(300/2);
	var popY = (window.screen.height/2)-(300/2);
	var option ="width=300px, height=300px, top="+popY+",left="+popX;
	window.open(url,'',option);
});
</script>
</body>
</form>
</html>