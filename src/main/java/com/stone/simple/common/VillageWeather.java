package com.stone.simple.common;

import java.sql.Date;

public class VillageWeather {

	public int seq;
	public Date insertime; 
	public String baseDate;
	public String baseTime;
	public String t3h;
	public String category;
	
	public String t1h; //기온
	public String rn1; //1시간 강수량
	public String sky; //날씨
	public String reh; //습도
	public String pty; //강수형태
	
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public Date getInsertime() {
		return insertime;
	}
	public void setInsertime(Date insertime) {
		this.insertime = insertime;
	}
	public String getBaseDate() {
		return baseDate;
	}
	public void setBaseDate(String baseDate) {
		this.baseDate = baseDate;
	}
	public String getBaseTime() {
		return baseTime;
	}
	public void setBaseTime(String baseTime) {
		this.baseTime = baseTime;
	}
	public String getT3h() {
		return t3h;
	}
	public void setT3h(String t3h) {
		this.t3h = t3h;
	}
	public String getReh() {
		return reh;
	}
	public void setReh(String reh) {
		this.reh = reh;
	}
	public String getSky() {
		return sky;
	}
	public void setSky(String sky) {
		this.sky = sky;
	}
	public String getT1h() {
		return t1h;
	}
	public void setT1h(String t1h) {
		this.t1h = t1h;
	}
	public String getRn1() {
		return rn1;
	}
	public void setRn1(String rn1) {
		this.rn1 = rn1;
	}
	public String getPty() {
		return pty;
	}
	public void setPty(String pty) {
		this.pty = pty;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
}
