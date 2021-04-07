<%@page import="java.sql.Connection"%>
<%@page import="com.web.DAO.LoginDAO"%>
<%@page import="com.web.DTO.Login"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String idtype = request.getParameter("idType");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	Login login = new Login();
	
	if("phoneNum".contentEquals(idtype))
		login.setPhoneNum(id);
	else if("email".contentEquals(idtype))
		login.setEmail(id);
	
	System.out.println("이메일 : " + login.getEmail());
	System.out.println("휴대폰 : " + login.getPhoneNum());
	
	login.setPw( request.getParameter("pw"));
	
	
	LoginDAO loginDao = new LoginDAO();
	Connection conn = loginDao.getConn();
	
	
	
	int result = loginDao.LoginProc(conn, login);
	System.out.println(result);
	String pagePath = "loginForm";
	
	if(result==1){
		pagePath = "home";	//home.jsp
 		session.setAttribute("usrId", id);
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
