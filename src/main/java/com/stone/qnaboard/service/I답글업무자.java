package com.stone.qnaboard.service;

import com.stone.qnaboard.common.Qna;

public interface I답글업무자 {
	
	void 답글달다(Qna 답글);
	void 답글을수정하다(Qna 답글);
	void 답글을삭제하다(int 답글번호);
	

}
