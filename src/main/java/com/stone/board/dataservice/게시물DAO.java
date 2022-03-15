package com.stone.board.dataservice;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.stone.board.common.Board;
import com.stone.board.common.Paging;
import com.stone.member.common.Member;
import com.stone.member.dataservice.IMemberMapper;
import com.stone.qnaboard.common.Qna;
import com.stone.qnaboard.dataservice.IQnaMapper;

import config.DBConfig;

@Repository
public class 게시물DAO implements I게시물DAO {
	
	@Autowired IBoardMapper boardMapper;
	@Autowired IQnaMapper qnaMapper;
	@Autowired IMemberMapper membermapper;
	
	@Transactional
	@Override
	public void 저장하다(Board 새게시물) {
		boardMapper.게시물을저장하다(새게시물);
		
	}
	
	@Transactional
	@Override
	public Object[] 수집하다(Paging pages) {
		
		int 총게시물수=boardMapper.총게시물수를구하다();
		List<Board> boards = boardMapper.수집하다(pages);
		for(Board board : boards) {
			if(board.getQna()!=null) {
				board.getQna().setBoard(board);
			}
		}
		return new Object[] {boards,총게시물수};//리스트, 숫자 
	}

	
	@Transactional
	@Override
	public Board 조회하다(int 게시물번호) {
		Board board =boardMapper.게시물조회하다(게시물번호);
		if(board.getQna() != null) {
			board.getQna().setBoard(board);
		}
		return board;
	}

	@Transactional
	@Override
	public void 변경하다(Board 변경게시물) {
		boardMapper.게시물변경하다(변경게시물);

	}
	
	@Transactional
	@Override
	public void 삭제하다(int 게시물번호) {
		Board board =boardMapper.게시물조회하다(게시물번호);
		if(board.getQna()==null) {
			boardMapper.게시물삭제하다(게시물번호);
		
		}

	}

	@Override
	public int 총게시물수를수집하다() {
		// TODO Auto-generated method stub
		return boardMapper.총게시물수를구하다();
	}

	@Transactional
	@Override
	public void 조회수증가하다(int 게시물번호) {
		boardMapper.게시물조회수증가하다(게시물번호);
//		boardMapper.게시물조회하다(게시물번호);
	}
	
	
	@Override
	public Object[] 검색목록을수집하다(String searchtitle, int pageNo,int amount) {
		Connection con = null;
		List<Board> 게시물들 = new ArrayList<Board>();
		int 수집된게시물수=0;
	    try{
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	        con=DriverManager.getConnection(
	        		DBConfig.DBURL, // DB URL
	        		DBConfig.ID,DBConfig.PASSWORD);  // USER_NAME과 PASSWORD	 
	        PreparedStatement 명령자2=con.prepareStatement("select count(*) from (select @rownum:=@rownum+1 as rn,no,title,contents,views,writer,rdate from qnaboard where title like '%"+searchtitle+"%' order by no desc) board;");
	        ResultSet 수집된게시물수표 =명령자2.executeQuery();
	        수집된게시물수표.next();
	        수집된게시물수 = 수집된게시물수표.getInt(1);
	        수집된게시물수표.close();
	        명령자2.close();
	     
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(DBConfig.DBURL, DBConfig.ID, DBConfig.PASSWORD);
			String sql = "select no, title, contents, writer,views,rdate from qnaboard where title like '%"+searchtitle+"%' order by no desc limit ?,?";
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
					Qna qna = qnaMapper.찾다BY번호(no);
					Member 회원정보 = new Member();
					회원정보 = membermapper.회원번호를찾다(writer);
					Board 게시물 = new Board();
					게시물.setNo(no);
					게시물.setTitle(title);
					게시물.setContents(contents);
					게시물.setWriter(회원정보);
					게시물.setViews(views);
					게시물.setRdate(date);
					게시물.setQna(qna);
					게시물들.add(게시물);
			}
			명령자.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	    Object  게시물들과수집된게시물수[]= {게시물들, 수집된게시물수};
		return 게시물들과수집된게시물수;
	}

}

