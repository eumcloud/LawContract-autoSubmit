
<%@page import="com.web.DTO.Member"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.web.DAO.LoginDAO"%>
<%@page import="com.web.DAO.Membership"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html; charset=UTF-8"%>
     
    <%
    System.out.print("이메일 : "+request.getAttribute("emailOk"));
    String pw = request.getParameter("pw");
    String pwOk = request.getParameter("pwOk");
    String email = request.getParameter("email");
    String path = request.getContextPath()+"/membership/membershipProc.jsp";
	LoginDAO loginDao = new LoginDAO();
 	Connection conn = loginDao.getConn();
 	String emailOk = loginDao.userConfirm(conn, email);
	
    Member member = new Member();
    if(pw==null){
    	pw="";	
    }
    if(pwOk==null){
    	pwOk="";
    }
    if(email==null){
    	email="";
    }
    
    %>
<script src='<%=request.getContextPath() %>/js/common.js' type="text/javascript"></script>
<script src='<%=request.getContextPath() %>/js/conditionForm.js' type="text/javascript"></script>
<script src='<%=request.getContextPath() %>/js/memberForm.js' type="text/javascript"></script>
<style>
#errorMsg{
   color:red;
}

</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">


<br/><br/><br/><br/>

<div id=errorMsg></div>

<form id='frm' action="<%=request.getContextPath() %>/membership/membershipProc.jsp" method="post" style="height: 800px;">
<input type="hidden" id="emailOk" value="<%=emailOk%>" />
		<center>
		<img src="<%=request.getContextPath() %>/image/logo.png" style="width: 150px; height: 150px;" />
		</center>
		<div>
		<p class="font-weight-bold" style="margin-left: 650px; margin-top: 20;">이메일</p>
		<div class="input-group col-sm-4 mx-auto">
  			<input type="email" class="form-control" placeholder="Please enter your e-mail" id='email' name='email' value="<%=email %>" />
		</div>
		</div>
		<div>
		<p class="font-weight-bold"style="margin-left: 650px; margin-top: 20;">비밀번호 </p>
		<div class="input-group col-sm-4 mx-auto">
  			<input type="password" class="form-control" placeholder="Please enter your Password" id='pw' name='pw' value="<%=pw %>" />
		</div>
		</div>
		<div>
		<p class="font-weight-bold"style="margin-left: 650px; margin-top: 20;">비밀번호 확인</p>
		<div class="input-group col-sm-4 mx-auto">
  			<input type="password" class="form-control" placeholder="Please enter your password again" id='pwOk' name='pwOk' value="<%=pwOk %>"" />
		</div>
		</div>
		<center>
		<div style="margin-top: 30px; width: 417px;">
			<input type="button"class="btn btn-outline-secondary" style="width: 45%;" value="중복 확인" onclick="checkEmail('frm', '<%=request.getContextPath()%>/membership/memberEmailProc.jsp');"> 
			<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
			<input type="button" class="btn btn-outline-secondary" style="width: 45%;" onclick="phoneForm('http://localhost:8080/20210402_miniPj2/membership/phoneForm.jsp', 'frm', '<%=request.getContextPath()%>/membership/membershipProc.jsp')" value='인증하기'/> 
		</div>
		</center>
</form>



