package com.stone.simple.presentation;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.stone.simple.common.DateTime;
import com.stone.simple.common.VillageWeather;

public class 날씨 {

	
	public VillageWeather weather(String x,String y) throws Exception{
		VillageWeather vl = new VillageWeather();
		DateTime datetime = new DateTime();
		String mm = "";
		mm = "30";
		String h = "";
		if((datetime.hour-1)<10) {
			h = datetime.hour-1+"";
			h = "0"+h;
		}else {
			h = datetime.hour-1+"";
		}
		String basetime = h+mm;
		String baseDate = datetime.nowDate;
		vl.setBaseTime(basetime);
		vl.setBaseDate(baseDate);
        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtFcst"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=craB96syv1ZvbzW4vSHVySDVyjbBykSl8tD5EAOApo0ZpUQeR3DXvcBItAWBPVKkzYFXIXKHcl2LCWxgokaBoA%3D%3D"); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("1000", "UTF-8")); /*한 페이지 결과 수*/
        urlBuilder.append("&" + URLEncoder.encode("dataType","UTF-8") + "=" + URLEncoder.encode("JSON", "UTF-8")); /*요청자료형식(XML/JSON) Default: XML*/
        urlBuilder.append("&" + URLEncoder.encode("base_date","UTF-8") + "=" + URLEncoder.encode(vl.getBaseDate(), "UTF-8")); /*‘21년 6월 28일 발표*/
        urlBuilder.append("&" + URLEncoder.encode("base_time","UTF-8") + "=" + URLEncoder.encode(vl.getBaseTime(), "UTF-8")); /*06시 발표(정시단위) */
        urlBuilder.append("&" + URLEncoder.encode("nx","UTF-8") + "=" + URLEncoder.encode(x, "UTF-8")); /*예보지점의 X 좌표값*/
        urlBuilder.append("&" + URLEncoder.encode("ny","UTF-8") + "=" + URLEncoder.encode(y, "UTF-8")); /*예보지점의 Y 좌표값*/
        URL url = new URL(urlBuilder.toString());
        System.out.println("날씨json파일 : "+url);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("날씨 Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream(),"UTF-8"));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream(),"UTF-8"));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        
     // 문자열을 JSON으로 파싱합니다. 마지막 배열형태로 저장된 데이터까지 파싱해냅니다.
       		String result= sb.toString();
     		JSONParser jsonParser = new JSONParser();
     		JSONObject jsonObj = (JSONObject) jsonParser.parse(result);
     		JSONObject parse_response = (JSONObject) jsonObj.get("response");
     		JSONObject parse_body = (JSONObject) parse_response.get("body");// response 로 부터 body 찾아오기
     		JSONObject parse_items = (JSONObject) parse_body.get("items");// body 로 부터 items 받아오기
     		// items로 부터 itemlist 를 받아오기 itemlist : 뒤에 [ 로 시작하므로 jsonarray이다.
     		JSONArray parse_item = (JSONArray) parse_items.get("item");
     																	
     		JSONObject obj;
     		String category; // 기준 날짜와 기준시간을 VillageWeather 객체에 저장합니다.
     		
     		String day = "";
     		String time = "";
     		
     		List<VillageWeather> datalist = new ArrayList<VillageWeather>();
     		for (int i = 0; i < parse_item.size(); i++) {
     			
     			obj = (JSONObject) parse_item.get(i); // 해당 item을 가져옵니다.

     			Object fcstValue = obj.get("fcstValue");
     			if(fcstValue.equals("강수없음")) {
     				fcstValue = "norain";
     			}
     			Object fcstDate = obj.get("fcstDate");
     			Object fcstTime = obj.get("fcstTime");
     			
     			category = (String) obj.get("category"); // item에서 카테고리를 검색해옵니다.
     			// 검색한 카테고리와 일치하는 변수에 문자형으로 데이터를 저장합니다.
     			// 데이터들이 형태가 달라 문자열로 통일해야 편합니다. 꺼내서 사용할때 다시변환하는게 좋습니다.
     			switch (category) {
     			case "REH":
     				vl.reh = (obj.get("fcstValue")).toString();
     				break;
     			case "T3H":
     				vl.t3h = (obj.get("fcstValue")).toString();
     				break;
     			}
     			switch(category) {
     			case "T1H":
     				vl.t1h = (obj.get("fcstValue")).toString();
     				break;
     			}
     			switch(category) {
     			case "SKY":
     				vl.sky = (obj.get("fcstValue")).toString();
     				break;
     			}
     			switch(category) {
     			case "REH":
     				vl.reh = (obj.get("fcstValue")).toString();
     				break;
     			}
     			switch(category) {
     			case "PTY":
     				vl.pty = (obj.get("fcstValue")).toString();
     				break;
     			}
     			if (!day.equals(fcstDate.toString())) {
     				day = fcstDate.toString();
     			}
     			if (!time.equals(fcstTime.toString())) {
     				time = fcstTime.toString();
     			}		
     			
     			vl.baseDate = (obj.get("fcstDate")).toString();
     			vl.baseTime = (obj.get("fcstTime")).toString();
     			
     			VillageWeather test = new VillageWeather();
     			test.setCategory(category);
     			test.setSky(vl.getSky());
     			test.setBaseDate(vl.getBaseDate());
     			test.setBaseTime(vl.getBaseTime());
     			vl.setCategory(category);
     			datalist.add(test);
     		}	
     		vl.setSky(datalist.get(18).getSky());
     		vl.setT1h(datalist.get(24).getT1h());
     		vl.setRn1(datalist.get(12).getRn1());
     		vl.setReh(datalist.get(35).getReh());
     		vl.setPty(datalist.get(6).getPty());
     		
     		return vl;
	}
	
}
