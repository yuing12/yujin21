package com.stone.tour.dataservice;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.stone.member.common.Member;
import com.stone.member.dataservice.IMemberMapper;
import com.stone.tour.common.Paging;
import com.stone.tour.common.ReplyVO;
import com.stone.tour.common.TourBoard;

import config.DBConfig;

@Repository
public class TourDAO implements ITourDAO {
	
	@Autowired ITourMapper tourMapper;
	@Autowired IMemberMapper membermapper;
	
	@Transactional
	@Override
	public void 저장하다(TourBoard 새투어게시물) {
		tourMapper.투어게시물을저장하다(새투어게시물);
		
	}
	
	@Transactional
	@Override
	public Object[] 수집하다(Paging pages) {
		
		int 총게시물수=tourMapper.투어총게시물수를구하다();
		List<TourBoard> tourboards = tourMapper.투어수집하다(pages);
		return new Object[] {tourboards,총게시물수};//리스트, 숫자 
	}

	
	@Transactional
	@Override
	public TourBoard 조회하다(int 게시물번호) {
		TourBoard tourboard =tourMapper.투어게시물조회하다(게시물번호);
		return tourboard;
	}

	@Transactional
	@Override
	public void 변경하다(TourBoard 변경게시물) {
		tourMapper.투어게시물변경하다(변경게시물);

	}
	
	@Transactional
	@Override
	public void 삭제하다(int 투어게시물번호) {
		tourMapper.투어게시물삭제하다(투어게시물번호);
	}

	@Override
	public int 총투어게시물수를수집하다() {
		return tourMapper.투어총게시물수를구하다();
	}

	@Transactional
	@Override
	public void 조회수증가하다(int 투어게시물번호) {
		tourMapper.투어게시물조회수증가하다(투어게시물번호);
//		boardMapper.게시물조회하다(게시물번호);
	}
	
	
	@Override
	public Object[] 검색목록을수집하다(String searchtitle, int pageNo,int amount) {
		Connection con = null;
		List<TourBoard> 게시물들 = new ArrayList<TourBoard>();
		int 수집된게시물수=0;
	    try{
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	        con=DriverManager.getConnection(
	        		DBConfig.DBURL, // DB URL
	        		DBConfig.ID,DBConfig.PASSWORD);  // USER_NAME과 PASSWORD	 
	        PreparedStatement 명령자2=con.prepareStatement("select count(*) from (select @rownum:=@rownum+1 as rn,no,title,contents,views,writer,rdate from tourboard where title like '%"+searchtitle+"%' order by no desc) tourboard;");
	        ResultSet 수집된게시물수표 =명령자2.executeQuery();
	        수집된게시물수표.next();
	        수집된게시물수 = 수집된게시물수표.getInt(1);
	        수집된게시물수표.close();
	        명령자2.close();
	     
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(DBConfig.DBURL, DBConfig.ID, DBConfig.PASSWORD);
			String sql = "select no, title, contents, writer,views,rdate from tourboard where title like '%"+searchtitle+"%' order by no desc limit ?,?";
			PreparedStatement 명령자 = con.prepareStatement(sql);
			명령자.setInt(1, pageNo-1);//시작게시물일련번호-1:zero-base로 바꾸기위해 시작게시물일련번호에서 1뺌
	        명령자.setInt(2, amount);
			ResultSet 게시물표 = 명령자.executeQuery();
			while(게시물표.next()) {
					int no = 게시물표.getInt("no");
					String title = 게시물표.getString("title");
					String contents = 게시물표.getString("contents");
					int writer = 게시물표.getInt("writer");
					int views = 게시물표.getInt("views");
					Date date = 게시물표.getDate("rdate");
					Member 회원정보 = new Member();
					회원정보 = membermapper.회원번호를찾다(writer);
					TourBoard 게시물 = new TourBoard();
					게시물.setNo(no);
					게시물.setTitle(title);
					게시물.setContents(contents);
					게시물.setWriter(회원정보);
					게시물.setViews(views);
					게시물.setRdate(date);
					게시물들.add(게시물);
			}
			명령자.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	    Object  게시물들과수집된게시물수[]= {게시물들, 수집된게시물수};
		return 게시물들과수집된게시물수;
	}

	
	//댓글기능
	
	@Override
	public List<ReplyVO> getReplyList(int tno) throws Exception {
		Connection con = null;
		List<ReplyVO> 댓글들 = new ArrayList<ReplyVO>();
	    try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(DBConfig.DBURL, DBConfig.ID, DBConfig.PASSWORD);
			String sql = "select no, tno, content, writername,reg_date,edit_date from tourreply where tno =? order by reg_date desc";
			PreparedStatement 명령자 = con.prepareStatement(sql);
			명령자.setInt(1, tno);
			ResultSet 게시물표 = 명령자.executeQuery();
			while(게시물표.next()) {
					int no = 게시물표.getInt("no");
					int tno1 = 게시물표.getInt("tno");
					String content = 게시물표.getString("content");
					String writername = 게시물표.getString("writername");
					Date reg_date = 게시물표.getDate("reg_date");
					Date edit_date = 게시물표.getDate("edit_date");
					ReplyVO 댓글 = new ReplyVO();
					댓글.setNo(no);
					댓글.setTno(tno1);
					댓글.setContent(content);
					댓글.setWritername(writername);
					댓글.setReg_date(reg_date);
					댓글.setEdit_date(edit_date);
					댓글들.add(댓글);
			}
			명령자.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 댓글들;
	}
	
	@Override
	public int saveReply(ReplyVO replyVO) throws Exception {
		Connection con = null;
		System.out.println("============="+replyVO.getTno());
		System.out.println(replyVO.getContent());
		System.out.println(replyVO.getWritername());
	    try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(DBConfig.DBURL, DBConfig.ID, DBConfig.PASSWORD);
			String sql = "insert into tourreply(tno, content, writername) values(?,?,?)";
			PreparedStatement 명령자 = con.prepareStatement(sql);
			명령자.setInt(1, replyVO.getTno());
			명령자.setString(2, replyVO.getContent());
			명령자.setString(3, replyVO.getWritername());
//			명령자.setDate(5, replyVO.getEdit_date());
			명령자.executeUpdate();
			명령자.close();
			return replyVO.getTno();
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		
	}

	@Override
	public int updateReply(ReplyVO replyVO) throws Exception {
		Connection con = null;
	    try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(DBConfig.DBURL, DBConfig.ID, DBConfig.PASSWORD);
			String sql = "update tourreply set content=? where no=?" ;
			PreparedStatement 명령자 = con.prepareStatement(sql);
			명령자.setString(1, replyVO.getContent());
			명령자.setInt(2, replyVO.getNo());
			명령자.executeUpdate();
			명령자.close();
			return replyVO.getTno();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int deleteReply(int no) throws Exception {
		Connection con = null;
	    try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(DBConfig.DBURL, DBConfig.ID, DBConfig.PASSWORD);
			String sql = "delete from tourreply where no=?";
			PreparedStatement 명령자 = con.prepareStatement(sql);
			명령자.setInt(1, no);
			명령자.executeUpdate();
			명령자.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 1;
	}
	
	
	
}

