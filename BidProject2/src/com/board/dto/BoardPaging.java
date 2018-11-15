package com.board.dto;

import com.board.dao.BoardDAO;

public class BoardPaging {
	int pg;// 현재페이지
	int pageBlock = 3;   // [이전][1][2][3][다음]
	int pageSize = 10;     // 1페이지당 5개씩 글 뿌리기
	StringBuffer pagingHTML;

	
	public BoardPaging() {
		
	}

	public void makePagingHTML(int total, int pg){
		pagingHTML=new StringBuffer();
		this.pg = pg;
		int totalA = total;//총글수			
		int totalP=(totalA+pageSize-1)/pageSize;//총페이지수
		int startPage=
				((int)((pg-1)/pageBlock))*pageBlock+1;		
		int endPage=startPage+pageBlock-1;
		if(endPage>totalP){
			endPage=totalP;
		}		
		
		//---------------------
		if(startPage>pageBlock){			
			pagingHTML.append("[<a href='qna.bd?pg="
		+(startPage-pageBlock)+"'>"+"이전</a>]");
		}		
		
		for(int i=startPage;i<=endPage;i++){
			if(pg==i){
				pagingHTML.append("[<a href='qna.bd?pg="
			+i+"'><font color=red>"+i+"</font></a>]");
			
			}else{
				pagingHTML.append("[<a href='qna.bd?pg="
			+i+"'>"+i+"</a>]");
			}
		}
				
		if(endPage<totalP){
			pagingHTML.append("[<a href='qna.bd?pg="
		+(startPage+pageBlock)+"'>"+"다음</a>]");
		}
	}

	public String getPagingHTML() {
		return pagingHTML.toString();
	}

	public int getPg() {
		return pg;
	}

	public int getPageBlock() {
		return pageBlock;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPg(int pg) {
		this.pg = pg;
	}

	public void setPageBlock(int pageBlock) {
		this.pageBlock = pageBlock;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public void setPagingHTML(StringBuffer pagingHTML) {
		this.pagingHTML = pagingHTML;
	}
	
	
}









