package com.stone.mosttour.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stone.mosttour.common.Tourlocal;
import com.stone.mosttour.dataservice.I모스트투어DAO;

@Service
public class 모스트투어매니저 implements I모스트투어매니저 {

	@Autowired I모스트투어DAO 모스트투어DAO;
	
	@Override
	public List<Tourlocal> 인기여행지이름() {
	
		return 모스트투어DAO.인기여행지이름();
	}

}
