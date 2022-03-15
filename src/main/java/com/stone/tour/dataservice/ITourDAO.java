package com.stone.tour.dataservice;

import java.util.List;

import com.stone.tour.common.Paging;
import com.stone.tour.common.ReplyVO;
import com.stone.tour.common.TourBoard;

public interface ITourDAO {
	
	void 저장하다(TourBoard 새투어게시물);
	
	Object[] 수집하다 (Paging pages);
	
	TourBoard 조회하다(int 게시물번호);
	
	void 조회수증가하다(int 게시물번호);
	
	void 변경하다(TourBoard 변경게시물);
	
	void 삭제하다(int 게시물번호);
	
	int 총투어게시물수를수집하다();

	Object[] 검색목록을수집하다(String searchtitle ,int pageNo,int amount);
	
	//댓글 기능
	public List<ReplyVO> getReplyList(int tno) throws Exception;

	public int saveReply(ReplyVO replyVO) throws Exception;
	
	public int updateReply(ReplyVO replyVO) throws Exception;
	
	public int deleteReply(int no) throws Exception;
	
}

