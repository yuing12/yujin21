package com.stone.board.service;

import java.util.List;

import com.stone.board.common.Board;
import com.stone.board.common.Paging;
import com.stone.board.common.Searching;

public interface I게시물업무자 {
	
	boolean 게시물작성이가능한가();
	void 게시물을등록하다(Board 새게시물);
	
	//List<Board> 게시물을수집하다();
	
//	Object[] 게시물목록을수집하다 (Paging pages);
	
	Board 게시물을조회하다(int 게시물번호);
	void 게시물조회수증가하다(int 게시물번호);
	Object[] 게시물검색목록을수집하다(String searchtitle ,int PageNo,int Amount);
	void 게시물을변경하다(Board 변경게시물);
	void 게시물을삭제하다(int 게시물번호);
int 총개시물수를구하다();
Object[] 게시물목록을수집하다(Paging cri);

 
}
