package com.stone.qnaboard.common;

import java.sql.Date;

import com.stone.board.common.Board;

//답변달기 
public class Qna {
	
	Board board; //board no 참조 
	String contents;
	Date rdate;
	public Board getBoard() {
		return board;
	}
	public void setBoard(Board board) {
		this.board = board;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	

}
