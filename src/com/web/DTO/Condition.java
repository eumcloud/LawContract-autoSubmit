package com.web.DTO;



//계약조건 getter Setter
public class Condition {
	private int no; //계약서 번호
	private String creditor; // 빌려주는 사람이름
	private String creditorAddr; //빌려주는 사람 주소
	private String creditorResiNum; //빌려주는사람 주민번호
	private String creditorEmail; //빌려주는사람 이메일
	private String deptor; //빌리는사람 이름
	private String deptorAddr; //빌리는사람 주소
	private String deptorResiNum; //빌리는사람 주민번호
	private String deptorEmail; //빌리는 사람 이메일
	private String spcContents; //특약사항
	private String signDate; // 계약날짜
	private String deadLine; //계약끝나는날
	private int interest; //이자율
	private String money; //빌려주는 금액
	
	private String lawaction = "신청 전";//법원제출현황
	
	private String filePath;
	private int fno;
	private String contractFile2;
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public int getFno() {
		return fno;
	}
	public void setFno(int fno) {
		this.fno = fno;
	}
	public String getContractFile2() {
		return contractFile2;
	}
	public void setContractFile2(String contractFile2) {
		this.contractFile2 = contractFile2;
	}
	public String getFilePath2() {
		return filePath2;
	}
	public void setFilePath2(String filePath2) {
		this.filePath2 = filePath2;
	}
	public String getContractFile() {
		return contractFile;
	}
	public void setContractFile(String contractFile) {
		this.contractFile = contractFile;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public String getDownloadPath() {
		return downloadPath;
	}
	public void setDownloadPath(String downloadPath) {
		this.downloadPath = downloadPath;
	}
	public String getDownloadPath2() {
		return downloadPath2;
	}
	public void setDownloadPath2(String downloadPath2) {
		this.downloadPath2 = downloadPath2;
	}
	private String filePath2;
	private String contractFile;
	private String condition;
	private String downloadPath;
	private String downloadPath2;
	
	public String getLawaction() {
		return lawaction;
	}
	public void setLawaction(String lawaction) {
		this.lawaction = lawaction;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getCreditor() {
		return creditor;
	}
	public void setCreditor(String creditor) {
		this.creditor = creditor;
	}
	public String getCreditorAddr() {
		return creditorAddr;
	}
	public void setCreditorAddr(String creditorAddr) {
		this.creditorAddr = creditorAddr;
	}
	public String getCreditorResiNum() {
		return creditorResiNum;
	}
	public void setCreditorResiNum(String creditorResiNum) {
		this.creditorResiNum = creditorResiNum;
	}
	public String getCreditorEmail() {
		return creditorEmail;
	}
	public void setCreditorEmail(String creditorEmail) {
		this.creditorEmail = creditorEmail;
	}
	public String getDeptor() {
		return deptor;
	}
	public void setDeptor(String deptor) {
		this.deptor = deptor;
	}
	public String getDeptorAddr() {
		return deptorAddr;
	}
	public void setDeptorAddr(String deptorAddr) {
		this.deptorAddr = deptorAddr;
	}
	public String getDeptorResiNum() {
		return deptorResiNum;
	}
	public void setDeptorResiNum(String deptorResiNum) {
		this.deptorResiNum = deptorResiNum;
	}
	public String getDeptorEmail() {
		return deptorEmail;
	}
	public void setDeptorEmail(String deptorEmail) {
		this.deptorEmail = deptorEmail;
	}
	public String getSpcContents() {
		return spcContents;
	}
	public void setSpcContents(String spcContents) {
		this.spcContents = spcContents;
	}
	public String getSignDate() {
		return signDate;
	}
	public void setSignDate(String signDate) {
		this.signDate = signDate;
	}
	public String getDeadLine() {
		return deadLine;
	}
	public void setDeadLine(String deadLine) {
		this.deadLine = deadLine;
	}
	public int getInterest() {
		return interest;
	}
	public void setInterest(int interest) {
		this.interest = interest;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	
}