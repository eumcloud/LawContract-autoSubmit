<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<input type="hidden" name="currentPage" value="myinfoForm"/>

<script  src='<%=request.getContextPath()%>/js/common.js' type="text/javascript"></script>
<script  src='<%=request.getContextPath()%>/js/loginForm.js' type="text/javascript"></script>
<script  src='<%=request.getContextPath()%>/js/ModityForm.js' type="text/javascript"></script>
<% 
	String PwModityFormPath = request.getContextPath() + "/myinfo/PwModityForm.jsp";
	String AddrModityFormPath = request.getContextPath() + "/myinfo/AddrModityForm.jsp";
%>


<form id = "frm" action="<%=request.getContextPath()%>/index.jsp">
<center>
	<h1>회원 정보</h1></br>
	이메일 : <input type = "text" name = "email" /><br />
	휴대폰번호 : <input type = "text" name = "phoneNum" /><br />
	비밀번호 : <input type = "text" name = "pw" />
	<input type = "button" value = "비밀번호수정" onclick = "formSubmit('frm', '<%=PwModityFormPath%>');" /><br />
	주소 : <input type = "text" name = "addr" />
	<input type = "button" value = "주소 변경하기" onclick = "formSubmit('frm', '<%=AddrModityFormPath%>');" /><br />
	이름 : <input type = "text" name = "id" /></br>
	<input type = "submit" value = "저장하기"/>
	<input type = "button" value = "취소" onclick = "openModityForm('frm', '<%=PwModityFormPath%>');"/>
</center>
</form>