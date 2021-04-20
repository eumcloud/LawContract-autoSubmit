<%@ page contentType="text/html; charset=UTF-8"%>
<script  src='<%=request.getContextPath()%>/js/common.js' type="text/javascript"></script>
<script  src='<%=request.getContextPath()%>/js/loginForm.js' type="text/javascript"></script>
 <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
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
<<<<<<< HEAD
        
        <div>
			<input type = "button" weht="" class="btn btn-outline-secondary" value = "비회원 로그인">
			</div>
			<div>
			<input type = "button" class="btn btn-outline-secondary" onclick = "checkEmpty();" value = "로그인하기"> <br /> 
=======
        <div class="form-group">
        <input type="hidden" onclick="formSubmit('frm', '<%=request.getContextPath()%>/login/kakaoProc.jsp')" value="카톡로그인" id ="kakaoProc"/>
        <input type="hidden" id="kakaoName" name ="kakaoName" />
          <div class="col-sm-offset-2 col-sm-10">
			   <a href="javascript:kakaoLogin();"><img src = "https://gb.go.kr/Main/Images/ko/member/certi_kakao_login.png" style="height: 60px; width:auto"></a>
			<input type = "button" class="btn btn-outline-secondary" id="loginBtn"onclick = "checkEmpty();" value = "로그인하기"> <br /> 
		  </div>
>>>>>>> branch 'master' of https://github.com/eumcloud/mini2Pj.git
		</div>

</form>

<br/><br /><br />
<<<<<<< HEAD
</div>
</body>
</html>  
=======
    <script>
        Kakao.init("e787d06915fe1f7afc8b4209f6cc2c14");

        function kakaoLogin(){
            window.Kakao.Auth.login({
                scope:'profile, account_email, gender, birthday',
                success: function(authObj){
                    console.log(authObj);
                    window.Kakao.API.request({
                        url:'/v2/user/me',
                        success: res =>{
                            const kakao_account = res.kakao_account;
                            console.log(kakao_account);
                            console.log(kakao_account.email);
                            console.log(kakao_account.profile.nickname);
                            var id = document.getElementById("id").value = kakao_account.email;
                            var name = document.getElementById("kakaoName").value = kakao_account.profile.nickname;
                            document.getElementById("kakaoProc").click();
                        }
                    });
                }
            });
        }
    </script>
  
>>>>>>> branch 'master' of https://github.com/eumcloud/mini2Pj.git
