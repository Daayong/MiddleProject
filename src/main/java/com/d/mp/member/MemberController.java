package com.d.mp.member;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@GetMapping("login")
	public String login() {
		return "member/login";
	}
	
	
	@PostMapping("login")
	public ModelAndView login(ModelAndView mv)throws Exception{
		mv.setViewName("member/myPage");
		return mv;
	}
	
	@GetMapping("join")
	public String join() {
		return "member/join";
	}
	
	
	
	
}
