package com.stone.member.dataservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.stone.member.common.Member;

@Repository
public class 회원DAO implements I회원DAO {

	@Autowired
	IMemberMapper memberMapper;

	@Transactional
	@Override
	public boolean ID가있는가(String id) {
		return memberMapper.ID가있는가(id);
	}

	@Transactional
	@Override
	public void 회원정보저장하다(Member 새회원) {
		if (새회원.getProfileFile().isEmpty()) {
			memberMapper.회원정보저장하다profilenull(새회원);
		} else {
			memberMapper.회원정보저장하다(새회원);
		}
	}

	@Transactional
	@Override
	public boolean 회원인가(String id, String password) {
		return memberMapper.회원인가(id, password);
	}

	@Transactional
	@Override
	public Member 찾다ID와PASSWORD(String id, String password) {
		return memberMapper.찾다ID와PASSWORD(id, password);
	}

	@Transactional
	@Override
	public Member 찾다회원번호(int 회원번호) {
		return memberMapper.회원번호를찾다(회원번호);
	}

	@Transactional
	@Override
	public void 수정하다(Member 수정한정보) {
		memberMapper.회원정보수정하다(수정한정보);
	}

	@Transactional
	@Override
	public void 탈퇴하다(int 회원번호) {
		memberMapper.회원탈퇴하다(회원번호);
	}

	@Transactional
	@Override
	public int 회원정보를찾다byid(String id) {
		return memberMapper.회원정보를찾다byid(id);
	}

///////////////////////////////추가
	@Transactional
	@Override
	public Member 찾다번호로ID(Member tel) {
		return memberMapper.찾다번호로ID(tel);
	}

//////////////////////////////추가
	@Transactional
	@Override
	public Member 찾다번호ID로(String id, String tel) {
		return memberMapper.찾다번호ID로(id, tel);
	}

//////////////////////////////추가
	@Transactional
	@Override
	public void 임시비밀번호발급하다(Member 찾는회원) {
		memberMapper.임시비밀번호업데이트하다(찾는회원);
	}
}
