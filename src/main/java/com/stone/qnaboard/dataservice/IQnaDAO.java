package com.stone.qnaboard.dataservice;


import com.stone.qnaboard.common.Qna;


public interface IQnaDAO {
	
	void 저장하다(Qna 답글);
	Qna 찾다BY번호(int 답글번호);
	void 삭제하다(int 게시물번호);
	void 수정하다(Qna 답글);

}
