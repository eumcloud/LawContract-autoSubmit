<!--회원가입 인증창-->

<%@ page language="java" pageEncoding="utf-8"%>
<%
	String authNumOk = (String)request.getAttribute("authNum");
	String name =request.getParameter("name");
	session.setAttribute("name", name);
	String residentNum =request.getParameter("residentNum");
	String phoneNum =request.getParameter("phoneNum");
	String authNum =request.getParameter("authNum");
	if(authNum == null)
		authNum = "";
	if(authNumOk == null)
		authNumOk = "";
	if(name == null) 
		name = "";
	if(residentNum == null)
		residentNum = "";
	if(phoneNum == null)
		phoneNum = "";
	
	String path = request.getContextPath()+"/membership/phoneDBProc.jsp";
	String pathNo = request.getContextPath()+"/membership/phoneNoProc.jsp";
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script type="text/javascript"></script>
<meta charset="utf-8">
<title>본인인증</title>
<script language="javascript">
function PopupNextPage(path, pathNo, frmId){
    var authNum = document.getElementById("authNum").value;
    var authNumOk = document.getElementById("authNumOk").value;
    if(authNum==""){
    	alert('인증번호를 입력하세요');
    	
    	let frm = document.getElementById(frmId);
		frm.action=pathNo;
		frm.submit();
    	return;
    	
    }
    if(authNum==authNumOk){
    	window.opener.location.href=path;
        self.close();
        }
	else {
		alert('다시 입력하세요');
		let frm = document.getElementById(frmId);
		frm.action=pathNo;
		frm.submit();
    	return;
    }
    
}

</script>

<h1><%=authNumOk %></h1>
<input type="hidden" id="authNumOk" value="<%=authNumOk%>">
</head> 
<body>
<form id="frm"  class="form-inline" style="margin-left: 90px;" action="<%=request.getContextPath() %>/membership/phoneFormProc.jsp" method="post">
	<center>
<br/>
<div style="border: 2px solid gray; padding: 10px; padding-bottom: 40px; border-radius: 20px;">
<h2>본인인증</h2>
<hr><img src="<%=request.getContextPath() %>/image/logo.png" style="width: 100px; height: 100px;" />
  <div class="col-xs-3 mx-auto" style="width: 400px; margin: 10px;">
  <div style="width: 100px; height: auto; float: left;">
    <label for="exampleInputName2" style=" margin: 5px; font-weight: bold; text-align: left;">이름</label>
   </div> 
    <input type="text" class="form-control" name="name" value="<%=name %>"  placeholder="이름 입력">
  </div>
    <div class="col-xs-3 mx-auto" style="width: 400px; margin: 10px;">
    <div style="width: 100px; height: auto; float: left;">
    <label for="exampleInputName2" style=" margin: 5px; font-weight: bold; text-align: left;">주민번호</label>
   </div> 
    <input type="text" class="form-control" name="residentNum" value="<%=residentNum %>"  placeholder="-없이 입력">
  </div>

<input type="checkbox"> 신원인증 및 법률적 활용동의
<select name='carrier'>
<option value='SKT'>SKT</option>
<option value='KT'>KT</option>
<option value='LG U+'>LG U+</option> 
<option value='알뜰폰'>알뜰폰</option>
</select><br/>
 <div class="col-xs-3 mx-auto" style="width: 400px; margin: 10px;">
    <div style="width: 100px; height: auto; float: left;">
    <label for="exampleInputName2" style=" margin: 5px; font-weight: bold; text-align: left;">휴대폰번호</label>
   </div> 
    <input type="text" class="form-control" name="phoneNum" value="<%=phoneNum %> "  placeholder="-없이 입력">
  </div>
<input class="btn btn-outline-secondary" style=" margin-left: 26px;" type="submit" value="인증번호 전송">
 <div class="col-xs-3 mx-auto" style="width: 400px; margin: 10px;">
    <div style="width: 100px; height: auto; float: left;">
    <label for="exampleInputName2" style=" margin: 5px; font-weight: bold; text-align: left;">인증번호</label>
   </div> 
    <input type="text" class="form-control" id="authNum" name="authNum" value="<%=authNum%>" placeholder="인증번호 입력">
  </div>
  
<button class="btn btn-outline-secondary"  onclick="PopupNextPage('<%=path %>','<%=pathNo%>', 'frm');">확인</button>
</div>
</center></form>
</body>
</html>