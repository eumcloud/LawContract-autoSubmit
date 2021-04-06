<%@page import="com.web.DTO.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<br/><br/><br/><br/>
<form id='frm' action="membership/phoneFormProc.jsp" method="post">
이름<input type="text" name="name"><br/>
전화번호<input type="text" name="phoneNum"><br/>
주민번호<input type="text" name="residentNum"><br/>
<select name="selectBox">  
 <option value=1 >SK</option>
 <option value=2 >KT</option>
 <option value=3 >LG</option>
</select>
<input type="submit" value="확인">
</form>
