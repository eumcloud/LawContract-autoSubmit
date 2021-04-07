package com.web.DTO;



//계약조건 getter Setter
public class Condition {
	private String money;
	private String interest;
	private String signdate;
	

	public String getSigndate() {
		return signdate;
	}
	public void setSigndate(String signdate) {
		this.signdate = signdate;
	}
	public String getInterest() {
		return interest;
	}
	private String contDate;
	private String deadline;
	
	
	private String client;
	private String clientAddr;
	private String clientResiNum;
	private String clientEmail;
	
	
	private String debtor;
	private String debtorAddr;
	private String debtorResiNum;
	private String debtorEmail;
	
	private String condition;
	private String spcContents;
	
	
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	
	public String getContDate() {
		return contDate;
	}
	public void setContDate(String contDate) {
		this.contDate = contDate;
	}
	public String getDeadline() {
		return deadline;
	}
	public void setDeadline(String deadline) {
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
	public String getClientResiNum() {
		return clientResiNum;
	}
	public void setClientResiNum(String clientResiNum) {
		this.clientResiNum = clientResiNum;
	}
	public String getClientEmail() {
		return clientEmail;
	}
	public void setClientEmail(String clientEmail) {
		this.clientEmail = clientEmail;
	}
	public String getDebtorResiNum() {
		return debtorResiNum;
	}
	public void setDebtorResiNum(String debtorResiNum) {
		this.debtorResiNum = debtorResiNum;
	}
	public String getDebtorEmail() {
		return debtorEmail;
	}
	public void setDebtorEmail(String debtorEmail) {
		this.debtorEmail = debtorEmail;
	}
	
	public void setInterest(String interest) {
		this.interest = interest;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public String getSpcContents() {
		return spcContents;
	}
	public void setSpcContents(String spcContents) {
		this.spcContents = spcContents;
	}
	
	
	
}
