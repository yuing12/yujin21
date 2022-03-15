/* 
   공지사항 I_DAO
   특징 : 관리자만 접근할 수 있다.*/

package com.stone.notice.dataservice;
 
import java.util.List;

import com.stone.notice.common.Notice;

public interface INoticeDAO {
	//저장
	public void save(Notice newNotice);
	//모든 공지사항 수집
	public List<Notice> collectAllNotices();
	
	//Board 조회하다(int 게시물번호);

	public Notice view(int noticeNo);
	
	//Board 조회수증가하다(int 게시물번호);
	public Notice increaseInViews(int noticeNo);
	
	//공지사항 중 보고 싶은 글 찾기
	public Notice findAnumber(int noticeNo);
	
	//변경
	public void permute(Notice changeNotice);
	//삭제
	public void delete(int noticeNo);
}
