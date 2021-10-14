package com.d.mp.cs.qna;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.d.mp.member.MemberDTO;

@Controller
@RequestMapping("/cs/**")
public class QnaController {
	
	@GetMapping("formCounsel")
	public ModelAndView setQnaInsert(HttpSession session) throws Exception{
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		ModelAndView mv = new ModelAndView();
		if(memberDTO!=null) {
			mv.setViewName("cs/formCounsel");
		}else {
			mv.setViewName("redirect:../member/login?check=2");
		}		
			return mv;
	}
	
	@GetMapping("formCounselComplete")
	public ModelAndView complete() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cs/formCounselComplete");
		return mv;
	}
	

}
