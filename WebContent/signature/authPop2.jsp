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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
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
<form class="form-inline" style="margin-left: 90px;" action="<%=request.getContextPath()%>/signature/authPopProc2.jsp" method="post">

	<center>
<br/>
<div style="border: 2px solid gray; padding: 10px; padding-bottom: 40px; border-radius: 20px;">
<h2>본인인증</h2>
<hr/>
<img src="<%=request.getContextPath() %>/image/logo.png" style="width: 100px; height: 100px;" />
<div class="col-xs-3 mx-auto" style="width: 400px; margin: 10px;">
  <div style="width: 100px; height: auto; float: left;">
 <label for="exampleInputName2" style=" margin: 5px; font-weight: bold; text-align: left;">이름</label>
   </div> 
 <input type="text" class="form-control"id='userName' name="userName" value="<%=userName%>"  placeholder="이름 입력">
  </div>
  <div class="col-xs-3 mx-auto" style="width: 400px; margin: 10px;">
    <div style="width: 100px; height: auto; float: left;">
    <label for="exampleInputName2" style=" margin: 5px; font-weight: bold; text-align: left;">주민번호</label>
   </div> 
   <input type="text" class="form-control"  id='residentNum' name="residentNum" value="<%=residentNum%>" placeholder="-없이 입력">
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
    <input type="text" class="form-control"id='phoneNum' name="phoneNum" value="<%=phoneNum%>"  placeholder="-없이 입력">
  </div>
<input class="btn btn-outline-secondary" style=" margin-left: 26px;" type="submit" value="인증번호 전송">
 <div class="col-xs-3 mx-auto" style="width: 400px; margin: 10px;">
    <div style="width: 100px; height: auto; float: left;">
    <label for="exampleInputName2" style=" margin: 5px; font-weight: bold; text-align: left;">인증번호</label>
   </div> 
    <input type="text" class="form-control" id='inputauthNum' name="inputauthNum"  placeholder="인증번호 입력">
  </div>
  
<input class="btn btn-outline-secondary" type="button"onclick="PopupNextPage('http://localhost:8080/20210402_miniPj2/index.jsp?currentPage=conditionFormSnd');" value="확인"/>
</div>
</center></form>
</body>
</html>
