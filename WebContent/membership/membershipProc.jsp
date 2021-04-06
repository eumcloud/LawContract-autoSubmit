
<%@page import="java.sql.Connection"%>
<%@page import="com.web.DAO.Membership"%>
<%@page import="com.web.DTO.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String authNum = request.getParameter("authNum");
	String sessinAuthNum = (String)session.getAttribute("sessinAuthNum");
	System.out.println("authNum : "+ authNum);
	System.out.println("sessinAuthNum :"+sessinAuthNum);
	Member member = new Member();
	
	member.setEmail(request.getParameter("email"));
	String phoneNum = (String)session.getAttribute("phoneNum");
	String residentNum = (String)session.getAttribute("residentNum");
	member.setPhoneNum(phoneNum);
	member.setResidentNum((residentNum));
	member.setName(request.getParameter("name"));
	member.setPw(request.getParameter("pw"));
	//
	System.out.println("이메일"+request.getParameter("email"));
	//폰번호
	System.out.println("휴대폰"+phoneNum);
	
	System.out.println("주민번호"+session.getAttribute("residentNum"));
	System.out.println("이름"+request.getParameter("name"));
	System.out.println("비밀번호"+request.getParameter("pw"));
	System.out.println("주소"+request.getParameter("addr"));
	
	
	
	String pagePath ="";
	if(authNum.contentEquals(sessinAuthNum)){
		pagePath = "loginForm";
	     Membership memberShip = new Membership();
		Connection conn = memberShip.getConn();
		int mexNum = memberShip.getAI(conn);
		memberShip.Insert(conn, member, mexNum); 
	}
	else 
		pagePath = "membershipForm";
	System.out.println(member.getPw());
%>
<jsp:forward page="/index.jsp">
<jsp:param value="<%=pagePath %>" name="currentPage"/>
</jsp:forward>