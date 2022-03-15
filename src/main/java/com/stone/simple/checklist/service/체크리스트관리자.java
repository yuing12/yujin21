package com.stone.simple.checklist.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stone.simple.checklist.common.CheckList;
import com.stone.simple.checklist.dataservice.I체크리스트DAO;

@Service
public class 체크리스트관리자 implements I체크리스트관리자 {

	@Autowired I체크리스트DAO 체크리스트DAO;
	
	@Override
	public void 체크리스트저장(CheckList cklist) {
		체크리스트DAO.체크리스트저장(cklist);
	}
	@Override
	public CheckList 체크리스트조회(int user_uno) {
		return 체크리스트DAO.체크리스트조회(user_uno);
	}
	@Override
	public void 회원가입시체크리스트생성(int user_no) {
		
		체크리스트DAO.체크리스트최초저장(user_no);
	}

	
}
