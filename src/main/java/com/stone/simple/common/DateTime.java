package com.stone.simple.common;

import java.time.LocalDate;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;

public class DateTime {
	
	
	ZonedDateTime nowSeoul = ZonedDateTime.now(ZoneId.of("Asia/Seoul"));
	
	LocalDate nowkorea = LocalDate.now(ZoneId.of("Asia/Seoul"));
	
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd"); // 포맷 적용 
	
	public String formatedNow = nowkorea.format(formatter);

	public String nowDate = formatedNow.substring(0,4)+formatedNow.substring(5,7)+formatedNow.substring(8);

	String fulltime = nowSeoul.toLocalTime().toString();
	
	String bfhour = fulltime.substring(0,2);
	public int hour = Integer.parseInt(bfhour);
	String bfminute =fulltime.substring(3,5);
	public int minute = Integer.parseInt(bfminute);
	
	//	String nowDay = nowSeoul.getDayOfWeek().getDisplayName(TextStyle.NARROW, Locale.KOREAN);
	
	
}
