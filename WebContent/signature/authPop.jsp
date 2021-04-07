<%@ page language="java" pageEncoding="utf-8"%>
<%
	
	String userName= request.getParameter("userName");
	String residentNum= request.getParameter("residentNum");
	String phoneNum= request.getParameter("phoneNum");
	if(userName==null) userName="";
	if(residentNum==null) residentNum="";
	if(phoneNum==null) phoneNum="";
	String authNum = (String)session.getAttribute("authNum");
	out.print(authNum);
%>
<!DOCTYPE html>
<html>

<head>
<style type="text/css"></style>
<script language="javascript">

function PopupNextPage(path){

    window.opener.location.href=path;
    self.close();
}
</script>

<meta charset="utf-8">
<title>본인인증</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/signature/authPopProc.jsp" method="post">
<center>
<br/><br/><br/>
<table border=0>
<h2>본인인증</h2>
<tr><td></td><td>이름</td><td><input type='textarea' name="userName" value="<%=userName%>"/></td></tr>
<tr><td></td><td>주민번호</td><td><input type='textarea' name="residentNum" value="<%=residentNum%>"/></td></tr>
<tr><td></td><td colspan="2"><input type="checkbox"> 신원인증 및 법률적 활용동의</td></tr>
<tr><td><select name='carrier'>
<option value='SKT'>SKT</option>
<option value='KT'>KT</option>
<option value='LG U+'>LG U+</option>
<option value='알뜰폰'>알뜰폰</option>
</select>
</td><td>휴대폰번호</td><td><input type='textarea' name="phoneNum" value="<%=phoneNum%>"/></td></tr>
<tr><td></td><td><input type=submit value=인증번호 요청></td><td><input type=textarea></td>
<tr><td></td><td></td><td><input type="button" onclick="PopupNextPage('<%=request.getContextPath() %>/index.jsp?currentPage=signatureForm');" value="확인"/></td>
</table>
</center>
</form>
</body>

</html>