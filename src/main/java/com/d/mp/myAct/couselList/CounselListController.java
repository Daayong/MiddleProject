package com.d.mp.myAct.couselList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/myAct/**")
public class CounselListController {
	
	@GetMapping("customerCounselList")
	public ModelAndView complete() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("myAct/customerCounselList");
		return mv;
	}
	
}
