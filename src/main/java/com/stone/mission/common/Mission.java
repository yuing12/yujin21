/* 작성자 : 조유진
 미션창 : 미션 인증을 할 수 있는 기능
*/


package com.stone.mission.common;

import java.sql.Date; 

import org.springframework.web.multipart.MultipartFile;

import com.stone.member.common.Member;

public class Mission {
	
	int no;
	String title;
	String contents;
	Member writer;
	int views;
	Date date;
	MultipartFile profileFile;//업로드된 파일 매핑 용
	byte[] profile; //프로필 사진의 자체 의미
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Member getWriter() {
		return writer;
	}
	public void setWriter(Member writer) {
		this.writer = writer;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	public MultipartFile getProfileFile() {
		return profileFile;
	}
	public void setProfileFile(MultipartFile profileFile) {
		this.profileFile = profileFile;
	}
	
	public byte[] getProfile() {
		try {
		if(profileFile!=null && profile==null) {
			//업로드된 파일을 byte 배열 형태로 준다
			profile = profileFile.getBytes();
		
		}
		}catch(Exception ex) {ex.getStackTrace();}
		return profile;
	}
	public void setProfile(byte[] profile) {
		this.profile = profile;
	}

}
