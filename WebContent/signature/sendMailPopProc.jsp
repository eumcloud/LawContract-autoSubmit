
<%@page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="mail" class="com.jin.mail.JinsMail"/>
<jsp:setProperty property="id" name="mail" value="gihong0703@gmail.com"/>
<jsp:setProperty property="pw" name="mail" value="467913ssak!!"/>

<%

	String deptorEmail = request.getParameter("deptorEmail");
	int fno = (int)session.getAttribute("fno");
	System.out.print(deptorEmail);
 mail.SendMail("ACON", "gihong0703@gamil.com", deptorEmail, 
		"Please sign the contract", 
		"<a href='http://localhost:8080/20210402_miniPj2/index.jsp?currentPage=conditionFormSnd' >링크입니다</a> \r계약서 번호는 "+fno+"입니다");  
	 
%>
<br/><br/><br/>
<script language="javascript">

function PopupNextPage(path){

    window.opener.location.href=path;
    self.close();
}
</script>
<style type="text/css">
.sendbtn {
    width:100px;
    background-color: #282d32;	
    border: none;
    color:#fff;
    padding: 10px 0;
    text-align: center;
    display: inline-block;
    font-size: 15px;
    margin: 4px;
    cursor: pointer;
    border-radius:10px;
}
</style>
<center>
<p><b> 메일전송 완료</b></p>
<br/><br/>
<button class = "sendbtn"onclick="PopupNextPage('<%=request.getContextPath() %>/myinfo/ContractDetailsForm.jsp');">확인</button>
</center>