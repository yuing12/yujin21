package com.stone.member.presentation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.stone.member.common.Member;
import com.stone.member.service.I회원관리자;
import com.stone.member.service.I회원업무자;
import com.stone.simple.checklist.common.CheckList;
import com.stone.simple.checklist.service.I체크리스트관리자;

@Controller
public class 회원컨트롤러 {

	@Autowired
	I회원관리자 회원관리자;
	@Autowired
	I체크리스트관리자 체크리스트관리자;

	@GetMapping("/id")
	public ModelAndView ID중복검사준비하다() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/아이디중복검사창");
		return mv;
	}

	@PostMapping("/id")
	ModelAndView ID중복검사하다(String id) {

		boolean ID사용가능여부 = 회원관리자.ID사용가능여부판단하다(id);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/아이디중복검사창");
		mv.addObject("id", id);
		mv.addObject("usable", ID사용가능여부);
		return mv;
	}

	@GetMapping("/member")
	ModelAndView 새회원등록준비하다() {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/회원등록창");
		return mv;
	}

	@PostMapping("/member")
	ModelAndView 새회원등록하다(Member 새회원) {

		회원관리자.회원등록하다(새회원);
		int 회원번호 = 회원업무자.회원정보를찾다byid(새회원.getId());
		체크리스트관리자.회원가입시체크리스트생성(회원번호);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/회원등록알림창");
		mv.addObject("name", 새회원.getName());
		return mv;
	}

	@Autowired
	I회원업무자 회원업무자;

	@GetMapping("/member_info")
	public ModelAndView 회원정보조회(HttpSession session) {
		int 회원번호 = (int) session.getAttribute("user_no");
		Member 내정보창 = 회원업무자.회원번호찾다(회원번호);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/회원정보창");
		mv.addObject("member_info", 내정보창);
		return mv;
	}

	@GetMapping("/member_update")
	public ModelAndView 회원정보수정준비(HttpSession session) {
		int 회원번호 = (int) session.getAttribute("user_no");
		Member 내정보 = 회원업무자.회원번호찾다(회원번호);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/회원정보수정창");
		mv.addObject("member_update", 내정보);
		return mv;
	}

	@PostMapping("/member_update")
	public ModelAndView 회원정보수정하다(Member 수정한정보, HttpSession session) {
		int 회원번호 = (int) session.getAttribute("user_no");
		수정한정보.setNo(회원번호);
		회원업무자.회원정보수정하다(수정한정보);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/회원정보수정완료창");
		mv.addObject("name", 수정한정보.getName());
		return mv;
	}

	@GetMapping("/member_delete")
	public ModelAndView 회원탈퇴준비(Member 삭제할정보, HttpSession session) {
		int 회원번호 = (int) session.getAttribute("user_no");
		삭제할정보.setNo(회원번호);
		회원업무자.회원탈퇴하다(회원번호);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/회원탈퇴완료창");
		return mv;
	}

//////////////////////////////추가
	@GetMapping("/findid")
	public String 전화번호로ID찾다() {
		return ("member/아이디찾기창");
	}

//////////////////////////////추가
	@PostMapping("/findid_success")
	ModelAndView 전화번호로검색하다(Member tel) {
		Member 찾는회원 = 회원업무자.번호로조희하다(tel);
		ModelAndView mv = new ModelAndView();
		if (찾는회원 != null) {
			mv.setViewName("member/아이디찾기완료창");
			mv.addObject("findid_success", 찾는회원);
			return mv;
		}
		mv.setViewName("member/아이디찾기에러창");
		return mv;

	}

//////////////////////////////추가
	@GetMapping("/findpw")
	public String 전화번호ID로정보찾다() {
		return ("member/비밀번호찾기임시비밀번호발급준비창");
	}

//////////////////////////////추가
	@PostMapping("/findpw_new")
	ModelAndView 전화번호ID로검색하다(Member 임시비밀번호, String id, String tel) {
		Member 찾는회원 = 회원업무자.번호ID로조희하다(id, tel);
//만약 회원이 !=이면 임시비밀번호를 발급하고, 임시비밀번호로 비밀번호 업데이트
//임시비밀번호 보여주기. -> 로그인창으로 이동. -- jsp
		ModelAndView mv = new ModelAndView();
		if (찾는회원 != null) {
			임시비밀번호.setId(찾는회원.getId());
			임시비밀번호.setTel(찾는회원.getTel());
			회원업무자.임시비밀번호업데이트(임시비밀번호);
			mv.setViewName("member/비밀번호찾기임시비밀번호발급완료창");
			mv.addObject("findpw_new", 찾는회원);
			return mv;
		}
		mv.setViewName("member/비밀번호찾기에러창");
		return mv;
	}

//////////////////////////////추가
	@GetMapping("/member_pwUpdate")
	public ModelAndView 회원비밀번호변경준비(HttpSession session) {
		int 회원번호 = (int) session.getAttribute("user_no");
		Member 내정보 = 회원업무자.회원번호찾다(회원번호);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/회원비밀번호변경창");
		mv.addObject("member_pwUpdate", 내정보);
		return mv;
	}

//////////////////////////////추가
	@PostMapping("/member_pwUpdate")
	public ModelAndView 회원비밀번호변경하다(Member 수정한정보, HttpSession session) {
		int 회원번호 = (int) session.getAttribute("user_no");
		수정한정보.setNo(회원번호);
		회원업무자.회원정보수정하다(수정한정보);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/회원비밀번호변경완료창");
		return mv;
	}
	
	

}
