package com.stone.qnaboard.dataservice;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.stone.qnaboard.common.Qna;

@Mapper
public interface IQnaMapper {

	@Insert("insert into qna(no,contents) values(#{board.no},#{contents})") // 날짜는 자동으로 
	void 저장하다(Qna 답글);

	@Select("select * from qna where no=#{no}")
	@Results(value = { 
			@Result(property = "contents", column = "contents"),
			@Result(property = "rdate", column = "rdate") })
	Qna 찾다BY번호(@Param("no") int 답글번호);

	// 글자가 달라서 답글번호=no  얘는 얘다 #{no}=@Param("no")

	@Delete("delete * from qna where no=#{no}")
	void 삭제하다(@Param("no") int 게시물번호);

	@Update("update qna set contents=#{contents} where no=${no}")
	void 수정하다(Qna 답글);

}
