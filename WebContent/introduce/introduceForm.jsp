<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서비스소개 페이지</title>
<style type="text/css">
.my-box { border:1px;
   width:400px;
　　height:40px;
 solid; padding:10px; }
</style>



</head>
<body><br/>
<form id=frm action="/introduceForm/DetailsForm.jsp" method="post">

     <h2 align="center">전자계약 서비스 소개</h2>
    <h3 align="center">전자 계약플러스는 못받을 돈을 받아드리는 가장 좋은 방법을 제시합니다.</h3><br/>
    <div align="center" style="border:1px solid; padding:7px;">
              쉽고 빠르고 간편한 계약! 지금바로~~!
</div><br/>
<h2 align="center">편리한 계약서 작성 기능</h2>
    <img src="<%=request.getContextPath()%>/image/대차거래계약서양식.PNG" alt="계약서양식" width="350" style="margin-left: auto; margin-right: auto; display: block;"
 /><br/>
    
    <h4 align="center">해당사이트의 전자 계약서 기능은 회원가입 로그인후 서명신청해서 요금제 선택 결제 진행후<br/> 
    계약서양식을 작성하고 서명완료한 고객님의 양식을 파일저장 및 법원에 제출버튼 클릭으로<br/>
     고객님의 계약서를 해당거주지와 가까운 법률기관으로 자동 전송이 됩니다.<br/> 
     또한 거래상대의 계약서의 개인정보를 통해서 거래상대에게 등기우편을 발송 할 수 있습니다.<br/>
     추가로 계약서양식필수항목에 고객님의 정보가 자동으로 입력됩니다.
    해줍니다. </h4><br/>
    <button type="button">상세정보</button><br/><br/>
    <h4 align="center">절차는 회원가입 로그인후 서명 신청으로 요금제 결제 진행하고 휴대폰 인증진행후 계약협상 및 확인한 후<br/>
                      계약서 양식 작성으로 서명진행하고 고객님의 계약서 양식을 파일저장 및 법원에 제출버튼 클릭으로<br/>
                       법률기관으로 자동 전송이 됩니다.</h4><br/>
    <button type="button" >상세정보</button><br/><br/>
    
                      <div align="center" style="border:1px solid; padding:7px;">
              <h5 style="color:red">회원가입->로그인->서명신청->계약진행1->계약서 양식 작성-> 서명및 도장(드래그)->제출</h5>
</div>         
      <h4 style="color:blue" align="center">또한 쌍방의 계약이므로 양측이 같은 계약서 작성하고 서명을 진행합니다.<br/>
                                             또는 서명이 된 계약서를 다운로드 내려받기또한 가능합니다.</h4><br/>                
                      
    
    </form>

</body>
</html>
    
    
    
    



