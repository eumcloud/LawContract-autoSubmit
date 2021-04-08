<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<body>
<h1>비밀번호 수정</h1>
<form id='frm' action="<%=request.getContextPath()%>/myinfo/PwModityProc.jsp">
	현재 비밀번호<input type="text" name="currentpw" /><br />
	새로운 비밀번호<input type="text" name="newpw" /><br />
	새로운 비밀번호 확인<input type="text" name="newpwok" /><br />
	<input type="submit" value="수정완료" />
	<input type="button" value ="취소"><br />
</form>
</body>
</html>
