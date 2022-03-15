package com.stone.member.dataservice;

import com.stone.member.common.Member;

public interface I회원DAO {
	
	boolean ID가있는가 (String id);
	void 회원정보저장하다 (Member 새회원);
	boolean 회원인가 (String id,String password);
	Member 찾다ID와PASSWORD (String id,String password);
	Member 찾다회원번호 (int 회원번호);
	void 수정하다(Member 수정한정보);
	void 탈퇴하다(int 회원번호);
	int 회원정보를찾다byid(String id);
//////////////////////////////추가
Member 찾다번호로ID(Member tel);
//////////////////////////////추가
Member 찾다번호ID로(String id, String tel);
//////////////////////////////추가
void 임시비밀번호발급하다(Member 찾는회원);
}
