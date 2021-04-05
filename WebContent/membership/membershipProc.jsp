<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String pagePath = "memberForm";
if(sessionAuthNum.contentEquals(authNum))
	pagePath = "loginForm";

String pw = request.getParameter("pw");
System.out.println(pw);
System.out.println(pw.hashCode());
Member member = new Member();
member.setId(request.getParameter("id"));
member.setGender(request.getParameter("gender"));
member.setPw(pw.hashCode()+"");//String.valueOf(pw.HashCode())
member.setEmail(request.getParameter("email"));

Membership membership = new Membership();
Connection conn = membership.getConn();
membership.Insert(conn, member);
     

     

%>