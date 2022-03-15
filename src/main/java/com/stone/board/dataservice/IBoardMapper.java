package com.stone.board.dataservice;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.web.bind.annotation.RequestParam;

import com.stone.board.common.Board;
import com.stone.board.common.Paging;
import com.stone.board.common.Searching;
import com.stone.member.common.Member;
import com.stone.qnaboard.common.Qna;

@Mapper
public interface IBoardMapper {
																												
	@Insert("insert into qnaboard(title, contents, writer) values(#{title},#{contents},#{writer.no})")
	void 게시물을저장하다(Board 새게시물);

	/*
	@Select("select * from board")
	@Results(value= {
			@Result(property="no",column="no"),
			@Result(property="title", column="title"),
			@Result(property="contents", column ="contents"),
			@Result(property="views", column="views"),
			@Result(property="writer", column="writer", one=@One(select="com.stone.member.dataservice.IMemberMapper.회원번호를찾다")),
			@Result(property ="rdate", column ="rdate"),
			@Result(property="qna", column="no", one=@One(select="anna.project.qnaboard.dataservice.IQnaMapper.찾다BY번호"))
	})
		List<Board> 모든게시물을수집하다();
	//property = common의 이름, column=table 열 이름 
	*/
	
	@Select("select count(*) from qnaboard")
	int 총게시물수를구하다();
	
	
	//@Select("select * FROM board order by no desc LIMIT #{pageNo}, #{amount}")
	@Select("select * FROM qnaboard order by rdate desc LIMIT #{pageNo}, #{amount}")
	//@Select("select * from board ORDERS LIMIT #{amount} OFFSET #{pageNo} ")
	@Results(value= {
			@Result(property="no",column="no"),
			@Result(property="title", column="title"),
			@Result(property="contents", column ="contents"),
			@Result(property="views", column="views"),                  
			@Result(property="writer", column="writer", one=@One(select="com.stone.member.dataservice.IMemberMapper.회원번호를찾다")),
			@Result(property="rdate", column="rdate"),
			@Result(property="qna", column="no", one=@One(select="com.stone.qnaboard.dataservice.IQnaMapper.찾다BY번호"))
	})
	List<Board> 수집하다(Paging pages);
	
	
	
	@Select("select * from qnaboard where no=#{no}")
	//("select no,title,contents,writer,views from board where no=?");
	@Results(value= {
			@Result(property="no",column="no"),
			@Result(property="title",column="title"),
			@Result(property="contents",column="contents"),
			@Result(property="views",column="views"),
			@Result(property="writer", column="writer", 
			one=@One(select="com.stone.member.dataservice.IMemberMapper.회원번호를찾다")),
			@Result(property="rdate", column="rdate"),
			@Result(property="qna", column="no", one=@One(select="com.stone.qnaboard.dataservice.IQnaMapper.찾다BY번호"))
		})
			Board 게시물조회하다(int 게시물번호);
	
	
	@Update("update qnaboard set views=views+1 where no=#{no}") //("update board set views=views+1 where no=?");
	void 게시물조회수증가하다(@Param("no") int 게시물번호);
	
	
	@Select("select * from qnaboard where no=#{no}")
	@Results(value= {
			@Result(property="no",column="no"),
			@Result(property="title",column="title"),
			@Result(property="contents",column="contents"),
			@Result(property="views",column="views"),
            @Result(property="writer", column="writer",
            one=@One(select="com.stone.member.dataservice.IMemberMapper.회원번호를찾다")),
			@Result(property="rdate", column="rdate"),
			@Result(property="qna", column="no", one=@One(select="com.stone.qnaboard.dataservice.IQnaMapper.찾다BY번호"))		
	})
	Board 게시물번호를찾다(int 게시물번호);
	
	@Update("update qnaboard set title=#{title},contents=#{contents} where no=#{no}")
	//("update board set title=?,contents=? where no=?");
	void 게시물변경하다(Board 변경한게시물);

	@Delete("delete from qnaboard where no=#{no}")
	//("delete from board where no=?")
	void 게시물삭제하다(int 게시물번호);
	
	
	
}
