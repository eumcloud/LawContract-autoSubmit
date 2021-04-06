<%@ page contentType="text/html; charset=UTF-8"%>
<script  src='<%=request.getContextPath()%>/js/common.js' type="text/javascript"></script>
<script  src='<%=request.getContextPath()%>/js/loginForm.js' type="text/javascript"></script>
<center>
<br /><br />
<form id='frm' action="<%=request.getContextPath()%>/login/loginProc.jsp" method = "post">
	<input type="hidden" name="currentPage" value="loginForm"/>
	<select name="idType">
		<option value = 'phoneNum'>휴대폰</option>
		<option value = 'email'>이메일</option>
	</select><br />
	<input type = "text" id = "id" name = "id" /><br />
	<input type = "text" id = "pw" name = "pw" /><br />
	<input type = "button" value = "비회원 로그인">
	<input type = "button" onclick = "checkEmpty();" value = "로그인하기"> <br /> 
	<a href = "">아이디 찾기 </a>
	<a href = "" >비밀번호 찾기</a>
</form>
</center>

<!-- if(idType = "phoneNum"){ -->

<!-- }else if(idType = "email"){ -->

<!-- } -->