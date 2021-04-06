package com.web.DTO;

public class Member {
	
	private int no;// 넘버
	private String email; //이메일
	private String phoneNum; //폰
	private String residentNum;//주민번호
	private String addr; //주소
	private String name; //이름
	
	private String pw;// 비밀번호
	private String chkpw; //비밀번호 확인
	
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
