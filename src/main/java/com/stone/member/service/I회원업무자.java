package com.stone.member.service;

import com.stone.member.common.Member;

public interface I회원업무자 {
	
	boolean 등록된회원인가(String id,String password);
	Member 회원조회하다(String id,String password);
	Member 회원번호찾다(int no);
	Member 회원정보수정준비하다(int 회원번호);
	void 회원정보수정하다(Member 수정한정보);
	void 회원탈퇴하다(int 회원번호);
	int 회원정보를찾다byid(String id);
	//////////////////////////////추가
	Member 번호로조희하다(Member tel);
	//////////////////////////////추가
	void 임시비밀번호업데이트(Member 찾는회원);
	//////////////////////////////추가
	Member 번호ID로조희하다(String id, String tel);
}
