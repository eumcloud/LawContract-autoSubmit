<%@page import="java.sql.Connection"%>
<%@page import="com.web.DAO.*"%>
<%@page import="com.web.DTO.*"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
		
	LoginDAO loginDao = new LoginDAO();
	Connection conn = loginDao.getConn();
	
	boolean confirmResult = loginDao.userConfirm(conn, id, pw); 
	System.out.println(confirmResult);
	
	String pagePath = "loginForm";
	Member member = new Member();
	
	if(confirmResult == true){
		pagePath = "home";	//home.jsp
		member = loginDao.currentUserInsert(conn, id, pw);
 		session.setAttribute("usrId", id);
		session.setAttribute("currentUser", member);
		System.out.println("로그인 성공!");
	}
	else {
		pagePath = "loginForm";	//login.jsp
		System.out.println("로그인 실패!");
	}
%>
<jsp:forward page="/index.jsp">
<jsp:param value="<%=pagePath %>" name="currentPage"/>
</jsp:forward>
