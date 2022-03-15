/* 작성자 : 조유진 
   공지사항 Service
   특징 : 관리자만 접근할 수 있다.*/

package com.stone.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stone.notice.common.Notice;
import com.stone.notice.dataservice.INoticeDAO;
	

@Service
public class Notice_Manager implements INotice_Manager {
    @Autowired INoticeDAO noticeDAO;

	//작성가능한가?
	@Override
	public boolean RegistrationPreparation() {
		return true;
	}

	//등록
	@Override
	public void Enrollment(Notice newNotice) {
		noticeDAO.save(newNotice);
		
	}

	//수집
	@Override
	public List<Notice> allList() {
		return noticeDAO.collectAllNotices();
	}

	//Board 조회하다(int 게시물번호);
	@Override
	public Notice View(int noticeNo) {
		return noticeDAO.view(noticeNo);
	}

	//Board 조회수증가하다(int 게시물번호)
	@Override
	public Notice increaseInViews(int noticeNo) {
		return noticeDAO.increaseInViews(noticeNo);
	}

	//Prepare for change : 변경준비
	@Override
	public Notice prepareForChange(int noticeNo) {
		return noticeDAO.findAnumber(noticeNo);
	}

	//Permute : 변경하다
	@Override
	public void permute(Notice changeNotice) {
		noticeDAO.permute(changeNotice);
		
	}

	//삭제하다
	@Override
	public void delete(int noticeNo) {
		noticeDAO.delete(noticeNo);
		
	}

    


	 
}
