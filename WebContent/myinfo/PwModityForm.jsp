<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

<body>
<h1>비밀번호 수정</h1>
<form id='frm' action="<%=request.getContextPath()%>/myinfo/PwModityProc.jsp">
	<div class = "pw mx-auto mt-5" style="width: 500px;">
		현재 비밀번호<input type="text" name="currentpw" /><br />
		새로운 비밀번호<input type="text" name="newpw" /><br />
		새로운 비밀번호 확인<input type="text" name="newpwok" /><br />
	</div>
	<input type="submit" value="수정완료" />
	<input type="button" value ="취소"><br />
</form>
</body>
</html>
