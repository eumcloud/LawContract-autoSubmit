<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.web.DAO.*"%>
<%@page import="com.web.DTO.*"%>

<script  src='<%=request.getContextPath()%>/js/common.js' type="text/javascript"></script>
<script  src='<%=request.getContextPath()%>/js/loginForm.js' type="text/javascript"></script>
<script  src='<%=request.getContextPath()%>/js/ModityForm.js' type="text/javascript"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">


<style type="text/css">
   .Member-info{
    width: 500px;
}

	.info-button{
    width : 500px;
}
</style>

<%
	Member currentUser = (Member)session.getAttribute("currentUser");

	String PwModityFormPath = request.getContextPath() + "/myinfo/PwModityForm.jsp";
	String AddrModityFormPath = request.getContextPath() + "/myinfo/AddrModityForm.jsp";
	String WithdrawalFormPath = request.getContextPath() + "/myinfo/withdrawalForm.jsp";
%>


<form id = "frm" action="<%=request.getContextPath()%>/index.jsp">
<input type="hidden" name="currentPage" value="myinfoForm"/>
	<div class="Member-info mb-3 mx-auto mt-5 row ">
        <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
        <div class="col-sm-10">
          <input type="text" readonly class="form-control-plaintext" name = "email" id="" value="<%=currentUser.getEmail() %>"/>
        </div>
    </div>
      <div class="Member-info mb-3 mx-auto mt-5 row ">
            <label for="staticEmail" class="col-sm-2 col-form-label">폰 번호</label>
            <div class="col-sm-10">
              <input type="text" readonly class="form-control-plaintext" name="phoneNum" id="staticEmail" value="<%=currentUser.getPhoneNum() %>"/>
            </div>
    </div>
      <div class="Member-info input-group mb-3 mx-auto mt-5 ">
            <label for="staticEmail" class="col-sm-2 col-form-label">비밀번호</label>
            <input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2" value = "*********"/>
            <button class="btn btn-outline-secondary" type="button" id="button-addon2" onclick="openModityForm('frm', '<%=PwModityFormPath%>');">수정</button>
     </div>

      <div class="Member-info input-group mb-3 mx-auto mt-5 ">
        <label for="staticEmail" class="col-sm-2 col-form-label">주소</label>
        <input type="text" class="form-control" name="addr" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2" value ="<%=currentUser.getAddr() %>"/>
        <button class="btn btn-outline-secondary" type="button" id="button-addon2" onclick="openModityForm('frm', '<%=AddrModityFormPath%>');">수정</button>
  	</div>
  	
      <div class="Member-info mb-3 row mx-auto mt-5 ">
        <label for="staticEmail" class="col-sm-2 col-form-label">이름</label>
        <div class="col-sm-10">
          <input type="text" readonly class="form-control-plaintext" id="" value="<%=currentUser.getName() %>"/>
        </div>
        
    </div>
        <div class="info-button col-sm-offset-2 col-sm-10 mx-auto mt-5">
          <input type = "button" class="btn btn-outline-secondary" value = "수정"/>
          <input type = "button" class="btn btn-outline-secondary" onclick = "checkEmpty();" value = "취소"/> <br /> 
        </div>
    </div>
    <br /><br /><br />
</form>  