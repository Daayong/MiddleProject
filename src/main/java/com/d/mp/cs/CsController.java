package com.d.mp.cs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cs/**")
public class CsController {
	
	@GetMapping("csMain")
	public String csMain() throws Exception{
		return "cs/csMain";
	}
	
	@GetMapping("faqList")
	public String faqList() throws Exception{
		return "cs/faqList";
	}
	
	@GetMapping("noticeMain")
	public String noticeMain() throws Exception{
		return "cs/noticeMain";
	}
	
	@GetMapping("userGuide")
	public String userGuide() throws Exception{
		return "cs/userGuide";
	}
	
	
}
