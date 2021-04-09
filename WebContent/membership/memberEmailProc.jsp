
<%@page import="jdk.internal.misc.FileSystemOption"%>
<%@page import="com.web.DAO.LoginDAO"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.web.DAO.Membership"%>
<%@page import="com.web.DTO.Member"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%	
	LoginDAO loginDao = new LoginDAO();
 	String email = request.getParameter("email");
 	Connection conn = loginDao.getConn();
	String email2 =  loginDao.userConfirm(conn, email);
	
	
	System.out.println("입력된 이메일값: "+email);
	System.out.println("db에 셀렉트된값: "+email2);
	String emailOk = "사용가능 이메일";
	if(email.contentEquals(email2)){
		emailOk = "중복된 이메일";
	}
	/* else {
		System.out.println("사용가능 이메일");
	} */
	request.setAttribute("emailOk", emailOk);
%>
<jsp:forward page="/index.jsp">
<jsp:param value="membershipForm" name="currentPage"/>
</jsp:forward>