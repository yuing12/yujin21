package com.stone.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stone.board.common.Board;
import com.stone.board.common.Paging;
import com.stone.board.common.Searching;
import com.stone.board.dataservice.I게시물DAO;

@Service
public class 게시물업무자 implements I게시물업무자 {
	
	@Autowired I게시물DAO 게시물DAO;
	
	@Override
	public boolean 게시물작성이가능한가() {
		return true;
	}

	@Override
	public void 게시물을등록하다(Board 새게시물) {
		게시물DAO.저장하다(새게시물);
	}
/*
	@Override
	public List<Board> 게시물을수집하다() {
		return 게시물DAO.수집하다();
	}
*/
	
	@Override
	public Board 게시물을조회하다(int 게시물번호) {
		return 게시물DAO.조회하다(게시물번호);
	}

	@Override
	public void 게시물조회수증가하다(int 게시물번호) {
		게시물DAO.조회수증가하다(게시물번호);
	}

	@Override
	public void 게시물을변경하다(Board 변경한게시물) {
		게시물DAO.변경하다(변경한게시물);
	}

	@Override
	public void 게시물을삭제하다(int 게시물번호) {
		게시물DAO.삭제하다(게시물번호);
	}

	@Override
	public Object[] 게시물목록을수집하다(Paging pages) {
		return 게시물DAO.수집하다(pages);
	}

	@Override
	public int 총개시물수를구하다() {
		return 게시물DAO.총게시물수를수집하다();
	}

	@Override
	public Object[] 게시물검색목록을수집하다(String searchtitle,int getPageNo,int getAmount) {
		return 게시물DAO.검색목록을수집하다(searchtitle,getPageNo,getAmount);
	}

}
