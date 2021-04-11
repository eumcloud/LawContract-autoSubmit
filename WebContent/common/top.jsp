<%@ page contentType="text/html; charset=UTF-8"%>
<%
String contextPath =request.getContextPath();
String path = contextPath +  "/index.jsp?currentPage=";
String usrId = (String)session.getAttribute("usrId");
System.out.println("현재 접속중인 id :" + usrId);
%>
<style type="text/css">
*{margin:0; padding:0;}
ul{list-style: none;}
a{color: inherit; text-decoration: none; }
#wrap{width:100%; overflow:hidden;}
img{max-width:100%;}
#header{width:100%; height: 80px; background:#282d32; position: fixed; top: 0; left: 0; transition: 0.5s; z-index: 2;}
#header .flex-box{ text- width: 100%; height: 100%; max-width: 1024px; display:flex;flex-direction:row;  align-items: center; }
#header a.logo{ align-self: stretch;}
#header a.logo img{height: 100%;}
#header ul li{display: inline-block; margin: 0 10px;}
#header.min{height: 40px;}

</style>

 
  <div id="wrap">
<header id="header">
        <div class="flex-box">
            <ul style="-webkit-text-size-adjust: 100%;-webkit-font-smoothing: antialiased;font-family: NotoSans,sans-serif;font-weight: 400;letter-spacing: -.04em;line-height: 1;word-break: keep-all;white-space: nowrap;list-style: none;font-size: 15px;background-color: transparent;border: 0;box-sizing: inherit;margin: 0;padding: 0;color: white;text-decoration: none;cursor: pointer; ">
                <li style="margin-left: 50px; vertical-align: middle"><a href="<%=path %>home"><img src="<%=contextPath%>/image/logo.png" width="100px" height="100px"></a></li>
                <li><a href="<%=path %>introduceForm">서비스 소개</a></li>
                <li><a href="<%=path %>contractForm">계약서 양식</a></li>
                <li><a href="<%=path %>feeinfoForm">요금 안내</a></li>
              <li><a href="<%=path %>conditionForm">서명신청</a></li>
            
                
                <!-- 로그인후 로그인 버튼 에서 바뀔 내정보 버튼
                <li style="-webkit-text-size-adjust: 100%;-webkit-font-smoothing: antialiased;font-family: NotoSans,sans-serif;letter-spacing: -.04em;line-height: 1;word-break: keep-all;white-space: nowrap;list-style: none;box-sizing: inherit;text-decoration: none;cursor: pointer;display: inline-block;font-weight: 500;text-align: center;transition: background-color .2s;background-color: hsla(0,0%,100%,0);color: #fff;padding: 8px 24px 10px;margin: a 8px 0 0;margin-right: 4px;margin-left: 1200px;max-width: 50px;width: calc(50% - 12px);font-size: 13px;padding-left: 12px;adding-right: 12px;">
                <a href="#"><b>내정보</b></a><li> -->

				<li style="-webkit-text-size-adjust: 100%;-webkit-font-smoothing: antialiased;font-family: NotoSans,sans-serif;letter-spacing: -.04em;line-height: 1;
				word-break: keep-all;white-space: nowrap;list-style: none;box-sizing: inherit;text-decoration: none;cursor: pointer;display: inline-block;font-weight: 500;
				text-align: center;transition: background-color .2s;background-color: hsla(0,0%,100%,0);border: 1px solid #fff;color: #fff;padding: 8px 24px 10px;margin: a 8px 0 0;
				margin-right: 4px;margin-left: 1200px;max-width: 50px;width: calc(50% - 12px);font-size: 13px;padding-left: 12px;adding-right: 12px;">
                </li>
                <%if(usrId == null){ %>
                <li><a href="<%=path %>loginForm"><b>로그인</b></a></li>
                <li><a href="<%=path %>phoneForm"><b>회원가입</b></a></li>
                <%}else{ %>
                <li><%=usrId %>님 반갑습니다.</li>
                <li><a href = "<%=path %>logout">로그아웃</a>
                <li><a href = "<%=path %>myinfoForm">내정보</a></li>
                <li><a href = "<%=path %>ContractDetailsProc&pageNumber=1">계약 내역</a></li>
                <%} %>

            </ul>
        </div>
    </header>
  </div>
  
