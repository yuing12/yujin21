package com.stone.simple.checklist.dataservice;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

import com.stone.simple.checklist.common.CheckList;

import config.DBConfig;

@Repository
public class 체크리스트DAO implements I체크리스트DAO {

	@Override
	public void 체크리스트저장(CheckList cklist) {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(DBConfig.DBURL,DBConfig.ID,DBConfig.PASSWORD); 
			if(cklist.getUser_no() != null) {
				String sql = "update checklist set id=?, creditcardcash=?, charger=?, portablecharger=?, mask=?, umbrella=?, camera=?, cloth=?, pajamas=?, underwear=?, socks=?, toothbrush=?, showersupplies=?, cosmetics=?, dryer=?, shaver=?, emergencymedicine=?, tissue=?, eyepatch=?, neckpillow=?, blanket=?, firstlistblank=?, secondlistblank=?, thirdlistblank=?, fourthlistblank=?, memojang=? where user_no=?";
				PreparedStatement 명령자 = con.prepareStatement(sql);
				명령자.setBoolean(1, cklist.getId());
				명령자.setBoolean(2, cklist.getCreditcardcash());
				명령자.setBoolean(3, cklist.getCharger());
				명령자.setBoolean(4, cklist.getPortablecharger());
				명령자.setBoolean(5, cklist.getMask());
				명령자.setBoolean(6, cklist.getUmbrella());
				명령자.setBoolean(7, cklist.getCamera());
				명령자.setBoolean(8, cklist.getCloth());
				명령자.setBoolean(9, cklist.getPajamas());
				명령자.setBoolean(10, cklist.getUnderwear());
				명령자.setBoolean(11, cklist.getSocks());
				명령자.setBoolean(12, cklist.getToothbrush());
				명령자.setBoolean(13, cklist.getShowersupplies());
				명령자.setBoolean(14, cklist.getCosmetics());
				명령자.setBoolean(15, cklist.getDryer());
				명령자.setBoolean(16, cklist.getShaver());
				명령자.setBoolean(17, cklist.getEmergencymedicine());
				명령자.setBoolean(18, cklist.getTissue());
				명령자.setBoolean(19, cklist.getEyepatch());
				명령자.setBoolean(20, cklist.getNeckpillow());
				명령자.setBoolean(21, cklist.getBlanket());
				명령자.setString(22, cklist.getFirstlistblank());
				명령자.setString(23, cklist.getSecondlistblank());
				명령자.setString(24, cklist.getThirdlistblank());
				명령자.setString(25, cklist.getFourthlistblank());
				명령자.setString(26, cklist.getMemojang());
				명령자.setInt(27, cklist.getUser_no());
				명령자.executeUpdate();
				con.close();
			}else {
				String sql = "insert into checklist(id,creditcardcash,charger,portablecharger,mask,umbrella,camera,cloth,pajamas,underwear,socks,toothbrush,showersupplies,cosmetics,dryer,shaver,emergencymedicine,tissue,eyepatch,neckpillow,blanket,firstlistblank,secondlistblank,thirdlistblank,fourthlistblank,user_no,chno,memojang) "
						+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,1,?)";
				PreparedStatement 명령자 = con.prepareStatement(sql);
				명령자.setBoolean(1, cklist.getId());
				명령자.setBoolean(2, cklist.getCreditcardcash());
				명령자.setBoolean(3, cklist.getCharger());
				명령자.setBoolean(4, cklist.getPortablecharger());
				명령자.setBoolean(5, cklist.getMask());
				명령자.setBoolean(6, cklist.getUmbrella());
				명령자.setBoolean(7, cklist.getCamera());
				명령자.setBoolean(8, cklist.getCloth());
				명령자.setBoolean(9, cklist.getPajamas());
				명령자.setBoolean(10, cklist.getUnderwear());
				명령자.setBoolean(11, cklist.getSocks());
				명령자.setBoolean(12, cklist.getToothbrush());
				명령자.setBoolean(13, cklist.getShowersupplies());
				명령자.setBoolean(14, cklist.getCosmetics());
				명령자.setBoolean(15, cklist.getDryer());
				명령자.setBoolean(16, cklist.getShaver());
				명령자.setBoolean(17, cklist.getEmergencymedicine());
				명령자.setBoolean(18, cklist.getTissue());
				명령자.setBoolean(19, cklist.getEyepatch());
				명령자.setBoolean(20, cklist.getNeckpillow());
				명령자.setBoolean(21, cklist.getBlanket());
				명령자.setString(22, cklist.getFirstlistblank());
				명령자.setString(23, cklist.getSecondlistblank());
				명령자.setString(24, cklist.getThirdlistblank());
				명령자.setString(25, cklist.getFourthlistblank());
				명령자.setInt(26, cklist.getUser_no());
				명령자.setString(27,cklist.getMemojang());
				명령자.executeUpdate();
				con.close();
			}
		}

		catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	@Override
	public CheckList 체크리스트조회(int user_uno){
		Connection con = null;
		CheckList returncklist = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(DBConfig.DBURL, DBConfig.ID, DBConfig.PASSWORD);
			String sql = "select * from checklist where user_no=?";
			PreparedStatement 명령자 = con.prepareStatement(sql);
			명령자.setInt(1, user_uno);
			ResultSet 회원표 = 명령자.executeQuery();
			if(회원표.next()) {
					int chno = 회원표.getInt("chno");
					boolean id = 회원표.getBoolean("id");
					boolean creditcardcash = 회원표.getBoolean("creditcardcash");
					boolean charger = 회원표.getBoolean("charger");
					boolean portablecharger = 회원표.getBoolean("portablecharger");
					boolean mask = 회원표.getBoolean("mask");
					boolean umbrella = 회원표.getBoolean("umbrella");
					boolean camera = 회원표.getBoolean("camera");
					boolean cloth = 회원표.getBoolean("cloth");
					boolean pajamas = 회원표.getBoolean("pajamas");
					boolean underwear = 회원표.getBoolean("underwear");
					boolean socks = 회원표.getBoolean("socks");
					boolean toothbrush = 회원표.getBoolean("toothbrush");
					boolean showersupplies = 회원표.getBoolean("showersupplies");
					boolean cosmetics = 회원표.getBoolean("cosmetics");
					boolean dryer = 회원표.getBoolean("dryer");
					boolean shaver = 회원표.getBoolean("shaver");
					boolean emergencymedicine = 회원표.getBoolean("emergencymedicine");
					boolean tissue = 회원표.getBoolean("tissue");
					boolean eyepatch = 회원표.getBoolean("eyepatch");
					boolean neckpillow = 회원표.getBoolean("neckpillow");
					boolean blanket = 회원표.getBoolean("blanket");
					String firstlistblank = 회원표.getString("firstlistblank");
					String secondlistblank = 회원표.getString("secondlistblank");
					String thirdlistblank = 회원표.getString("thirdlistblank");
					String fourthlistblank = 회원표.getString("fourthlistblank");
					String memojang = 회원표.getString("memojang");
					returncklist = new CheckList();
					returncklist.setChno(chno);
					returncklist.setId(id);
					returncklist.setCreditcardcash(creditcardcash);
					returncklist.setCharger(charger);
					returncklist.setPortablecharger(portablecharger);
					returncklist.setMask(mask);
					returncklist.setUmbrella(umbrella);
					returncklist.setCamera(camera);
					returncklist.setCloth(cloth);
					returncklist.setPajamas(pajamas);
					returncklist.setUnderwear(underwear);
					returncklist.setSocks(socks);
					returncklist.setToothbrush(toothbrush);
					returncklist.setShowersupplies(showersupplies);
					returncklist.setCosmetics(cosmetics);
					returncklist.setDryer(dryer);
					returncklist.setShaver(shaver);
					returncklist.setEmergencymedicine(emergencymedicine);
					returncklist.setTissue(tissue);
					returncklist.setEyepatch(eyepatch);
					returncklist.setNeckpillow(neckpillow);
					returncklist.setBlanket(blanket);
					returncklist.setFirstlistblank(firstlistblank);
					returncklist.setSecondlistblank(secondlistblank);
					returncklist.setThirdlistblank(thirdlistblank);
					returncklist.setFourthlistblank(fourthlistblank);
					returncklist.setMemojang(memojang);
					return returncklist;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@Override
	public void 체크리스트최초저장(int user_no) {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(DBConfig.DBURL,DBConfig.ID,DBConfig.PASSWORD); 
			
				String sql = "insert into checklist(user_no) values(?)";
				PreparedStatement 명령자 = con.prepareStatement(sql);
				명령자.setInt(1, user_no);
				명령자.executeUpdate();
				con.close();
		}catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	
}
