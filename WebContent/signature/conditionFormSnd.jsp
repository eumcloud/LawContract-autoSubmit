<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.btnst {
     font-weight: 900;
    width:120px;
    background-color: rgb(255, 203, 76);	
    border: none;
    color:#282d32;
    padding: 10px 0;
    text-align: center;
    display: inline-block;
    font-size: 20px;
    margin: 30px;
    cursor: pointer;
    border-radius:10px;
    
}
#inputTxt{
 	width:250px;
    background-color: #fff;
    display: inline-block;
    margin-top:50px;
    font-size: 25px;
    border-radius:10px;
}


</style>
<script src="<%=request.getContextPath() %>/js/conditionForm.js" type="text/javascript"></script>
</head>
<body>
<form id="frm" action="<%=request.getContextPath() %>/signature/conditionProcSnd.jsp" method="post">
<input type="hidden" name="currentPage" value="conditionFormSnd"/>
<center>
<div style="background: #282d32; width: 800px; height: 500px; border-radius:10px; margin: 200px; padding-top: 20px;">
<h1 style="text-align: center; margin-top: 100px; color: white;">서명 대기중인 계약서가 있습니다<br/>
본인인증 후 계약서 번호를 입력해주세요</h1>
<input name="contractNum" id= "inputTxt"type="text" placeholder="계약서 번호 입력"><br/><br/><br/>
<button type="button" class = "btnst" onclick="openPop('http://localhost:8080/20210402_miniPj2/signature/authPop2.jsp')">본인 인증</button>
<input type="submit" class="btnst" value="서명하기" />
</div>
</center>
</form>
</body>
</html>