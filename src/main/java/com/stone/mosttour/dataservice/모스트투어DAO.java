package com.stone.mosttour.dataservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.stone.mosttour.common.Tourlocal;

@Repository
public class 모스트투어DAO implements I모스트투어DAO {

	@Autowired 
	IMostTourMapper mostTourMapper;
	
	
	@Transactional
	@Override
	public List<Tourlocal> 인기여행지이름() {
		return mostTourMapper.인기여행지이름();
	}

}
