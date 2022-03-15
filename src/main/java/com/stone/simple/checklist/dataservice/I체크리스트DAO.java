package com.stone.simple.checklist.dataservice;

import com.stone.simple.checklist.common.CheckList;

public interface I체크리스트DAO {

	
	CheckList 체크리스트조회(int user_uno);
	
	void 체크리스트저장(CheckList cklist);


	void 체크리스트최초저장(int user_no);

}