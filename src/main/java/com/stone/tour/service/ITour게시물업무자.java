package com.stone.tour.service;

import java.util.List;

import com.stone.tour.common.Paging;
import com.stone.tour.common.ReplyVO;
import com.stone.tour.common.TourBoard;

public interface ITour게시물업무자 {
	
	boolean 투어게시물작성이가능한가();
	void 투어게시물을등록하다(TourBoard 새투어게시물);
	TourBoard 투어게시물을조회하다(int 투어게시물번호);
	void 투어게시물조회수증가하다(int 투어게시물번호);
	Object[] 투어게시물검색목록을수집하다(String searchtitle ,int PageNo,int Amount);
	void 투어게시물을변경하다(TourBoard 변경투어게시물);
	void 투어게시물을삭제하다(int 투어게시물번호);
	int 총투어게시물수를구하다();
	Object[] 투어게시물목록을수집하다(Paging cri);
 
	
	//댓글기능
	public List<ReplyVO> getReplyList(int tno) throws Exception;
	
	public int saveReply(ReplyVO replyVO) throws Exception;
	
	public int updateReply(ReplyVO replyVO) throws Exception;
	
	public int deleteReply(int no) throws Exception;

}
