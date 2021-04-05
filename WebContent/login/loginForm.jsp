<%@ page contentType="text/html; charset=UTF-8"%>
<% 
String contextPath =request.getContextPath();
String path = contextPath +  "/index.jsp?currentPage=";
%>
<form action="<%=path%>membershipForm" method="post">
<input type="hidden" name="currentPage" value="loginForm"/>
<<<<<<< HEAD
<br/><br/><br/><br/>
로그인 페이지
<input type="submit" value="회원가입" />
</form>
=======
로그인 페이지 추가로 더 수정했음
>>>>>>> branch 'master' of https://github.com/eumcloud/mini2Pj.git
