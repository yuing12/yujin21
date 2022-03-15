package com.stone.simple.dataservice;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

import com.stone.simple.area.common.Local;

import config.DBConfig;

@Repository
public class 지역DAO implements I지역DAO {

	@Override
	public String 지역가져오다(int cno) {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(DBConfig.DBURL, DBConfig.ID, DBConfig.PASSWORD);
			String sql = "select * from city where cno=?";
			PreparedStatement 명령자 = con.prepareStatement(sql);
			명령자.setInt(1, cno);
			ResultSet 회원표 = 명령자.executeQuery();
			if (회원표.next()) {
				String 지역이름 = 회원표.getString("cname");

				return 지역이름;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public Local 도시가져오다(int lno) {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(DBConfig.DBURL, DBConfig.ID, DBConfig.PASSWORD);
			String sql = "select * from local where lno=?";
			PreparedStatement 명령자 = con.prepareStatement(sql);
			명령자.setInt(1, lno);
			ResultSet 회원표 = 명령자.executeQuery();
			if (회원표.next()) {
				String 도시이름 = 회원표.getString("lname");
				String x = 회원표.getString("x");
				String y = 회원표.getString("y");
				Local local = new Local();
				local.setLname(도시이름);
				local.setX(x);
				local.setY(y);
				return local;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
