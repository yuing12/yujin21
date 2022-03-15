package com.stone.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stone.member.dataservice.I회원DAO;
import com.stone.member.common.Member;

@Service
public class 회원업무자 implements I회원업무자 {
	
	@Autowired I회원DAO 회원DAO;

	@Override
	public boolean 등록된회원인가(String id, String password) {
		return 회원DAO.회원인가(id, password);
	}
	@Override
	public Member 회원번호찾다(int 회원번호) {
		return 회원DAO.찾다회원번호(회원번호);
	}
	@Override
	public Member 회원조회하다(String id, String password) {
		return 회원DAO.찾다ID와PASSWORD(id, password);
	}

	@Override
	public Member 회원정보수정준비하다(int 회원번호) {
		return 회원DAO.찾다회원번호(회원번호);
	}
	
	@Override
	public void 회원정보수정하다(Member 수정한정보) {
		Member 기존정보= 회원번호찾다(수정한정보.getNo());
		if(수정한정보.getName()!=null) {
			기존정보.setName(수정한정보.getName());
		}
		if(수정한정보.getId()!=null) {
			기존정보.setId(수정한정보.getId());
		}
		if(수정한정보.getPassword()!=null) {
			기존정보.setPassword(수정한정보.getPassword());
		}
		if(수정한정보.getEmail()!=null) {
			기존정보.setEmail(수정한정보.getEmail());
		}
		if(수정한정보.getGender()!=null) {
			기존정보.setGender(수정한정보.getGender());
		}
		if(수정한정보.getProfile()!=null) {
			기존정보.setProfile(수정한정보.getProfile());
		}
		if(수정한정보.getTel()!=null) {
			기존정보.setTel(수정한정보.getTel());
		}
		회원DAO.수정하다(기존정보);
	}
	
	public void 회원탈퇴하다(int 회원번호) {
		회원DAO.탈퇴하다(회원번호);
	}
	
	@Override
	public int 회원정보를찾다byid(String id) {
		return 회원DAO.회원정보를찾다byid(id);
	}
	//////////////////////////////추가
	@Override
	public Member 번호로조희하다(Member tel) {
		return 회원DAO.찾다번호로ID(tel);
	}	
	//////////////////////////////추가
	@Override
	public Member 번호ID로조희하다(String id, String tel) {
		return 회원DAO.찾다번호ID로(id, tel);
	}
	//////////////////////////////추가
	@Override
	public void 임시비밀번호업데이트(Member 찾는회원) {
		회원DAO.임시비밀번호발급하다(찾는회원);
	}
	
}
