<%@ page contentType="text/html; charset=UTF-8"%>
<script  src='<%=request.getContextPath()%>/js/common.js' type="text/javascript"></script>
<script  src='<%=request.getContextPath()%>/js/loginForm.js' type="text/javascript"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

<style type="text/css">

.acon{
margin-top: 30px;
}
   .login{
        width: 500px;
   }
h1 {
    text-align: center;
    margin-top: 10px;
    margin-buttom: 20px;
    font-size: 60px;
    font-weight: bolder;
}
.btn-outline-secondary, .btn-outline-secondary {
  width: 200px;
  float: left;
  float: right;
   margin-top: 5px;
   margin-left: 50px;
}
</style>
<html>
<body>
<div>
<form class="mx-auto mt-5 form-horizontal login" id='frm' action="<%=request.getContextPath()%>/login/loginProc.jsp" method = "post">
	<input type="hidden" name="currentPage" value="loginForm"/>
	<div class="acon">
	<img src="<%=request.getContextPath()%>/image/logo.png" alt="에이콘" height="150" width="150" style="margin-left: auto; margin-right: auto; display: block;">
	<h1>로그인</h1>
	</div>
        <div class="form-group">
            <input type = "text" class="form-control" id = "id" name = "id" /><br />
        </div>
        <div class="form-group">
            <input type = "text" class="form-control" id = "pw" name = "pw" /><br />
        </div>
        
        <div>
         
			<input type = "button" weht="" class="btn btn-outline-secondary" value = "비회원 로그인">
			</div>
			<div>
			<input type = "button" class="btn btn-outline-secondary" onclick = "checkEmpty();" value = "로그인하기"> <br /> 
		</div>

</form>

<br/><br /><br />
</div>
</body>
</html>  