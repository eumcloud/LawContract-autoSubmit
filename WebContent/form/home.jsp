<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String conpath=request.getContextPath();
%>
<input type="hidden" name="currentPage" value="home"/>
<style type="text/css">
.text {
	color: white;
	position: absolute;
	font-weight: 900;
	font-size: 70px;
	top: 28%;
	left: 30%;
	text-align: center;
	} 
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
    margin-top: 48px;
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
.efficiency{
    -webkit-text-size-adjust: 100%;
    -webkit-font-smoothing: antialiased;
    color: #2e3949;
    font-family: NotoSans,sans-serif;
    word-break: keep-all;
    border: 0;
    box-sizing: inherit;
    margin: 0;
    padding: 0;
    font-weight: inherit;
    font-size: 40px;
    line-height: 1.35;
    letter-spacing: -.04em;
    margin-top: 100px;
    margin-bottom: 30px;
    
}
.coment{
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
    margin-bottom: 48px;
    }
.card{
    -webkit-text-size-adjust: 100%;
    -webkit-font-smoothing: antialiased;
    font-size: 16px;
    font-family: NotoSans,sans-serif;
    font-weight: 400;
    letter-spacing: -.04em;
    line-height: 1;
    word-break: keep-all;
    text-align: center;
    border: 0;
    width: 1000px;
    height: 200px;
    margin: 300px 300px 300px 300px;
    color: #fff;
    padding: 112px 0;
    border-radius: 10px;
    background-image: linear-gradient(135deg,#2e3949,#1e2530);
}
.txt1 {
    -webkit-text-size-adjust: 100%;
    -webkit-font-smoothing: antialiased;
    font-family: NotoSans,sans-serif;
    word-break: keep-all;
    text-align: center;
    color: #fff;
    letter-spacing: -.04em;
    line-height: 1.35;
    font-size: 42px;
    border: 0;
    box-sizing: inherit;
    margin: 0;
    padding: 0;
    font-weight: 700;
}
.txt2{
    -webkit-text-size-adjust: 100%;
    -webkit-font-smoothing: antialiased;
    font-family: NotoSans,sans-serif;
    word-break: keep-all;
    text-align: center;
    color: #fff;
    border: 0;
    box-sizing: inherit;
    margin: 0;
    padding: 0;
    font-weight: inherit;
    line-height: 1.35;
    font-size: 21px;
    letter-spacing: -.03em;
    margin-bottom: 14px;
    opacity: .7;
}
.btn{
    -webkit-text-size-adjust: 100%;
    -webkit-font-smoothing: antialiased;
    word-break: keep-all;
    overflow: visible;
    text-transform: none;
    box-sizing: inherit;
    margin: 0;
    background: none;
    border: 0;
    outline: none;
    cursor: pointer;
    font-family: inherit;
    letter-spacing: inherit;
    line-height: inherit;
    -webkit-box-align: center;
    align-items: center;
    border-style: solid;
    border-width: 1px;
    display: inline-flex;
    font-weight: 500;
    -webkit-box-pack: center;
    justify-content: center;
    color: rgb(33, 33, 33);
    background-color: rgb(255, 203, 76);
    border-color: rgb(255, 189, 25);
    box-shadow: rgba(0, 0, 0, 0.15) 0px 3px 2px -2px;
    font-size: 15px;
    padding: 0px;
    height: 56px;
    border-radius: 0px 3px 3px 0px;
    width: 155px;
    -webkit-appearance: button;
}
.btntxt{
    -webkit-text-size-adjust: 100%;
    -webkit-font-smoothing: antialiased;
    text-transform: none;
    cursor: pointer;
    font-family: inherit;
    border: 0;
    box-sizing: inherit;
    margin: 0;
    padding: 0;
    letter-spacing: -0.04em;
    line-height: 1.5em;
    margin-bottom: 0;
    word-break: break-all;
    color: #292929;
    font-size: 18px;
    font-weight: 700;
}
.txt3{
    -webkit-text-size-adjust: 100%;
    -webkit-font-smoothing: antialiased;
    font-family: NotoSans,sans-serif;
    font-weight: 400;
    word-break: keep-all;
    text-align: center;
    color: #fff;
    border: 0;
    box-sizing: inherit;
    margin: 0;
    padding: 0;
    letter-spacing: -.03em;
    line-height: 1.5;
    font-size: 14px;
    opacity: .5;
}
</style>
<img src="https://image.ajunews.com/content/image/2020/09/29/20200929183927321839.jpg"
width="100%" height="600px" alt="homeimg" style="opacity: 0.5; text-align: center; filter: brightness(30%);"  />
<h1 class="text">
크고 작은 대차계약<br/>
비대면으로 쉽고 간편하게
</h1>
<br/><br/><br/><br/>
<center>
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
<br/><br/><br/><br/>
<hr/>
</center>
<img src="https://www.modusign.co.kr/image/img/img-security.svg" style=" margin: 50px 200px 50px 400px; vertical-align: middle; float: left;">
<h3 class="efficiency">법적효력∙보안까지 확실합니다</h3><br/>
<p class="coment">[전자서명법] 및 <br>[전자문서및전자거래기본법]에 따라 <br/>확실한 법적효력을 갖는 전자계약 서비스입니다.<br/><br/>
도장과 서명이 동시에 필요한 아시아 권 뿐만 아닌 유럽, 아메리카권에도<br/>
이미 전자계약에 관한 법령은 체계적입니다.</p>
<center>
<div class="card">
 <h2 class="txt1"><strong>지금 바로 시작하세요!</strong></h2>
<br/>
<h6 class="txt2">설명이 필요 없는 간단한 계약 과정, 직접 경험해보세요</h6><br/><br/><br/>
<form action="<%=conpath %>/index.jsp">
<input type="hidden" name="currentPage" value="signatureForm"/>
<button height="56px" type="submit" width="237px,,155px" class="btn">
<p font-size="18px" font-weight="bold" class="btntxt">계약 바로가기</p></button><br/><br/>
<p class="txt3">비회원으로도 서명이 가능합니다!</p>
</form>
</div>
</center>
