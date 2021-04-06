<%@ page contentType="text/html; charset=UTF-8"%>
<%
String contxtPath =request.getContextPath(); 
%>
<style type="text/css">
html,body {
	margin: 0;
	padding: 0;
}
.footer {
	background-color: #282d32; 
	width: 100%; 
	height: 150px;

}
.info{
    -webkit-text-size-adjust: 100%;
    -webkit-font-smoothing: antialiased;
    font-family: NotoSans,sans-serif;
    font-weight: 400;
    letter-spacing: -.04em;
    word-break: keep-all;
    color: hsla(0,0%,100%,.4);
    border: 0;
    box-sizing: inherit;
    margin: 20px;
    padding: 0;
    font-size: 13px;
    line-height: 1.7;
    overflow: hidden;
    width: 45%;
    float: left;
    margin-left: 100px;
}
.info2{
    -webkit-text-size-adjust: 100%;
    -webkit-font-smoothing: antialiased;
    font-family: NotoSans,sans-serif;
    font-weight: 400;
    letter-spacing: -.04em;
    word-break: keep-all;
    color: hsla(0,0%,100%,.4);
    text-align: right;
    border: 0;
    box-sizing: inherit;
    margin: 0;
    padding: 0;
    font-size: 13px;
    line-height: 1.7;
    width: 33%;
    float: left;
    margin-top: 40px;
    
}
.infos{

}
</style>
<footer class="footer">
<div class="infos">
<div class="info">
<img src="<%=contxtPath%>/image/logo.png" width="100px" height="100px"style="margin-left: 50px; float: left;">
    <p style="margin-top: 20px;">2조 &nbsp; ❘&nbsp; 조원 : 김영신 / 송증빈 / 변의준 / 이충현 / 김기홍&nbsp; ❘&nbsp; 
   이메일 : gihong0703@gmail.com<br>고객센터 운영시간 10:00 ~ 18:00 ( 점심시간 12:15 ~ 13:30 )
    <br>서울특별시 중구 남대문로 117 동아빌딩 15층&nbsp; ❘&nbsp; 서울특별시 강남구 테헤란로 124 삼원타워 5층</p></div>
<div class="info2">
<strong>이용약관</strong>&nbsp; ❘&nbsp;<strong>개인정보처리방침</strong>
<br>© 2016-2021. Modusign Inc. All rights reserved.
</div>
</div>
</footer>