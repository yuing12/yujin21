package com.stone.qnaboard.dataservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.stone.qnaboard.common.Qna;

@Repository
public class QnaDAO implements IQnaDAO {

	@Autowired IQnaMapper qnaMapper;
	
	@Transactional
	@Override
	public void 저장하다(Qna 답글) {
		qnaMapper.저장하다(답글);

	}
	@Transactional
	@Override
	public Qna 찾다BY번호(int 답글번호) {
		return qnaMapper.찾다BY번호(답글번호);
	}
	@Transactional
	@Override
	public void 삭제하다(int 게시물번호) {
		qnaMapper.삭제하다(게시물번호);
		
	}
	@Transactional
	@Override
	public void 수정하다(Qna 답변) {
		qnaMapper.수정하다(답변);
		
	}

}
