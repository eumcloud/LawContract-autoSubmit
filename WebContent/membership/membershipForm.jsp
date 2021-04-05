<<<<<<< HEAD
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    Random rand = new Random();
	int randNum = rand.nextInt(10000);
	String authNum = String.format("%04d", randNum);
	//String.format("%04d", (new Random()).nextInt(10000));
	//이메일 전송
	session.setAttribute("authNum", authNum);
    
    String phoneNum = request.getParameter("phoneNum");
    String pw = request.getParameter("pw");
    String pwOk = request.getParameter("pwOk");
    String email = request.getParameter("email");
    
    if(phoneNum==null){
    	phoneNum="";
    }
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
<script src='<%=request.getContextPath() %>/js/authForm.js' type="text/javascript"></script>
<script src='<%=request.getContextPath() %>/js/commonForm.js' type="text/javascript"></script>
<script src='<%=request.getContextPath() %>/js/memberForm.js' type="text/javascript"></script>
<style>
#errorMsg{
   color:red;

}
</style>

<%=session.getAttribute("authNum") %>

<center>
<form id='frm' action="memberForm/memberProc" method="post">
<table>
	<tr>
		<td align='right' height=40>휴대폰번호(-생략)</td>
		<td>
			<input type=text id='phoneNum' name='phoneNum' value="<%=phoneNum %>" placeholder='폰번호 입력'/>
			<input type=button onclick="duplicates();" value='중복체크'  style="width: 120px; "/>  
		</td>
	</tr>
	<tr>
		<td align='right' height=40>패스워드</td>
		<td>
			<input type=text id='pw' name='pw' value="<%=pw %>" placeholder='pw 입력'/> 
		</td>
	</tr>
	<tr>
		<td align='right'>패스워드 확인</td>
		<td>
			<input type=text id='pwOk' name='pwOk' value="<%=pwOk %>" placeholder='pw 입력'/> 
		</td>
	</tr>
	<tr>
		<td align='right'>E-Mail</td>
		<td>
			<input type=text id='email' name='email' value="<%=email %>" placeholder='email 입력' style="width: 200px; "/>
			<input type=button onclick="sendEmail();" value='인증번호 전송' style="width: 120px; "/> 
		</td>
    </tr>
    <tr>
		<td align='right'>인증번호</td>
		<td>
			<input type=text name='authNum' value='인증번호' placeholder='인증번호확인'/> 
		</td>
	</tr>
	<tr>
		<td align='center' height=40 colspan=4>
			<input type=button onclick="sendMember();" value='회원가입' style="width: 120px; "/>
			<input type=reset value='취소' style="width: 120px; "/>	 
		</td>
	</tr>
</table>
</form>
</center>
=======
<%@ page contentType="text/html; charset=UTF-8"%>

<input type="hidden" name="currentPage" value="membershipForm"/>
<<<<<<< HEAD
<br/><br/><br/><br/>
회원가입 페이지 수정함
=======
회원가입 페이지 수정함 더 수정
>>>>>>> branch 'master' of https://github.com/eumcloud/mini2Pj.git
>>>>>>> branch 'master' of https://github.com/eumcloud/mini2Pj.git
