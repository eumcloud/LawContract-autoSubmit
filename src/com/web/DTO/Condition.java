package com.web.DTO;

import java.util.Date;

//������� getter Setter
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
	
	private static String title="���������ŷ� �����༭"; 
	private static String concept = "ä����\r\n"
			+ "	<%-- <%=Condition.getClient() %> --%> "
			+ "	(���� �������̶� �Ѵ�)�� ä���� "
			+ "	<%-- <%= Condition.getDeptor%> --%> "
			+ "	(���� �������̶� �Ѵ�)�� �Ʒ��� ���� ���� ���� ����� ü���Ѵ�."; 
	
	public static String article1 ="�� 1�� [ ����� ]";
	public static String contents1 ="�������� ���������� ������ �ݾ��� �����Ͽ����� Ȯ���Ѵ�.<br />1.�ݾ�: �ϱ� "
			+ "									<%-- <%= Condition.getMoney%> --%> "
			+ "									���� (��________)<br />2. ������ : 20__�� �� ��";
	
	public static String article2 ="�� 2�� [ ������ �� ���� ]";
	public static String contents2 ="1.������ : "
			+ "									<%-- <%=Condition.getDeadline()%> --%> "
			+ "									<br />2. ���� : ������ __%�� �� �б⺰ ����";
	
	public static String article3 ="�� 3�� [ ������� ]";
	public static String contents3 ="������ �����Ͽ� �������� ������ ��Ī�Ͽ� �������� ��ҿ� �湮�Ͽ� "
			+ "									�����ϰų� �Ǵ� �������� Ư���� ���¸� ������ ��� ���� ���¿� �������� �Ա��Ѵ�.";
	
	public static String article4 ="�� 4�� [ ��ü �� ]";
	public static String contents4 ="�������� ���ڸ� 1ȸ�� ��ü�� ��� ������ ������ ����ϸ� ��ü "
			+ "									���ڷμ� �� ��ü���� __%�� �� 1�ϴ� �����Ͽ� ������ ���� �����Ѵ�.";
	
	public static String article5 ="�� 5�� [ ��Ÿ���� ]";
	public static String contents5 ="1. ����� ����ڴ� �� ����� ������ ���� ���ǿ� �ǰ��Ͽ� �ؼ��Ͽ��� �Ѵ�. <br />2. ��� �Ⱓ �� "
			+ "									����� ������ ������� ���� ���ǿ� ���ؼ��� ����� �� ������ ���� ���� �� ������ �� ��༭�� ���̿� ÷���Ѵ�. "
			+ "									<br />3. �� ��༭���� ��õ��� ���� �κп� ���Ͽ��� ���� ���� �� ������� ������� �Ѵ�.";
	
	public static String article6 ="�� 6�� [ �����ذ� ]";
	public static String contents6 ="�� ���� �����Ͽ� �� ����ڰ��� ������ �߻��� ��� �������� "
			+ "									�ּ��� ���� ������ �� ���ҷ� �Ͽ� ���������ν� �ذ��Ѵ�.";
	
	public static String article7 ="�� 7�� [ Ư����� ]";
	public static String contents7 ="��� ��� �Ϲݻ��� �̿ܿ� �Ʒ� ������ Ư��������� ���ϸ�, �Ϲݻ��װ� "
			+ "						Ư������� ����Ǵ� ��쿡�� Ư������� �켱�Ͽ� �����ϵ��� �Ѵ�.";
	public static String contents7_1="<%-- <%=/* Ư���߰����� ���� */ %> --%>"
			+ "1.<%-- <%= %> --%><br /> "
			+ "						2.<%-- <%= %> --%><br /> "
			+ "						3.<%-- <%= %> --%><br />";
	public static String addContents = "ä���� ���� : <%-- <%=client %> --%> "
			+ "					<br/>����ó : <%-- <%=phoneNum1 %> --%>  "
			+ "					<br/>�ּ� : <%-- <%=Addr1 %> --%> "
			+ "					<br/>";
	
	
}
