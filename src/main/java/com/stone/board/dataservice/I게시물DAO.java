package com.stone.board.dataservice;

import com.stone.board.common.Board;
import com.stone.board.common.Paging;
import com.stone.board.common.Searching;

public interface I게시물DAO {
	
	void 저장하다(Board 새게시물);
	
	//List<Board> 수집하다();
	
	Object[] 수집하다 (Paging pages);
	//Object[] 수집하다 ();
	//Object[] 수집하다 (int 시작게시물일련번호, int 최대수집크기);
	
	Board 조회하다(int 게시물번호);
	
	void 조회수증가하다(int 게시물번호);
	
	void 변경하다(Board 변경게시물);
	
	void 삭제하다(int 게시물번호);
	
	int 총게시물수를수집하다();

	Object[] 검색목록을수집하다(String searchtitle ,int pageNo,int amount);
}

