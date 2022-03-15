/* 작성자 : 조유진 
   공지사항 Contoller
   특징 : 관리자만 접근할 수 있다.*/

package com.stone.notice.presentation;

import java.util.List;    

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.stone.member.common.Member;
import com.stone.notice.common.Notice;
import com.stone.notice.service.INotice_Manager;

@Controller
public class Notice_Contolle {
	
	@Autowired(required=false) INotice_Manager notice_Manager;

	// 등록준비
	@GetMapping("/notice")
	public String writeAnotice() {
			return "Notice/Notice_Registration";
	}

	// 등록
	@PostMapping("/notice")
	public String itIsregistered(Notice newNotice, HttpSession session) {
		 int 로그인한회원의번호=(int)session.getAttribute("user_no");
		 Notice 작성한회원=new Notice();
		 작성한회원.setUser_no(로그인한회원의번호);
		 newNotice.setUser_no(작성한회원.getUser_no());
		 
		notice_Manager.Enrollment(newNotice);
		return "Notice/Notice_Registration_Completed";
	}
	

	//수집
	  @GetMapping("/notices") 
	  public ModelAndView listOutput(HttpSession session) { 
		  List<Notice> lists = notice_Manager.allList(); 
	  ModelAndView mv=new ModelAndView();
	  Boolean isLogin = false;
	  Member 회원 = (Member)session.getAttribute("user");
	  if(회원 != null) {
		  isLogin = true;
		  mv.addObject("user", 회원);
	  }
	  mv.addObject("isLogin", isLogin);
	  mv.setViewName("Notice/Notice_List"); 
	  mv.addObject("boards", lists); 
	  return mv; }

	//Board 조회하다(int 게시물번호);
	  @GetMapping("/notice/{noticeNo}") 
	 public ModelAndView detailedOutput(@PathVariable int noticeNo, HttpSession session) {
		  Notice found = notice_Manager.View(noticeNo); 
		  ModelAndView mv=new ModelAndView(); 
		  mv.setViewName("Notice/Notice_Detail"); 
		  mv.addObject("board",found);
	  

//			//대문자 Boolean은 객체 타입이여서 null이 들어간다.
//			Boolean 로그인회원과게시물작성자가동일인물 = null;
//			if(session != null && session.getAttribute("회원번호") != null) {
//				Integer 회원번호 = (Integer)session.getAttribute("회원번호");
//				if(회원번호 != null) {//로그인이 된 경우
//					//로그인 회원랑 게시물 작성자가 동일인물
//					if(회원번호 == 찾은게시물.getWriter().getNo()) {
//						로그인회원과게시물작성자가동일인물 = true;
//					}else {//로그인은 되었지만 작성자가 아닌경우
//						로그인회원과게시물작성자가동일인물 = false;
//					}
//				}
//				
//			}
//			
//			//- 로그인한 회원이 글 작성자인가 아니면 false; 맞으면 true // 로그인 자체가 안되어있으면 null
//			mv.addObject("isWriter", 로그인회원과게시물작성자가동일인물);
	  return mv;
	  
	  }
	 
	  //변경준비
	  @GetMapping("/prepare_update_/{noticeNo}")
	  public ModelAndView prepareForChange(@PathVariable int noticeNo, HttpSession session){
	  Notice found = notice_Manager.prepareForChange(noticeNo);
	  
	  ModelAndView mv =new ModelAndView();
	  mv.setViewName("Notice/Notice_Change");
	  mv.addObject("board", found); 
	  return mv; 
	  }
	  
	  //변경
	  @PostMapping("/prepare_update_/update_") 
	  public ModelAndView change(Notice notice) {
	 
		  notice_Manager.permute(notice);
	  
	  ModelAndView mv =new ModelAndView();
	  mv.setViewName("Notice/Notice_Change_Completed"); 
	  return mv;
	 
	  }
	  
	  @GetMapping("/delete_/{noticeNo}") 
	  public ModelAndView delete(@PathVariable int noticeNo, HttpSession session){ 
		  notice_Manager.delete(noticeNo);
	  
	  ModelAndView mv =new ModelAndView(); 
	  mv.setViewName("Notice/Notice_Delete");
	 return mv; 
	 }
	 

}
