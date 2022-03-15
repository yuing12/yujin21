package com.stone.board.presentation;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.stone.board.common.Board;
import com.stone.board.common.Paging;
import com.stone.board.common.Searching;
import com.stone.board.service.I게시물업무자;
import com.stone.member.common.Member;
import com.stone.qnaboard.common.Qna;
import com.stone.qnaboard.service.I답글업무자;

@Controller
public class 게시물컨트롤러 {
	
	@Autowired I게시물업무자 게시물업무자;
	@Autowired I답글업무자 답글업무자;
	

	@GetMapping("/board")
	public String 게시물작성준비() {
		if(게시물업무자.게시물작성이가능한가()) {
			return "board/게시물등록";
		}
		return null;
	}

	@PostMapping("/board")
	public String 게시물등록(Board 새게시물, HttpSession session) {
		System.out.println("유저번호"+session.getAttribute("user_no"));
		int 로그인한회원의번호= 1; // 로그인아웃컨트롤러 // 로그인을 안햇엉 
		Member 작성한회원 = new Member();
			//if(작성한회원!=null) {
		작성한회원.setNo(로그인한회원의번호);
		새게시물.setWriter(작성한회원);
		게시물업무자.게시물을등록하다(새게시물);
		return "redirect:/boards/1";
		//}
		//return "loginout/로그인창 ";
	}

	@GetMapping("/boards/{페이지번호}")
	ModelAndView 게시물목록을출력하다(@PathVariable int 페이지번호,HttpSession session) {
	int 페이지당게시물수=5;
	Paging page = new Paging();	
	page.setAmount(페이지당게시물수);
	page.setPageNo(페이지번호-1);
	String  관리자번호확인 = "일반";
	if(session.getAttribute("user_id") != null) {
	관리자번호확인 = (String)session.getAttribute("user_id");
	}
	ModelAndView mv = new ModelAndView();
	int 범위끝게시물일련번호 = 페이지당게시물수*page.getPageNo();
	int 시작게시물일련번호=범위끝게시물일련번호-(페이지당게시물수-1);
	Object[] 수집된게시물들과게시물수 = 게시물업무자.게시물목록을수집하다(page);
	
	int 수집된게시물수=(int) 수집된게시물들과게시물수[1]; //테이블 내의  게시물수가 아니다. 
	int 마지막페이지번호= (int)(수집된게시물수/페이지당게시물수)+((수집된게시물수%페이지당게시물수>0)?1 : 0);
	
	mv.addObject("masterid", 관리자번호확인);
	mv.setViewName("board/게시물목록창");
	mv.addObject("boards", 수집된게시물들과게시물수[0]);
	mv.addObject("pageNo", 페이지번호);
	mv.addObject("lastPageNo", 마지막페이지번호);
	return mv;
}

	
	@GetMapping("/boards/board/{게시물번호}")
	public ModelAndView 게시물상세조회(@PathVariable int 게시물번호,HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		Board 찾은게시물=게시물업무자.게시물을조회하다(게시물번호);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("board/게시물상세창");
		mv.addObject("board",찾은게시물);
		
		Cookie[] cookies = request.getCookies();
        
        // 비교하기 위해 새로운 쿠키
        Cookie viewCookie = null;
        // 쿠키가 있을 경우 
        if (cookies != null && cookies.length > 0) 
        {
            for (int i = 0; i < cookies.length; i++)
            {
                // Cookie의 name이 cookie + reviewNo와 일치하는 쿠키를 viewCookie에 넣어줌 
                if (cookies[i].getName().equals("cookie"+게시물번호))
                { 
                    System.out.println("처음 쿠키가 생성한 뒤 들어옴.");
                    viewCookie = cookies[i];
                }
            }
        }
            // 만일 viewCookie가 null일 경우 쿠키를 생성해서 조회수 증가 로직을 처리함.
            if (viewCookie == null) {    
                System.out.println("cookie 없음");
                // 쿠키 생성(이름, 값)
                Cookie newCookie = new Cookie("cookie"+게시물번호, "|" + 게시물번호 + "|");
                newCookie.setMaxAge(10*60);
                // 쿠키 추가
                response.addCookie(newCookie);
                // 쿠키를 추가 시키고 조회수 증가시킴
                게시물업무자.게시물조회수증가하다(게시물번호);
            }else {
                System.out.println("cookie 있음");
                // 쿠키 값 받아옴.
                String value = viewCookie.getValue();
                System.out.println("cookie 값 : " + value);
            }
		
		
		
		
		Boolean 로그인회원와게시물작성자가동일인물인가=null;
	    if(session!=null) {
	    	Integer 회원번호=(Integer)session.getAttribute("회원번호");
	    	 if(회원번호!=null) { 
	    		 if(회원번호==찾은게시물.getWriter().getNo()) {
	    			 로그인회원와게시물작성자가동일인물인가=true;
	    		 }else{
	    			 로그인회원와게시물작성자가동일인물인가=false;
	    		 }
	    	 }
	    }
		mv.addObject("isWriter", 로그인회원와게시물작성자가동일인물인가);
		return mv;
	}
	
	
	@GetMapping("/update/{게시물번호}")
	public ModelAndView 게시물변경준비(@PathVariable int 게시물번호,HttpSession session) {
		Board 찾은게시물=게시물업무자.게시물을조회하다(게시물번호);
		session.setAttribute("게시물번호", 찾은게시물.getNo());
		session.setAttribute("제목", 찾은게시물.getTitle());
		session.setAttribute("내용", 찾은게시물.getContents());
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("board/게시물변경창");
		mv.addObject("boards",찾은게시물);
		
		return mv;
	}
	
	@PostMapping("/update")
	public String 게시물변경(Board 변경게시물) {
		Board 찾은게시물 = 게시물업무자.게시물을조회하다(변경게시물.getNo());
			if(변경게시물.getTitle()!=null) {
				찾은게시물.setTitle(변경게시물.getTitle());
			}
			if(변경게시물.getContents()!=null) {
				찾은게시물.setContents(변경게시물.getContents());
			}
			게시물업무자.게시물을변경하다(찾은게시물);
			return "redirect:/boards/1";
}
	
	
	@GetMapping("/delete")
	public String 게시물삭제(@RequestParam("no") int 게시물번호) {
		게시물업무자.게시물을삭제하다(게시물번호);
		//ModelAndView mv=new ModelAndView();
		//mv.setViewName("board/게시물삭제알림창");
		return "redirect:/boards/1";
	}
	
	
	//답글달기 
	@GetMapping("/qna")
	public ModelAndView 답변용상세창띄우기(@RequestParam("no") int 게시물번호) {
		Board board = 게시물업무자.게시물을조회하다(게시물번호);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("board/게시물상세창_답변");
		mv.addObject("board",board);
		return mv;
	}
	
	
	@PostMapping("/qna")
	public @ResponseBody String 답글작성준비(@RequestBody Qna 답글) {
		답글업무자.답글달다(답글);
		return "ok";
	}
	
	@GetMapping("/titlesearch")
	ModelAndView 게시물검색목록을출력하다(@RequestParam(value="pageno",required=false,defaultValue="1")int 페이지번호,HttpSession session,@RequestParam("searchtitle")String searchtitle) {
	int 페이지당게시물수=5;
	Paging page = new Paging();	
	Searching search = new Searching();
	search.setSearchtitle(searchtitle);
	page.setAmount(페이지당게시물수);
	page.setPageNo(페이지번호-1);
	String  관리자번호확인 = "일반";
	if(session.getAttribute("user_id") != null) {
	관리자번호확인 = (String)session.getAttribute("user_id");
	}
	ModelAndView mv = new ModelAndView();
	int 범위끝게시물일련번호 = 페이지당게시물수*page.getPageNo();
	int 시작게시물일련번호=범위끝게시물일련번호-(페이지당게시물수-1);
	Object[] 수집된게시물들과게시물수 = 게시물업무자.게시물검색목록을수집하다(searchtitle,페이지번호,페이지당게시물수);
	
	int 수집된게시물수=(int) 수집된게시물들과게시물수[1]; //테이블 내의  게시물수가 아니다. 
	int 마지막페이지번호= (int)(수집된게시물수/페이지당게시물수)+((수집된게시물수%페이지당게시물수>0)?1 : 0);
	
	mv.addObject("masterid", 관리자번호확인);
	mv.setViewName("board/게시물목록창");
	mv.addObject("boards", 수집된게시물들과게시물수[0]);
	mv.addObject("pageNo", 페이지번호);
	mv.addObject("lastPageNo", 마지막페이지번호);
	return mv;
}
	
	
	
	
		
	}




