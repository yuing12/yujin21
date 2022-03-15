/* 작성자 : 조유진 
   공지사항 VO
   특징 : 관리자만 접근할 수 있다.*/

package com.stone.notice.common;

import java.sql.Date;

import com.stone.member.common.Member;

public class Notice {
	int no;
	String title;
	String contents;
	int user_no;
	/*
	 * Member writer;//객체간의 관계는 참조로 구현한다.
	 */	
	int views; //조회수
	Date date; //등록일
	
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

	
//	 public Member getWriter() { return writer; } public void setWriter(Member
//	 writer) { this.writer = writer; }
//	 
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	
	
}
