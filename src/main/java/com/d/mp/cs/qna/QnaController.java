package com.d.mp.cs.qna;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/cs/**")
public class QnaController {
	
	@GetMapping("formCounsel")
	public ModelAndView setQnaInsert() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cs/formCounsel");
		return mv;
	}

}
