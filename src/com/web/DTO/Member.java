package com.web.DTO;

public class Member {
	
	private int no;// �ѹ�
	private String email; //�̸���
	private String phoneNum; //��
	private String residentNum;//�ֹι�ȣ
	private String addr; //�ּ�
	private String name; //�̸�
	
	private String pw;// ��й�ȣ
	private String chkpw; //��й�ȣ Ȯ��
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phonNum) {
		this.phoneNum = phonNum;
	}
	public String getResidentNum() {
		return residentNum;
	}
	public void setResidentNum(String residentNum) {
		this.residentNum = residentNum;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getChkpw() {
		return chkpw;
	}
	public void setChkpw(String chkpw) {
		this.chkpw = chkpw;
	}
	
	
	
	
	
}
