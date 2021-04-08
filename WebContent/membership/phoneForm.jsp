<!--회원가입 인증창-->

<%@ page language="java" pageEncoding="utf-8"%>
<%
	String authNum = (String)request.getAttribute("authNum");
	String name =request.getParameter("name");
	session.setAttribute("name", name);
	String residentNum =request.getParameter("residentNum");
	String phoneNum =request.getParameter("phoneNum");
	if(authNum == null)
		authNum = "";
	if(name == null)
		name = "";
	if(residentNum == null)
		residentNum = "";
	if(phoneNum == null)
		phoneNum = "";
	
%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css"></style>
<script type="text/javascript"></script>
<meta charset="utf-8">
<title>본인인증</title>
<script language="javascript">
function PopupNextPage(path){
    window.opener.location.href=path;
    self.close();
}
</script>

<h1><%=authNum %></h1>

</head>
<body>
<form action="<%=request.getContextPath() %>/membership/phoneFormProc.jsp" method="post">
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
<tr><td></td><td><input type="submit" value="인증번호 전송"></td>
<br/><td><input type=textarea></td>
<td><button onclick="PopupNextPage('<%=request.getContextPath() %>/membership/phoneDBProc.jsp');">확인</button></td>
</table>
</center></form>


</body>
</html>