package com.web.common;

public class ContractTools {
	
	public static String getNavi(int totalPage, int rowsPerPage, String url, int pageNumber) {
		String result="";
		
		int blockCnt = totalPage/rowsPerPage;
		
		if(totalPage%rowsPerPage>0)blockCnt++;
		
		if(pageNumber>1)
			result+=("<li class='page-item'><a class='page-link'href="+url+(pageNumber-1)+ ">이전</a></li>");
		for(int i=1;i<=blockCnt;i++){
			if(pageNumber==i)	result+=("<b>");
			result+=("<li class='page-item'><a class='page-link' href="+url+i+ ">"+i+"</a></li>");
			if(pageNumber==i)	result+=("</b>");
		}
		if(pageNumber<blockCnt)
			result+=("<li class='page-item'><a class='page-link' href="+url+(pageNumber+1)+">다음</a></li>");
		System.out.println(result);
		return result;
	}

}
