package com.stone.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stone.member.dataservice.*;
import com.stone.member.common.Member;

@Service
public class 회원관리자 implements I회원관리자 {
	
	@Autowired I회원DAO 회원DAO;

	@Override
	public boolean ID사용가능여부판단하다(String id) {
		return !회원DAO.ID가있는가(id);
	}
	
	@Override
	public void 회원등록하다(Member 새회원) {
		회원DAO.회원정보저장하다(새회원);
	}
	/////////////아마 관리자에 있던거 업무자로 옮긴거 있을지도
}