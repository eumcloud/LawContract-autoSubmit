package com.web.contractReady;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.web.DTO.Condition;

public class contractSet {

	
	public String Contract(String creditor, String deptor, String money, String interest, String deadline, String spcContents, String creditorResiNum, String creditorAddr, String deptorResiNum, String deptorAddr) {
		
		Date nowTime = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 ");
		String norm = "";
		Condition con = new Condition();
		
		norm+= "<h2 id='title' align=\"center\">금전소비대차 계약서</h2>"
		
		+ "<br/><br/><div class='contetns'> "
		+ "  채권자 "+creditor+" 을「갑」이라 하고, 채무자 "+deptor+"을「을」로 하여 「갑」과「을」 간에 다음과 같이 금전소비대차계약을 체결한다.<br/><br/><br/> "
		+ "<b>제1조 (금전소비대차)</b><br/>  「갑」은 「을」에게 금"+money+"원을 대여하고, 「을」은 이를 차용한다.<br/><br/> "
		+ "<b>제2조 (이자) </b><br/> 위의 차용금에 대한 이자는 없는 것으로 하되 제3조 정한 기한의 익일부터 실질 변제시 까지 연"+interest+"%의 연체이자를 지급하여야 한다.<br/><br/> "
		+ "<b>제3조 (변제기한)</b><br/>  「을」의「갑」에 대한 위 차용금의 변제기한은 "+deadline+" 까지로 한다.<br/><br/> "
		+ "<b>제4조 (변제장소)</b><br/>  「을」의「갑」에 대한 변제 장소는 「갑」의 주소지로 한다.<br/><br/> "
		+ "<b>제5조 (기한의 이익 상실)</b><br/>  「을」이 변제일 까지의 사이에 다음 각호에 해당하게 될 경우에는 기한의 이익이 상실되는 것으로 하여 「갑」은 어떠한 최고절차도 거칠 필요 없이 즉시 원금 및 위약금을 청구할 수 있다.<br/> "
		+ "1. 「을」의 부도 또는 파산시<br/> "
		+ "2. 「을」이 담보로 제공한 부동산에 대하여 강제집행이 개시된 경우<br/> "
		+ "3. 「을」이 담보로 제공한 부동산을 매도한 경우<br/><br/>"
		
		+"<b>제6조 (위약금)</b><br/> 「을」이 「갑」으로부터 채무이행의 최고를 받았음에도 즉시 원리금을 상환하지 않을 때는 「을」은 「갑」에 대하여 위약금으로서  "
		+ "금"+money+"원을 지급하기로 하며, 이와는 별도로 「갑」에게 발생한 손해 일체에 대하여 배상하여야 한다.<br/><br/> "
		+ "<b>제7조 (담보의 제공)</b><br/>  「을」은 「갑」에게 차용금 및 기타 부대채무의 상환을 담보하기 위하여 말미 부동산에 대하여 근저당권설정등기를 이행하기로 하며 이에 대한 비용부담은 「을」이 하기로 한다.<br/><br/> "
		+ "</div></div> <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/> "
		;

		String spc=" "
		+ "<article class='paper2'><input id=\"capBtn2\" type=\"button\" value=\"캡쳐\"/> <br/><br/> "
		+ "<b>제8조 (특약사항)</b><br/>  상기 계약 일반사항 이외에 아래 내용을 특약사항으로 정하며, 일반사항과 특약사항이 상충되는 경우에는 특약사항을 우선하여 적용하도록 한다.<br/> ";
		
		/*
		 * for (int i=1; i<spcContents.length(); i++) { 
		 * spc+=
		 * i+". "+spcContents+"</article>"; 
		 * }
		 */
		spc+="<br/><br/><br/>";
		
		String signArea = "";
		
		signArea +="본 계약의 성립을 증명하기 위하여 본 증서 각자 서명 날인한 후 1통씩 보관한다.<br/><br/> "
					+ "<br/><div align=center> "+sf.format(nowTime) +"</div><br/><br/><br/><br/> "
					
					+ "<div align='right'> "
					+ "         「갑」  성 명 :"+creditor+" (인) "+"<span id=firstSign></span>" 
					+ "                <br/>주민등록번호 :"+creditorResiNum+" "
					+ "                <br/>주 소 :"+creditorAddr+" "
					+ "<br/><br/> "
					+ "      「을」  성 명 :"+deptor+" (인) "+"<span id=nextSign></span>"
					+ "      <br/>주민등록번호 :"+deptorResiNum+" "
					+ "      <br/>주 소 :"+deptorAddr;
		
		
		return norm + spc+ signArea;
	}
}
