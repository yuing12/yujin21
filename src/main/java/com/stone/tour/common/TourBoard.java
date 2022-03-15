package com.stone.tour.common;

import java.sql.Date;

import com.stone.member.common.Member;
import com.stone.qnaboard.common.Qna;

public class TourBoard {
	
	int no;
	String title;
	String contents;
	Member writer;
	int views;
	
	Date rdate;
	int count; 
	String tourlocal;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Member getWriter() {
		return writer;
	}
	public void setWriter(Member writer) {
		this.writer = writer;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getTourlocal() {
		return tourlocal;
	}
	public void setTourlocal(String tourlocal) {
		this.tourlocal = tourlocal;
	}

}
