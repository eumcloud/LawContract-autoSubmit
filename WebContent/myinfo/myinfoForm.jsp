<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.web.DAO.*"%>
<%@page import="com.web.DTO.*"%>

<script  src='<%=request.getContextPath()%>/js/common.js' type="text/javascript"></script>
<script  src='<%=request.getContextPath()%>/js/loginForm.js' type="text/javascript"></script>
<script  src='<%=request.getContextPath()%>/js/ModityForm.js' type="text/javascript"></script>
<%
	Member currentUser = (Member)session.getAttribute("currentUser");
	String PwModityFormPath = request.getContextPath() + "/myinfo/PwModityForm.jsp";
	String AddrModityFormPath = request.getContextPath() + "/myinfo/AddrModityForm.jsp";
	String WithdrawalFormPath = request.getContextPath() + "/myinfo/withdrawalForm.jsp";
%>


<form id = "frm" action="<%=request.getContextPath()%>/index.jsp">
<input type="hidden" name="currentPage" value="myinfoForm"/>
	<center>
		<br />
		<h1>회원 정보</h1></br>
		이메일 : <input type="text" name="email" value = "<%=currentUser.getEmail() %>" /><br />
		휴대폰번호 : <input type="text" name="phoneNum" value="<%=currentUser.getPhoneNum() %>" /><br />
		비밀번호 : <input type ="text" name="pw" value ="<%=currentUser.getPw() %>"/>
		<input type="button" value="비밀번호수정" onclick="openModityForm('frm', '<%=PwModityFormPath%>');" /><br />
		주소 : <input type="text" name="addr" value ="<%=currentUser.getAddr() %>"/>
		<input type="button" value="주소 변경하기" onclick="openModityForm('frm', '<%=AddrModityFormPath%>');" /><br />
		이름 : <input type="text" name="name" value="<%=currentUser.getName() %>" /></br>
		<input type="submit" value="저장하기"/>
		<input type="button" value="회원탈퇴하기" onclick="openModityForm('frm', '<%=WithdrawalFormPath%>');" />
		<input type="button" value="취소" onclick = ""/>
	</center>
</form>  