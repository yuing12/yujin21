package com.stone.tour.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stone.tour.common.Paging;
import com.stone.tour.common.ReplyVO;
import com.stone.tour.common.TourBoard;
import com.stone.tour.dataservice.ITourDAO;

@Service
public class Tour게시물업무자 implements ITour게시물업무자 {
	
	@Autowired ITourDAO tourDAO;
	
	
	@Override
	public boolean 투어게시물작성이가능한가() {
		return true;
	}

	@Override
	public void 투어게시물을등록하다(TourBoard 새투어게시물) {
		tourDAO.저장하다(새투어게시물);
	}
	@Override
	public TourBoard 투어게시물을조회하다(int 투어게시물번호) {
		return tourDAO.조회하다(투어게시물번호);
	}

	@Override
	public void 투어게시물조회수증가하다(int 투어게시물번호) {
		tourDAO.조회수증가하다(투어게시물번호);
	}

	@Override
	public void 투어게시물을변경하다(TourBoard 변경한투어게시물) {
		tourDAO.변경하다(변경한투어게시물);
	}

	@Override
	public void 투어게시물을삭제하다(int 투어게시물번호) {
		tourDAO.삭제하다(투어게시물번호);
	}

	@Override
	public Object[] 투어게시물목록을수집하다(Paging pages) {
		return tourDAO.수집하다(pages);
	}

	@Override
	public int 총투어게시물수를구하다() {
		return tourDAO.총투어게시물수를수집하다();
	}

	@Override
	public Object[] 투어게시물검색목록을수집하다(String searchtitle,int getPageNo,int getAmount) {
		return tourDAO.검색목록을수집하다(searchtitle,getPageNo,getAmount);
	}

	//댓글기능
	
	@Override
	public List<ReplyVO> getReplyList(int tno) throws Exception {
		return tourDAO.getReplyList(tno);
	}
	
	@Override
	public int saveReply(ReplyVO replyVO) throws Exception {

		return tourDAO.saveReply(replyVO);
	}
	
	@Override
	public int updateReply(ReplyVO replyVO) throws Exception {
		return tourDAO.updateReply(replyVO);
	}
	
	@Override
	public int deleteReply(int no) throws Exception {
		return tourDAO.deleteReply(no);
	}
	
	

}
