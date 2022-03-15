package com.stone.simple.checklist.presentation;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.stone.simple.checklist.common.CheckList;
import com.stone.simple.checklist.service.I체크리스트관리자;

@Controller
public class CheckListsController {

	@Autowired I체크리스트관리자 체크리스트관리자;
	
	
	
	@GetMapping("/checklist")
	public ModelAndView 체크리스트이동(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		Integer user_no =(Integer)session.getAttribute("user_no");
		CheckList cklist = new CheckList();
			cklist = 체크리스트관리자.체크리스트조회(user_no);
			
			mv.addObject("cklist",cklist);
			mv.addObject("uno", user_no);
		mv.setViewName("main3/sub_ckList");
		return mv;
	}
	@GetMapping("/checklistsave")
	public ModelAndView 체크리스트저장(@RequestParam List<String> checkvalue,HttpSession session,@RequestParam("memojang")String memojang ) {
		ModelAndView mv =new ModelAndView();
		CheckList checklist = new CheckList();
		int user_no= (int)session.getAttribute("user_no");
		if(memojang != null) {
			checklist.setMemojang(memojang);
		}
		for(int i=0; i<checkvalue.size(); i++) {
			if(checkvalue.get(i).equals("id")) {
				checklist.setId(true);
			}else if(checkvalue.get(i).equals("creditcardcash")) {
				checklist.setCreditcardcash(true);
			}else if(checkvalue.get(i).equals("charger")) {
				checklist.setCharger(true);
			}else if(checkvalue.get(i).equals("portablecharger")) {
				checklist.setPortablecharger(true);
			}else if(checkvalue.get(i).equals("mask")) {
				checklist.setMask(true);
			}else if(checkvalue.get(i).equals("umbrella")) {
				checklist.setUmbrella(true);
			}else if(checkvalue.get(i).equals("camera")) {
				checklist.setCamera(true);
			}else if(checkvalue.get(i).equals("cloth")) {
				checklist.setCloth(true);
			}else if(checkvalue.get(i).equals("pajamas")) {
				checklist.setPajamas(true);
			}else if(checkvalue.get(i).equals("underwear")) {
				checklist.setUnderwear(true);
			}else if(checkvalue.get(i).equals("socks")) {
				checklist.setSocks(true);
			}else if(checkvalue.get(i).equals("toothbrush")) {
				checklist.setToothbrush(true);
			}else if(checkvalue.get(i).equals("showersupplies")) {
				checklist.setShowersupplies(true);
			}else if(checkvalue.get(i).equals("cosmetics")) {
				checklist.setCosmetics(true);
			}else if(checkvalue.get(i).equals("dryer")) {
				checklist.setDryer(true);
			}else if(checkvalue.get(i).equals("shaver")) {
				checklist.setShaver(true);
			}else if(checkvalue.get(i).equals("emergencymedicine")) {
				checklist.setEmergencymedicine(true);
			}else if(checkvalue.get(i).equals("tissue")) {
				checklist.setTissue(true);
			}else if(checkvalue.get(i).equals("eyepatch")) {
				checklist.setEyepatch(true);
			}else if(checkvalue.get(i).equals("neckpillow")) {
				checklist.setNeckpillow(true);
			}else if(checkvalue.get(i).equals("blanket")) {
				checklist.setBlanket(true);
			}
		}
		int 유저번호 = (int)session.getAttribute("user_no");
		checklist.setUser_no(유저번호);
		체크리스트관리자.체크리스트저장(checklist);
		mv.setViewName("redirect:/checklist");
		return mv;
	}

	
}
