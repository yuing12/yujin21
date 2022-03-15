package com.stone.simple.schedule.dataservice;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.stone.simple.schedule.common.ScheduleDTO;

import config.DBConfig;


@Repository
public class 스케줄DAO implements I스케줄DAO {

	
	@Override
	public List<ScheduleDTO> showSchedule(int user_no){
		List<ScheduleDTO> 스케줄들 = new ArrayList<>();
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(DBConfig.DBURL,DBConfig.ID,DBConfig.PASSWORD); 
			String sql = "select sno,subject,startDate,endDate,memo,user_no from schedule where user_no=? order by sno desc;";
			PreparedStatement 명령자 = con.prepareStatement(sql);
			명령자.setInt(1, user_no);
			ResultSet 게시물표 = 명령자.executeQuery();
			while(게시물표.next()) {
				int sno = 게시물표.getInt("sno");
				String 제목 = 게시물표.getString("subject");
				String 시작날 = 게시물표.getString("startDate");
				String 끝나는날 = 게시물표.getString("endDate");
				String 메모 = 게시물표.getString("memo");
				int 유저넘버 = 게시물표.getInt("user_no");
				ScheduleDTO 스케줄 = new ScheduleDTO();
				스케줄.setSno(sno);
				스케줄.setSubject(제목);
				스케줄.setStartDate(시작날);
				스케줄.setEndDate(끝나는날);
				스케줄.setMemo(메모);
				스케줄.setUser_no(유저넘버);
				스케줄들.add(스케줄);
			}
			con.close();
		}
		catch (Exception ex) {
			ex.printStackTrace();
		}

		return 스케줄들;
	}
	
	@Override
	public void 스케줄저장하다(ScheduleDTO 새스케줄) {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(DBConfig.DBURL,DBConfig.ID,DBConfig.PASSWORD);
			String sql = "insert into schedule(subject,startDate,endDate,memo,user_no) values(?,?,?,?,?)";
			PreparedStatement 명령자 = con.prepareStatement(sql);
			명령자.setString(1, 새스케줄.getSubject());
			명령자.setString(2, 새스케줄.getStartDate());
			명령자.setString(3, 새스케줄.getEndDate());
			명령자.setString(4, 새스케줄.getMemo());
			명령자.setInt(5, 새스케줄.getUser_no());
			명령자.executeUpdate();
			con.close();
		}

		catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	@Override
	public void 스케줄삭제하다(int title) {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(DBConfig.DBURL,DBConfig.ID,DBConfig.PASSWORD);
			String sql = "delete from schedule where sno=?";
			PreparedStatement 명령자 = con.prepareStatement(sql);
			명령자.setInt(1, title);
			명령자.executeUpdate();
			con.close();
		}

		catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	
	
}
