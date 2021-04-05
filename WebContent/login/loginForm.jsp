<%@ page contentType="text/html; charset=UTF-8"%>
<% 
String contextPath =request.getContextPath();
String path = contextPath +  "/index.jsp?currentPage=";
%>
<form action="<%=path%>membershipForm" method="post">
<input type="hidden" name="currentPage" value="loginForm"/>
<br/><br/><br/><br/>
로그인 페이지
<input type="submit" value="회원가입" />
</form>