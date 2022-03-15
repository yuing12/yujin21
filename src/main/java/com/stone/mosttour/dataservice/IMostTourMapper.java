package com.stone.mosttour.dataservice;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.stone.mosttour.common.Tourlocal;

@Mapper
public interface IMostTourMapper {

	
//	@Select("select MAX(tourlocal) as max from (select  tourlocal,count(tourlocal) from tourboard group by tourlocal having count(tourlocal) > 0) tourboard")
	@Select("select  tourlocal,count(tourlocal) as count from tourboard group by tourlocal having count(tourlocal) > 0 order by count desc limit 0,5")
	@Results(value = { @Result(property = "tourlocal", column = "tourlocal")})
	List<Tourlocal> 인기여행지이름();
}
