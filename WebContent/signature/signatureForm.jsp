<%@page import="com.web.DTO.Condition"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String writer = (String)session.getAttribute("writer");
	String writaddrer = (String)session.getAttribute("addr");
	String date = (String)session.getAttribute("date");
	String Term = (String)session.getAttribute("Term");
	String Loan = (String)session.getAttribute("Loan");
	String targetWriter = (String)session.getAttribute("targetWriter");
	String targetAddr = (String)session.getAttribute("targetAddr");
	String targetEmail = (String)session.getAttribute("targetEmail");
	String spcContents = (String)session.getAttribute("spcContents");
	
%>


<html>
<head>
<style type='text/css'>
.paper {
	width: 500px;
	height: 800px;
	background-color: #fff;
	padding: 40px;
}

#contMain {
	align: center;
}

table {border =1;
	box-shadow: 4px 4px 4px 4px gray;
}

td {
	align: top;
	margin: 20px;
}

#title {
	align-text: center;
}

.article {
	align: center;
	font-size: 16px;
	font-weight: bold;
	margin: 20px;
}

.contents {
	margin: 0 20px 0 20px;
	font-weight: none;
}
</style>
</head>
<body bgcolor="#000">
	<center>
		<input type="hidden" name="currentPage" value="signatureForm" /> <br />
		<table>
			<tr>
				<td class='paper'>
					<div id='contMain'>
						<div id='title'><h2 >금전대차거래 차용계약서</h2></div>
						<div class='contetns'>
							계약취지<br />
						</div>
						<div class='article'>
							제1조 [ 차용액 ]<br />
							<div>
								<div class='contents'>
									내용
								</div>
								<div class='article'>
									제 2조 [ 변제일 및 이자 ]<br />
								</div>
								<div class='contents'>
									내용
								</div>
								<div class='article'>
									제 3조 [ 변제방법 ]<br />
								</div>
								<div class='contents'>내용</div>
								<div class='article'>
									제 4조 [ 연체 등 ]<br />
								</div>
								<div class='contents'>내용</div>
								<div class='article'>
									제 5조 [ 기타사항 ]<br />
								</div>
								<div class='contents'>
									내용
								</div>
								<div class='article'>
									제 6조 [ 분쟁해결 ]<br />
								</div>
								<div class='contents'>내용</div>

								<div class='contents'>
									
								</div>
							</div>
				</td>
			</tr>
			</td>
			</tr>
		</table>
		<br />
		<br />
		<br />
		<br />
		<br />
		<table>
			<tr>
				<td class='paper'>
					<div class='article'>
						제 7조 [ 특약사항 ]<br />
					</div>
					<div class='contents'>내용</div> <br />
					<div class='contents' style="margin: 10px; font-size: 18px;">
						
					</div>

					<div>채권자 서명란</div>




					<div>채무자 성명 : <%=writer %>
					<br/> 연락처 : <%-- <%=phoneNum2 %> --%>
					<br/>주소 :<%-- <%=Addr2 %> --%>
					</div>
			</tr>
			</td>
			</tr>

		</table>
	</center>
</body>
</html>