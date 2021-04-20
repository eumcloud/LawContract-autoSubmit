<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
function previewOpen(url){
pop_auth = window.open(url, '인증 팝업', 'top=10, left=10, width=708, height=1000');
}
</script>
<style type="text/css">
.step{
    -webkit-text-size-adjust: 100%;
    -webkit-font-smoothing: antialiased;
    color: #2e3949;
    font-family: NotoSans,sans-serif;
    word-break: keep-all;
    border: 0;
    box-sizing: inherit;
    margin: 0;
    padding: 0;
    letter-spacing: -.04em;
    line-height: 1.35;
    font-size: 42px;
    margin-top: 100px;
    font-weight: 300;
    margin-bottom: 32px;
    text-align: center;
   }
.space-4x{
	    -webkit-text-size-adjust: 100%;
    -webkit-font-smoothing: antialiased;
    color: #2e3949;
    font-family: NotoSans,sans-serif;
    font-weight: 400;
    word-break: keep-all;
    border: 0;
    box-sizing: inherit;
    margin: 0;
    padding: 0;
    font-size: 16px;
    letter-spacing: -.03em;
    line-height: 1.5;
    margin-bottom: 32px;
}


</style>
</head>
<body style="background: #f9fafc;">
<center>
<input type="hidden" name="currentPage" value="contractForm"/>
<br/><br/><br/><br/><br/>

<div style="margin-left: 400px; float: left;">
<h2 class="step"><b>5분 만에 </b>끝내는 계약업무</h2><br/>
<img src="https://www.modusign.co.kr/image/img/img-features-mainflow.png" style="    -webkit-text-size-adjust: 100%;
    -webkit-font-smoothing: antialiased;
    font-size: 16px;
    color: #2e3949;
    font-family: NotoSans,sans-serif;
    font-weight: 400;
    letter-spacing: -.04em;
    line-height: 1;
    word-break: keep-all;
    border: 0;
    box-sizing: inherit;
    margin: 0;
    padding: 0;
    max-width: 500px;
    width: 100%;
    margin-bottom: 40px;">
<p class="space-4x">계약서 파일을 업로드하여 서명을 요청해 보세요.<br>상대방은 회원가입 없이 이메일, 카카오톡 링크를 통해 서명할 수 있습니다.<br>언제 어디서든 5분 만에 계약을 체결해 보세요.</p>
</div>
<div style="margin-top: 80px; margin-right: 400px;">
<img src="https://page.modusign.co.kr/uploads/1/2/7/0/127078265/1508842465_orig.jpg" style="width: 300px; height: auto;" onclick="previewOpen('<%=request.getContextPath()%>/contract/previewPop.jsp')"/>
</div>
<br/>
<div style="background: white; width: 940px; height: 180px; padding: 15px; text-align: left; margin-top: 100px;"><br/>
<strong><font style="size: 4; color: #626262; text-align: left;">[계약서 해설 요약]<br/><br/></font></strong>
<font color="#000000" style="text-align: left;">금전소비대차계약서는 금전을 대여하거나 대여받는 경우 당사자 간에 대여금액, 이자율 및 지급시기 등을 약정하기 위하여 작성하는 계약서로서 채권자와 채무자가 개인인 경우 또는 법인인 경우에 따라 적용 받는 세법을 달리합니다.
<br>&ZeroWidthSpace;<br>
이하 본 계약서 및 해설에서는 금전소비대차계약의 계약당사자에 따라 세법상 고려해야 할 규정과 세부담을 최소화할 수 있는 계약 내용에 대하여 설명하고자 합니다.</font>
</div><br/><br/><br/><br/>

</center>
</body>
</html>