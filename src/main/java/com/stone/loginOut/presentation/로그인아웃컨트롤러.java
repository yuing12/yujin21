package com.stone.loginOut.presentation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.stone.loginOut.service.I로그인아웃업무자;
import com.stone.member.common.Member;

@Controller
public class 로그인아웃컨트롤러 {
	
	@Autowired I로그인아웃업무자 로그인아웃업무자;
	
	@GetMapping("/login")
	public String 로그인준비하다() {
		if(로그인아웃업무자.로그인준비가능한가()) {
			return "loginout/로그인창";
		}
		return null;
	}
	
	
	@PostMapping("/login")
	public String 로그인하다(String id, String password, HttpSession session) {
		
		Member 로그인한회원 = 로그인아웃업무자.로그인조회하다(id, password);
		if(로그인한회원!=null) {
			session.setAttribute("user_id", id);
			session.setAttribute("user_no", 로그인한회원.getNo());
			session.setAttribute("user_name", 로그인한회원.getName());
			session.setAttribute("user", 로그인한회원);
			return "redirect:/main3";
		}
		 return "loginout/로그인에러창";		
	}
	
	@GetMapping("/logout")
	public String 로그아웃하다(HttpSession session) {
		
		if(session!=null && session.getAttribute("user_id")!=null) {
			session.removeAttribute("user_id");
			
		}
		return "redirect:/main3";
	}
	

	
	

}

