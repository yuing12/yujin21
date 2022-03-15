package com.stone.tour.common;

import java.sql.Date;

public class ReplyVO {
	
	private int no;
	private int tno;
	private String content;
	private String writername;
	private Date reg_date;
	private java.util.Date edit_date;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getTno() {
		return tno;
	}
	public void setTno(int tno) {
		this.tno = tno;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWritername() {
		return writername;
	}
	public void setWritername(String writername) {
		this.writername = writername;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public java.util.Date getEdit_date() {
		return edit_date;
	}
	public void setEdit_date(java.util.Date edit_date) {
		this.edit_date = edit_date;
	}
	
}
