
<%@page contentType="text/html; charset=UTF-8"%>

<%
	String deptorEmail = request.getParameter("deptorEmail");
	session.setAttribute("deptorEmail", deptorEmail);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>계약대상자 메일 전송</title>
<script src="<%=request.getContextPath() %>/js/common.js" type="text/javascript"></script>
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
    padding: 15px 0;
    text-align: center;
    display: inline-block;
    font-size: 15px;
    margin: 4px;
    cursor: pointer;
    border-radius:10px;
}
#emailTxt{
	 width:250px;
    background-color: #fff;
    display: inline-block;
    font-size: 15px;
    margin: 4px;
    border-radius:10px;
}
</style>
</head>
<center>
<body>
<form id='frm' method="post">
<br/><br/>
<b>계약 대상자</b><br/><br/>
<input name="deptorEmail" id= "emailTxt"type="text" placeholder="이메일 입력"><br/><br/>
<button class = "sendbtn"onclick="formSubmit('frm', '<%=request.getContextPath()%>/signature/sendMailPopProc.jsp');">이메일 전송</button>
<button class = "sendbtn"onclick="PopupNextPage('<%=request.getContextPath() %>/index.jsp?currentPage=myinfoForm');">알림톡 전송</button>
</form>
</body>
</center>
</html>