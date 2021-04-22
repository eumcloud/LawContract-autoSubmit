<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.web.DAO.*"%>
<%@page import="com.web.DTO.*"%>

<html>
<script type="text/javascript" src='<%=request.getContextPath()+"/js/ModityForm.js"%>'></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<%
   String path = request.getContextPath() + "/myinfo/PwModityProc.jsp";
   Member currentUser = (Member)session.getAttribute("currentUser");
%>
<body>
<br /><br /><br />
<form id='frm' action="<%=request.getContextPath()%>/myinfo/PwModityProc.jsp">
      <input type = 'hidden' id='userpw' value='<%=currentUser.getPw()%>'/>
      <div class="pw col-xs-3 mx-auto" style="width:400px;">
         <h1>비밀번호 변경</h1><br/>
         <ul>
            <li>안전한 비밀번호로 내정보를 보호하세요.</li>
            <li>다른 아이디/사이트에서 사용한적 없는 비밀번호</li>
            <li>이전에 사용한적 없는 비밀번호가 안전합니다.</li>
         </ul>
      </div>
      
      <div class="pw col-xs-3 mx-auto pt-3" style="width:400px;">
         <label for="exampleInputEmail1" class="form-label">현재 비밀번호</label>
         <input class="form-control" style="width:400px;" placeholder="현재 비밀번호를 입력해주세요." type="password" name="currentpw" id="currentpw" />         
      </div>
      
      <div class="pw col-xs-3 mx-auto pt-3" style="width:400px;">
         <label for="exampleInputEmail1" class="form-label">새로운 비밀번호</label>
         <input class="form-control" style="width:400px;" placeholder="새로운 비밀번호를 입력해주세요." type="password" name="newpw" id="newpw" />
      </div>
      
      <div class="pw col-xs-3 mx-auto pt-3" style="width:400px;">
         <label for="exampleInputEmail1" class="form-label">새로운 비밀번호 확인</label>
         <input class="form-control" style="width:400px;" placeholder="다시 한번 새로운 비밀번호를 입력해주세요."type="password" name="newpwok" id="newpwok" />
      </div>

      <div class="d-gridc gap-2 mx-auto pt-4" style="width:400px;">
         <input class="btn btn-secondary" style="width:194px;" type="button" onclick="Pwrproc('frm','<%=path %>');" value="수정완료" />
         <input class="btn btn-secondary" style="width:196px;" type="button" onclick="formclose();"value ="취소" />
      </div>

</form>
</body>
</html>