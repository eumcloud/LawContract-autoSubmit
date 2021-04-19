<%@page import="java.sql.Connection"%>
<%@page import="com.web.DAO.*"%>
<%@page import="com.web.DTO.*"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String email = request.getParameter("id");
	String kakaoName = request.getParameter("kakaoName");
		
	LoginDAO loginDao = new LoginDAO();
	Connection conn = loginDao.getConn();
	String pw = loginDao.kakaoLogin(conn, email);
	System.out.println(pw);
	boolean confirmResult = loginDao.userConfirm(conn, email, pw);
	System.out.println(confirmResult);
	
	String pagePath = "loginForm";
	Member member = new Member();
	
	if(confirmResult == true){

		member = loginDao.currentUserInsert(conn, email, pw);
 		session.setAttribute("usrId", email);
		session.setAttribute("currentUser", member);
		System.out.println("카카오로그인 성공!");
		pagePath = "home";
	}
	else {
		Membership membership = new Membership();
		member = new Member();
		member.setNo(membership.getAI(conn));
		member.setEmail(email);
		member.setName(kakaoName);
		member.setPhoneNum("카카오로그인함");
		member.setResidentNum("카카오로그인함");
		member.setPw("1");
		membership.Insert(conn, member, member.getNo());
		boolean kakao = loginDao.userConfirm(conn, email, pw);
		if(kakao==true){
			session.setAttribute("usrId", email);
			session.setAttribute("currentUser", member);
			System.out.println("카카오로그인 성공!");
			pagePath = "home";
		}
	} 
%>
<jsp:forward page="/index.jsp">
<jsp:param value="<%=pagePath %>" name="currentPage"/>
</jsp:forward>
