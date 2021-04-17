<%@page import="com.web.contractReady.contractSet"%>
<%@page import="java.awt.print.Printable"%>
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
String money = (String)session.getAttribute("money");
if ( money ==null) money = "______________";
String interest = (String)session.getAttribute("interest");
if ( interest ==null) interest = "_____";
String deadline= (String)session.getAttribute("deadline");
if ( deadline==null) deadline= "__________";
String spcContents = (String)session.getAttribute("spcContents");
if ( spcContents ==null) spcContents = "_____________________________";
String creditorResiNum = (String)session.getAttribute("creditorRegiNum");
if ( creditorResiNum ==null) creditorResiNum  = "____________________";
String creditorAddr = (String)session.getAttribute("creditorAddr");
if ( creditorAddr ==null) creditorAddr ="____________________";
String deptorResiNum = (String)session.getAttribute("deptorRegiNum");
if ( deptorResiNum==null ) deptorResiNum = "____________________";
String deptorAddr = (String)session.getAttribute("deptorAddr");
if ( deptorAddr ==null) deptorAddr = "____________________";



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
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
}
.paper2 {
	width: 21cm;
	min-height: 29.7cm;
	padding: 2cm;
	margin: 1cm auto;
	border-radius: 5px;
	background: white;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
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
	height: 100%;
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
#reqBtn{
	position:fixed;float:right;right:20%;bottom:100px;
	z-index:1000;
	width:150px;
	height:90px
}
</style>
</head>
<form id = "frm" method="post" enctype="multipart/form-data">
<body style="background-color: black;">
<input type="hidden" name="currentPage" value="signatureForm"/>

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

		<div class='paper'><input id="capBtn1" type="button" value="캡쳐" />

						
						
						
<!------------------계약서 양식   --------------->
			<%
			contractSet set = new contractSet();
			out.print(set.Contract(creditor, deptor, money, interest, deadline, spcContents, creditorResiNum, creditorAddr, deptorResiNum, deptorAddr ));
			%>
                
</div>
<img src="<%=request.getContextPath()%>/image/next.png" id="next" width="70px" height="70px" style="margin-right: 300px; margin-bottom: 200px;"
onclick="formSubmit('frm', '<%=request.getContextPath()%>/signature/signatureProc.jsp'), openPop2('http://localhost:8080/20210402_miniPj2/signature/sendMailPop.jsp');"/>
 <br/><br/><br/><br/>
 <div id=reqBtn><button class="btn btn-primary" id=signit>서명하기</button> </div>	
 <a id="target" style="display: none"></a>

 
<script>
$(":button").on('click', function(e) { 
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