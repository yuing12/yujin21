package com.stone.qnaboard.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stone.qnaboard.common.Qna;
import com.stone.qnaboard.dataservice.IQnaDAO;

@Service
public class 답글업무자 implements I답글업무자 {
@Autowired IQnaDAO qnaDAO;
	
	@Override
	public void 답글달다(Qna 답글) {
		qnaDAO.저장하다(답글);

	}

	@Override
	public void 답글을수정하다(Qna 답글) {
		qnaDAO.수정하다(답글);
		
	}

	@Override
	public void 답글을삭제하다(int 답글번호) {
		qnaDAO.삭제하다(답글번호);
		
	}

}
