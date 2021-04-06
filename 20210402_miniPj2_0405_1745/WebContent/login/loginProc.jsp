<%@page import="java.sql.Connection"%>
<%@page import="com.jin.Login.LoginDAO"%>
<%@page import="com.jin.DTO.Login"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String idtype = request.getParameter("idType");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	System.out.println("idtype : " + idtype);
	System.out.println("id : " + id);
	System.out.println("pw : " + pw);  
	
	Login login = new Login();
	login.setId( request.getParameter("id") );
	login.setPw( request.getParameter("pw").hashCode()+"" );
	
	
	LoginDAO loginDao = new LoginDAO();
	Connection conn = loginDao.getConn();
	
	int result = loginDao.LoginProc(conn, login);
	String pagePath = "loginForm";
	
	if(result==1){
		pagePath = "home";	//home.jsp
		session.setAttribute("usrId", login.getId());
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
