package com.web.DTO;

import java.util.Date;

//계약조건 getter Setter
public class Condition {
	private String money;
	private Date contDate;
	private Date deadline;
	
	
	private String client;
	private String debtor;
	
	private String clientAddr;
	private String debtorAddr;
	
	
	
	
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public Date getContDate() {
		return contDate;
	}
	public void setContDate(Date contDate) {
		this.contDate = contDate;
	}
	public java.util.Date getDeadline() {
		return deadline;
	}
	public void setDeadline(java.util.Date deadline) {
		this.deadline = deadline;
	}
	public String getClient() {
		return client;
	}
	public void setClient(String client) {
		this.client = client;
	}
	public String getDebtor() {
		return debtor;
	}
	public void setDebtor(String debtor) {
		this.debtor = debtor;
	}
	public String getClientAddr() {
		return clientAddr;
	}
	public void setClientAddr(String clientAddr) {
		this.clientAddr = clientAddr;
	}
	public String getDebtorAddr() {
		return debtorAddr;
	}
	public void setDebtorAddr(String debtorAddr) {
		this.debtorAddr = debtorAddr;
	}
	
	private static String title="금전대차거래 차용계약서"; 
	private static String concept = "채권자\r\n"
			+ "	<%-- <%=Condition.getClient() %> --%> "
			+ "	(이하 ‘갑’이라 한다)와 채무자 "
			+ "	<%-- <%= Condition.getDeptor%> --%> "
			+ "	(이하 ‘을’이라 한다)는 아래와 같이 금전 차용 계약을 체결한다."; 
	
	public static String article1 ="제 1조 [ 차용액 ]";
	public static String contents1 ="‘을’은 ‘갑’에게 다음의 금액을 차용하였음을 확인한다.<br />1.금액: 일금 "
			+ "									<%-- <%= Condition.getMoney%> --%> "
			+ "									원정 (￦________)<br />2. 차용일 : 20__년 월 일";
	
	public static String article2 ="제 2조 [ 변제일 및 이자 ]";
	public static String contents2 ="1.변제일 : "
			+ "									<%-- <%=Condition.getDeadline()%> --%> "
			+ "									<br />2. 이자 : 원금의 __%를 매 분기별 지급";
	
	public static String article3 ="제 3조 [ 변제방법 ]";
	public static String contents3 ="지정된 변제일에 ‘을’은 현금을 지칭하여 ‘갑’의 장소에 방문하여 "
			+ "									지급하거나 또는 ‘갑’이 특정된 계좌를 고지한 경우 당해 계좌에 현금으로 입금한다.";
	
	public static String article4 ="제 4조 [ 연체 등 ]";
	public static String contents4 ="‘을’은 이자를 1회라도 연체한 경우 기한의 이익을 상실하며 연체 "
			+ "									이자로서 총 연체금의 __%를 매 1일당 가산하여 완제일 까지 지급한다.";
	
	public static String article5 ="제 5조 [ 기타사항 ]";
	public static String contents5 ="1. 계약의 당사자는 본 계약의 내용을 신의 성실에 의거하여 준수하여야 한다. <br />2. 계약 기간 중 "
			+ "									계약의 변경은 당사자의 서면 합의에 의해서만 변경될 수 있으며 서면 날인 된 문서를 본 계약서의 말미에 첨부한다. "
			+ "									<br />3. 본 계약서에서 명시되지 않은 부분에 대하여는 관련 법규 및 상관습에 따르기로 한다.";
	
	public static String article6 ="제 6조 [ 분쟁해결 ]";
	public static String contents6 ="본 계약과 관련하여 양 당사자간의 분쟁이 발생한 경우 ‘갑’의 "
			+ "									주소지 관할 법원을 그 관할로 하여 재판함으로써 해결한다.";
	
	public static String article7 ="제 7조 [ 특약사항 ]";
	public static String contents7 ="상기 계약 일반사항 이외에 아래 내용을 특약사항으로 정하며, 일반사항과 "
			+ "						특약사항이 상충되는 경우에는 특약사항을 우선하여 적용하도록 한다.";
	public static String contents7_1="<%-- <%=/* 특약추가내용 변수 */ %> --%>"
			+ "1.<%-- <%= %> --%><br /> "
			+ "						2.<%-- <%= %> --%><br /> "
			+ "						3.<%-- <%= %> --%><br />";
	public static String addContents = "채권자 성명 : <%-- <%=client %> --%> "
			+ "					<br/>연락처 : <%-- <%=phoneNum1 %> --%>  "
			+ "					<br/>주소 : <%-- <%=Addr1 %> --%> "
			+ "					<br/>";
	
	
}
