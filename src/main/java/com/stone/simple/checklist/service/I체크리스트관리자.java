package com.stone.simple.checklist.service;

import com.stone.simple.checklist.common.CheckList;

public interface I체크리스트관리자 {

	CheckList 체크리스트조회(int user_uno);
	
	void 체크리스트저장(CheckList cklist);

	void 회원가입시체크리스트생성(int user_no);

}