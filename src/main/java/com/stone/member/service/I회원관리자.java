package com.stone.member.service;

import com.stone.member.common.Member;

public interface I회원관리자 {
	
	boolean ID사용가능여부판단하다(String id);
	void 회원등록하다(Member 새회원);
/////////////////////아마관리자에있던거 업무자로 옮겼을지도
}
