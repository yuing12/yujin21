package com.stone.simple.presentation;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.stone.mosttour.common.Tourlocal;
import com.stone.mosttour.service.I모스트투어매니저;
import com.stone.simple.area.common.Local;
import com.stone.simple.checklist.service.I체크리스트관리자;
import com.stone.simple.common.VillageWeather;
import com.stone.simple.service.I지역서비스;

@Controller
public class 컨트롤러 {

	@Autowired
	I지역서비스 지역서비스;
	@Autowired
	I체크리스트관리자 체크리스트관리자;
	@Autowired I모스트투어매니저 모스트투어매니저;
	
	
	@GetMapping("/prepare")
	public ModelAndView 시작을준비하다() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main1/main1");
		return mv;
	}

	@GetMapping("/main2")
	public ModelAndView 지역으로들어가다(String cno) {
		ModelAndView mv = new ModelAndView();
		int cityno = Integer.parseInt(cno);
		String 지역이름 = 지역서비스.지역검색하다(cityno);
		if (지역이름 != null) {
			mv.addObject("지역번호", cityno);
			mv.setViewName("main2/main2_" + 지역이름);
		}
		return mv;
	}

	@GetMapping("/local")
	public ModelAndView 도시를조회하다(String lno, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();

		int localnumber = Integer.parseInt(lno);
		Local 도시 = 지역서비스.도시검색하다(localnumber);

		String x = 도시.getX();
		String y = 도시.getY();
		if (도시.getLname() != null) {
//			mv.addObject("지역", 도시.getLname());
			session.setAttribute("local_name", 도시.getLname());
			mv.addObject("x", x);
			mv.addObject("y", y);
		}
		날씨 weather = new 날씨();
		VillageWeather vl = new VillageWeather();
		vl = weather.weather(x, y);
		session.setAttribute("vl", vl);
		mv.setViewName("forward:/main3");

		return mv;
	}

	@GetMapping("/main3")
	public ModelAndView 메인3페이지로가다(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		VillageWeather vl = (VillageWeather) session.getAttribute("vl");
		mv.addObject("local_name", session.getAttribute("local_name"));
		mv.addObject("vl", vl);
		if (session.getAttribute("user_id") != null) {
			mv.addObject("user", session.getAttribute("user"));
		}
		List<Tourlocal> mostlocal = 모스트투어매니저.인기여행지이름();
		int mosttrue = 0;
		if(mostlocal.size() > 0) {
			mosttrue = mostlocal.size();
		}
		mv.addObject("mosttrue", mosttrue);
		mv.addObject("mostlocal", mostlocal);
		mv.setViewName("main3/main3");
		return mv;
	}

////////////////////////////////////////////////////////////////
	@GetMapping("/sub_taste")
	public ModelAndView 맛집페이지로가다(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main3/sub_taste");
		return mv;
	}

	@GetMapping("/sub_cafe")
	public ModelAndView 카페페이지로가다(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main3/sub_cafe");
		return mv;
	}

	@GetMapping("/sub_travel")
	public ModelAndView 관광지페이지로가다(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main3/sub_travel");
		return mv;
	}

	@GetMapping("/sub_hotel")
	public ModelAndView 숙소페이지로가다(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main3/sub_hotel");
		return mv;
	}
	@GetMapping("/sub_coupon")
	public ModelAndView 선착순쿠폰페이지로가다(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main3/sub_coupon");
		return mv;
	}
	@GetMapping("/sub_festival")
	public ModelAndView 행사페이지로가다(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main3/sub_festival");
		return mv;
	}
	
}
