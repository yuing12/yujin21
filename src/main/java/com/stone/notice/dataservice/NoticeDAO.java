/* 
   공지사항 DAO
   특징 : 관리자만 접근할 수 있다.*/

package com.stone.notice.dataservice; 


import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.stone.notice.common.*;



@Repository
public class NoticeDAO implements INoticeDAO {
	@Autowired INoticeMapper noticeMapper;

	//저장
	@Transactional
	@Override
	public void save(Notice newNotice) {
		noticeMapper.save(newNotice);
		
	}

	//수집
	@Transactional
	@Override
	public List<Notice> collectAllNotices() {
		return noticeMapper.collectAllNotices();
	}

	//조회
	@Transactional
	@Override
	public Notice view(int noticeNo) {
		return noticeMapper.view(noticeNo);
	}

	//조회수증가
	@Transactional
	@Override
	public Notice increaseInViews(int noticeNo) {
		return noticeMapper.increaseInViews(noticeNo);
	}

	//번호를찾다
	@Transactional
	@Override
	public Notice findAnumber(int noticeNo) {
		return noticeMapper.findAnumber(noticeNo);
	}
	@Transactional
	@Override
	public void permute(Notice changeNotice) {
		noticeMapper.permute(changeNotice);
		
	}
	@Transactional
	@Override
	public void delete(int noticeNo) {
		noticeMapper.delete(noticeNo);
		
	}
	
}
