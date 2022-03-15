/* 작성자 : 조유진 
   공지사항 I_Service
   특징 : 관리자만 접근할 수 있다.*/

package com.stone.notice.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.stone.notice.common.Notice;

public interface INotice_Manager {
	//작성가능한가?
	public  boolean RegistrationPreparation();	
	
	//등록
	public void Enrollment(Notice newNotice);
	
	//수집
	public List<Notice> allList();
	
	//Board 조회하다(int 게시물번호);
	public Notice View(int noticeNo);
	
	//Board 조회수증가하다(int 게시물번호);
	public Notice increaseInViews(int noticeNo);
	
	
	//Prepare for change : 변경준비
	public Notice prepareForChange(int noticeNo);
	
	//Permute : 변경하다
	public void  permute(Notice changeNotice);
	
	//삭제하다
	public void delete(int noticeNo) ;
}
