<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@page import="com.web.DAO.*"%>
<%@page import="com.web.DTO.*"%>

<%
   Member currentUser = (Member)session.getAttribute("currentUser"); 
   String path = request.getContextPath() + "/myinfo/AddrModityProc.jsp";
%>
<script type="text/javascript" src='<%=request.getContextPath()+"/js/ModityForm.js"%>'></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<html>
<body>
<br /><br /><br />
<form id='frm' action="<%=request.getContextPath()%>/myinfo/AddrModityProc.jsp">
   <div class="pw col-xs-3 mx-auto" style="width:400px;">
      <h1>주소 수정</h1><br/>
      <ul>
         <li>작성된 주소로 변경됩니다.</li>
      </ul>
   </div>
      
   <div class="pw col-xs-3 mx-auto pt-3" style="width:400px;">
      <label class="form-label"><b>현재 주소</b></label>
      <input class="form-control-plaintext" style="width:400px;" type="text" name="addr" id="addr" value="<%=currentUser.getAddr() %>" />         
   </div>
      
   <div class="pw col-xs-3 mx-auto pt-3" style="width:400px;">
      <label class="form-label"><b>새로운 주소</b></label>
      <input class="form-control" style="width:400px;" placeholder="새로운 주소를 입력해주세요." type="text" name="newaddr" id="newaddr" />
   </div>
      
   <div class="d-gridc gap-2 mx-auto pt-4" style="width:400px;">
<!--       <input class="btn btn-secondary" style="width:194px;" type="submit" value="수정완료" /> -->
      <input class="btn btn-secondary" style="width:194px;" type="button" onclick="Addrproc('frm','<%=path %>');" value="수정완료" />
      <input class="btn btn-secondary" style="width:196px;" type="button" onclick="formclose();" value ="취소" />
   </div>
</form>
</body>
</html>