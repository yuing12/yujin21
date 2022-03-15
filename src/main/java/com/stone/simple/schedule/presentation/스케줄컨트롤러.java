package com.stone.simple.schedule.presentation;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.stone.simple.schedule.common.ScheduleDTO;
import com.stone.simple.schedule.service.I스케줄관리자;


@RestController
public class 스케줄컨트롤러{
 @Autowired I스케줄관리자 스케줄관리자;
	
 @ResponseBody
	@GetMapping("/cal")
	public ModelAndView cal(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		Boolean 로그인회원과게시물작성자가동일인물인가 = false;
		Boolean 로그인되어있는가 = false;
		if(session != null) {
			Integer 회원번호  = (Integer)session.getAttribute("user_no");
			if(회원번호 != null) {
				로그인되어있는가 = true;
				List<ScheduleDTO> 받아온스케줄들 = 스케줄관리자.showSchedule(회원번호);
				if(받아온스케줄들.size() > 0) {
					int a = 받아온스케줄들.get(0).getUser_no();
					int b = 회원번호;
					if(a == b) {
						로그인회원과게시물작성자가동일인물인가 = true;
						mv.addObject("showSchedule", 받아온스케줄들);
					}else {
						로그인회원과게시물작성자가동일인물인가 = false;
					}
				}
			}
		}
		mv.addObject("isuser", 로그인회원과게시물작성자가동일인물인가);
		mv.addObject("isLogin", 로그인되어있는가);
		mv.setViewName("main3/sub_cal");
		return mv;
	}
	
	@PostMapping("/addSchedule")
	public Map<Object,Object> addSchedule(@RequestBody ScheduleDTO dto,HttpSession session) throws Exception{
		
		Map<Object, Object> map = new HashMap<Object, Object>();
		dto.setUser_no((Integer)session.getAttribute("user_no")); 
		스케줄관리자.스케줄저장하다(dto);
		
		return map;
	}
	@GetMapping("/schedulePopup")
	public ModelAndView showschedulePopup() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/schedulePopup");
		return mv;
	}
	
	
	@GetMapping("/deletepopup")
	public ModelAndView deleteschedulepopup(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		int user_no = (Integer)session.getAttribute("user_no");
		List<ScheduleDTO> 받아온스케줄들 = 스케줄관리자.showSchedule(user_no);
		mv.addObject("showSchedule", 받아온스케줄들);
		mv.setViewName("scheduledeletePopup");
		return mv;
	}
	
	@PostMapping("/deleteschedule")
	public Map<Object,Object> deleteschedule(@RequestBody ScheduleDTO dto) throws Exception {
		Map<Object, Object> map = new HashMap<Object, Object>();
				스케줄관리자.스케줄삭제하다(dto.getSno());
		return map;
	}
	
}
