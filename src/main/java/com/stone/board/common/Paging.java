package com.stone.board.common;

public class Paging {
	
	int pageNo; //현재페이지 
	int amount; // 몇개씩보여줄지 
	
	public Paging() {
	}
	
	public Paging (int pageNo, int amount) {
		this.pageNo = pageNo;
		this.amount =amount;
		
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}
	

}
