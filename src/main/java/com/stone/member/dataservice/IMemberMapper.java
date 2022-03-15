package com.stone.member.dataservice;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.stone.member.common.Member;

@Mapper
public interface IMemberMapper {

	@Select("select if(count(*)=1,1,0) from member where id=#{id}")
	// ("select count(*) from member where id=?");
	// select count(*) = 1, true, false)
	boolean ID가있는가(String id);

	@Insert("insert into member(profile, name, id, password, email, tel, gender) values(#{profile},#{name},#{id},#{password},#{email},#{tel},#{gender})")
	void 회원정보저장하다(Member 새회원);

	@Insert("insert into member(name, id, password, email, tel, gender) values(#{name},#{id},#{password},#{email},#{tel},#{gender})")
	void 회원정보저장하다profilenull(Member 새회원);

	@Select("select if(count(*)=1,1,0) from member where id=#{id} and password=#{password}")
	// ("select count(*) from member where id=? and password=?");
	boolean 회원인가(String id, String password);

	@Select("select * from member where id=#{id} and password=#{password}")
	// ("select no,name from member where id=? and password=?");
	@Results(value = { @Result(property = "no", column = "no"), @Result(property = "id", column = "id"),
			@Result(property = "password", column = "password"), @Result(property = "name", column = "name") })
	Member 찾다ID와PASSWORD(@Param("id") String id, @Param("password") String password);

	@Select("select * from member where no=#{no}")
	// ("select no,name,id from member where no=?");
	@Results(value = { @Result(property = "profile", column = "profile"), @Result(property = "name", column = "name"),
			@Result(property = "id", column = "id"), @Result(property = "password", column = "password"),
			@Result(property = "email", column = "email"), @Result(property = "tel", column = "tel"),
			@Result(property = "gender", column = "gender") })
	Member 회원번호를찾다(@Param("no") int 회원번호);

	@Update("update member set name=#{name},id=#{id},password=#{password},profile=#{profile},email=#{email},tel=#{tel},gender=#{gender} where no=#{no}")
	// ("update member set ");
	void 회원정보수정하다(Member 수정한정보);

	@Delete("delete from member where no=#{no}")
	// ("delete from member where no=?")
	void 회원탈퇴하다(@Param("no") int 회원번호);

	@Select("select * from member where id=#{id}")
	@Results(value = { @Result(property = "no", column = "no") })
	int 회원정보를찾다byid(@Param("id") String id);

/////////////////추가
	@Select("select * from member where tel=#{tel}")
	@Results(value = { @Result(property = "id", column = "id"), @Result(property = "name", column = "name") })
	Member 찾다번호로ID(Member tel);

/////////////////////////////추가
	@Select("select * from member where id=#{id} and tel=#{tel}")
	@Results(value = { @Result(property = "no", column = "no"), @Result(property = "name", column = "name"),
			@Result(property = "password", column = "password"), @Result(property = "email", column = "email"),
			@Result(property = "gender", column = "gender") })
	Member 찾다번호ID로(@Param("id") String id, @Param("tel") String tel);

///////////////////////////////추가
	@Update("update member set password='1234' where id=#{id} and tel=#{tel}")
	void 임시비밀번호업데이트하다(Member 임시비밀번호);

}
