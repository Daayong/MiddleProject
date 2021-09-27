package com.d.mp.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@GetMapping("mycookit")
	public String mycookit() {
		return "member/mycookit";
	}
	
	
	
	
	
	
}
