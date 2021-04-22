<%@ page contentType="text/html; charset=UTF-8"%>

<script  src='<%=request.getContextPath()%>/js/common.js' type="text/javascript"></script>
<script  src='<%=request.getContextPath()%>/js/loginForm.js' type="text/javascript"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

<style type="text/css">
   .login{
        width: 500px;
   }
   h1 {
    text-align: center;
    margin-top: 150px;
    font-size: 60px;
    font-weight: bolder;
}
.vo{
margin-bottom: 50px;
}

</style>



<div class="vo">

<form class="mx-auto mt-5 form-horizontal login" id='frm' action="<%=request.getContextPath()%>/login/loginProc.jsp" method = "post">
      <center>
      <img src="<%=request.getContextPath() %>/image/logo.png" style="width: 150px; height: 150px;" />
      </center>   
   <input type="hidden" name="currentPage" value="loginForm"/>
        <div class="form-group pt-3">
           <p class="font-weight-bold"">이메일</p>
            <input type = "text" class="form-control" id = "id" name = "id" />
        </div>
        <div class="form-group pt-3">
           <p class="font-weight-bold">비밀번호</p>
            <input type = "text" class="form-control" id = "pw" name = "pw" />
        </div>
        <div class="form-group pt-3">
           <input type="hidden" onclick="formSubmit('frm', '<%=request.getContextPath()%>/login/kakaoProc.jsp')" value="카톡로그인" id ="kakaoProc"/>
           <input type="hidden" id="kakaoName" name ="kakaoName" />
        <div class="form-group">
         <a type="button" href="javascript:kakaoLogin();"><img src = "https://gb.go.kr/Main/Images/ko/member/certi_kakao_login.png" style="width:250px; height:60px;" ></a>
         <input type = "button" class="btn btn-secondary" id="loginBtn"onclick="checkEmpty();" value="로그인하기" style="width:244px; height:60px;" /> <br />
      </div>
   </form>
   </div>
      </center>

<br/><br /><br /><br/>

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
