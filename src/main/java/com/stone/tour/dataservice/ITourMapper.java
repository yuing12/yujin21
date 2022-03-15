package com.stone.tour.dataservice;

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

import com.stone.tour.common.Paging;
import com.stone.tour.common.TourBoard;

@Mapper
public interface ITourMapper {
																												
	@Insert("insert into tourboard(title, contents, writer,tourlocal) values(#{title},#{contents},#{writer.no},#{tourlocal})")
	void 투어게시물을저장하다(TourBoard 새투어게시물);

	@Select("select count(*) from tourboard")
	int 투어총게시물수를구하다();
	
	
//	@Select("select * FROM tourboard order by rdate desc LIMIT #{pageNo}, #{amount}")
	@Select("SELECT a.no,a.title,a.contents,a.views,a.writer,a.rdate,(SELECT COUNT(no) FROM tourreply WHERE tno = a.no) AS count FROM tourboard a ORDER BY a.rdate DESC LIMIT #{pageNo}, #{amount}")
	@Results(value= {
			@Result(property="no",column="no"),
			@Result(property="title", column="title"),
			@Result(property="contents", column ="contents"),
			@Result(property="views", column="views"),                  
			@Result(property="writer", column="writer", one=@One(select="com.stone.member.dataservice.IMemberMapper.회원번호를찾다")),
			@Result(property="rdate", column="rdate"),
			@Result(property ="count", column="count")
	})
	List<TourBoard> 투어수집하다(Paging pages);
	
	
	
	@Select("select * from tourboard where no=#{no}")
	//("select no,title,contents,writer,views from board where no=?");
	@Results(value= {
			@Result(property="no",column="no"),
			@Result(property="title",column="title"),
			@Result(property="contents",column="contents"),
			@Result(property="views",column="views"),
			@Result(property="writer", column="writer", 
			one=@One(select="com.stone.member.dataservice.IMemberMapper.회원번호를찾다")),
			@Result(property="rdate", column="rdate"),
		})
			TourBoard 투어게시물조회하다(int 투어게시물번호);
	
	
	@Update("update tourboard set views=views+1 where no=#{no}") //("update board set views=views+1 where no=?");
	void 투어게시물조회수증가하다(@Param("no") int 투어게시물번호);
	
	
	@Select("select * from tourboard where no=#{no}")
	@Results(value= {
			@Result(property="no",column="no"),
			@Result(property="title",column="title"),
			@Result(property="contents",column="contents"),
			@Result(property="views",column="views"),
            @Result(property="writer", column="writer",
            one=@One(select="com.stone.member.dataservice.IMemberMapper.회원번호를찾다")),
			@Result(property="rdate", column="rdate")
	})
	TourBoard 투어게시물번호를찾다(int 투어게시물번호);
	
	@Update("update tourboard set title=#{title},contents=#{contents} where no=#{no}")
	//("update board set title=?,contents=? where no=?");
	void 투어게시물변경하다(TourBoard 투어변경한게시물);

	@Delete("delete from tourboard where no=#{no}")
	//("delete from board where no=?")
	void 투어게시물삭제하다(int 투어게시물번호);
	
	
	
	
}
