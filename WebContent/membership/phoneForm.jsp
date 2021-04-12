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
<style type="text/css"></style>
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
    if(authNum==authNumOk){
    	window.opener.location.href=path;
        self.close();
        }
}

</script>

<h1><%=authNumOk %></h1>
<input type="hidden" id="authNumOk" value="<%=authNumOk%>">
</head>
<body>
<form id="frm" action="<%=request.getContextPath() %>/membership/phoneFormProc.jsp" method="post">
<center>
<br/><br/><br/>
<table border=0>
<h2>본인인증</h2>
<tr><td></td><td>이름</td><td><input type='textarea' name="name" value="<%=name %>"></td></tr>
<tr><td></td><td>주민번호</td><td><input type='textarea' name="residentNum" value="<%=residentNum %>"></td></tr>
<tr><td></td><td colspan="2"><input type="checkbox"> 신원인증 및 법률적 활용동의</td></tr>
<tr><td><select name='carrier'>
<option value='SKT'>SKT</option>
<option value='KT'>KT</option>
<option value='LG U+'>LG U+</option>
<option value='알뜰폰'>알뜰폰</option>
</select>
</td><td>휴대폰번호</td><td><input type='textarea' name="phoneNum" value="<%=phoneNum %> "></td></tr>
<td></td><td><input type="submit" value="인증번호 전송"></td>
<br/><td><input type="text" id="authNum" name="authNum" value="<%=authNum%>"></td>
<td><button onclick="PopupNextPage('<%=path %>','<%=pathNo%>', 'frm');">확인</button></td>
</table>
</center></form>
</body>
</html>