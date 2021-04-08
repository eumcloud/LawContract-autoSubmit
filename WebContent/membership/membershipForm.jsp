
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
   
    String pw = request.getParameter("pw");
    String pwOk = request.getParameter("pwOk");
    String email = request.getParameter("email");
    String path = request.getContextPath()+"/membership/membershipProc.jsp";
    
    
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
<script src='<%=request.getContextPath() %>/js/conditionForm.js' type="text/javascript"></script>
<script src='<%=request.getContextPath() %>/js/memberForm.js' type="text/javascript"></script>
<style>
#errorMsg{
   color:red;

}
</style>
<br/><br/><br/><br/>

<div id=errorMsg></div>
<center>
<form id='frm' action="<%=request.getContextPath() %>/membership/membershipProc.jsp" method="post">

<table>
	
	<tr>
		<td align='right'>E-Mail</td>
		<td>
			<input type=text id='email' name='email' value="<%=email %>" placeholder='email 입력' style="width: 200px; "/>
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
		<td  align='center' height=40 colspan=4>
			<input type=button onclick="phoneForm('frm', '<%=path %>'), openPop('http://localhost:8080/20210402_miniPj2/membership/phoneForm.jsp');" value='인증하기' style="width: 120px; "/> 
		</td>
    </tr>
	
</table>
</form>
</center>

<%@ page contentType="text/html; charset=UTF-8"%>


<input type="hidden" name="currentPage" value="membershipForm"/>


<br/><br/><br/><br/>

