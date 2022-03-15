package com.stone.member.common;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class Member {
	int no;
	String name;
	String tel;
	String id;
	String password;
	String email;
	String gender;
	char state;
	Date rdate;
	MultipartFile profileFile;
	byte[] profile;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public char getState() {
		return state;
	}
	public void setState(char state) {
		this.state = state;
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	public MultipartFile getProfileFile() {
		return profileFile;
	}
	public void setProfileFile(MultipartFile profileFile) {
		this.profileFile = profileFile;
	}
	public byte[] getProfile() {
		try {
			if(profileFile!=null && profile==null) {
				profile = profileFile.getBytes();
			}
		}catch(Exception ex) {ex.printStackTrace();}
		return profile;
	}
	public void setProfile(byte[] profile) {
		this.profile = profile;
	}
}
