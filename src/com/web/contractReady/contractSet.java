package com.web.contractReady;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.web.DTO.Condition;

public class contractSet {

	
	public String Contract(String creditor, String deptor, String money, String interest, String deadline, String spcContents, String creditorResiNum, String creditorAddr, String deptorResiNum, String deptorAddr) {
		
		Date nowTime = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy�� MM�� dd�� ");
		String norm = "";
		Condition con = new Condition();
		
		norm+= "<h2 id='title' align=\"center\">�����Һ���� ��༭</h2>"
		
		+ "<br/><br/><div class='contetns'> "
		+ "  ä���� "+creditor+" ���������̶� �ϰ�, ä���� "+deptor+"���������� �Ͽ� �������������� ���� ������ ���� �����Һ��������� ü���Ѵ�.<br/><br/><br/> "
		+ "<b>��1�� (�����Һ����)</b><br/>  �������� ���������� ��"+money+"���� �뿩�ϰ�, �������� �̸� �����Ѵ�.<br/><br/> "
		+ "<b>��2�� (����) </b><br/> ���� ����ݿ� ���� ���ڴ� ���� ������ �ϵ� ��3�� ���� ������ ���Ϻ��� ���� ������ ���� ��"+interest+"%�� ��ü���ڸ� �����Ͽ��� �Ѵ�.<br/><br/> "
		+ "<b>��3�� (��������)</b><br/>  �������ǡ������� ���� �� ������� ���������� "+deadline+" ������ �Ѵ�.<br/><br/> "
		+ "<b>��4�� (�������)</b><br/>  �������ǡ������� ���� ���� ��Ҵ� �������� �ּ����� �Ѵ�.<br/><br/> "
		+ "<b>��5�� (������ ���� ���)</b><br/>  �������� ������ ������ ���̿� ���� ��ȣ�� �ش��ϰ� �� ��쿡�� ������ ������ ��ǵǴ� ������ �Ͽ� �������� ��� �ְ������� ��ĥ �ʿ� ���� ��� ���� �� ������� û���� �� �ִ�.<br/> "
		+ "1. �������� �ε� �Ǵ� �Ļ��<br/> "
		+ "2. �������� �㺸�� ������ �ε��꿡 ���Ͽ� ���������� ���õ� ���<br/> "
		+ "3. �������� �㺸�� ������ �ε����� �ŵ��� ���<br/><br/>"
		
		+"<b>��6�� (�����)</b><br/> �������� ���������κ��� ä�������� �ְ� �޾������� ��� �������� ��ȯ���� ���� ���� �������� �������� ���Ͽ� ��������μ�  "
		+ "��"+money+"���� �����ϱ�� �ϸ�, �̿ʹ� ������ ���������� �߻��� ���� ��ü�� ���Ͽ� ����Ͽ��� �Ѵ�.<br/><br/> "
		+ "<b>��7�� (�㺸�� ����)</b><br/>  �������� ���������� ����� �� ��Ÿ �δ�ä���� ��ȯ�� �㺸�ϱ� ���Ͽ� ���� �ε��꿡 ���Ͽ� ������Ǽ�����⸦ �����ϱ�� �ϸ� �̿� ���� ���δ��� �������� �ϱ�� �Ѵ�.<br/><br/> "
		+ "</div></div> <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/> "
		;

		String spc=" "
		+ "<article class='paper2'><input id=\"capBtn2\" type=\"button\" value=\"ĸ��\"/> <br/><br/> "
		+ "<b>��8�� (Ư�����)</b><br/>  ��� ��� �Ϲݻ��� �̿ܿ� �Ʒ� ������ Ư��������� ���ϸ�, �Ϲݻ��װ� Ư������� ����Ǵ� ��쿡�� Ư������� �켱�Ͽ� �����ϵ��� �Ѵ�.<br/> ";
		
		/*
		 * for (int i=1; i<spcContents.length(); i++) { 
		 * spc+=
		 * i+". "+spcContents+"</article>"; 
		 * }
		 */
		spc+="<br/><br/><br/>";
		
		String signArea = "";
		
		signArea +="�� ����� ������ �����ϱ� ���Ͽ� �� ���� ���� ���� ������ �� 1�뾿 �����Ѵ�.<br/><br/> "
					+ "<br/><div align=center> "+sf.format(nowTime) +"</div><br/><br/><br/><br/> "
					
					+ "<div align='right'> "
					+ "         ������  �� �� :"+creditor+" (��) "+"<span id=firstSign></span>" 
					+ "                <br/>�ֹε�Ϲ�ȣ :"+creditorResiNum+" "
					+ "                <br/>�� �� :"+creditorAddr+" "
					+ "<br/><br/> "
					+ "      ������  �� �� :"+deptor+" (��) "+"<span id=nextSign></span>"
					+ "      <br/>�ֹε�Ϲ�ȣ :"+deptorResiNum+" "
					+ "      <br/>�� �� :"+deptorAddr;
		
		
		return norm + spc+ signArea;
	}
}
