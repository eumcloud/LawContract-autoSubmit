package com.web.common;

public class ContractTools {
	
	public static String getNavi(int totalPage, int rowsPerPage, String url, int pageNumber) {
		String result="";
		
		int blockCnt = totalPage/rowsPerPage;
		
		if(totalPage%rowsPerPage>0)blockCnt++;
		
		if(pageNumber>1)result+=("<a href="+url+(pageNumber-1)+ ">[이전]</a>");
		for(int i=1;i<=blockCnt;i++){
			if(pageNumber==i)	result+=("<b>");
			result+=("<a href="+url+i+ ">["+i+"]</a>");
			if(pageNumber==i)	result+=("</b>");
		}
		if(pageNumber<blockCnt)result+=("<a href="+url+(pageNumber+1)+ ">[다음]</a>");
		return result;
	}

}
