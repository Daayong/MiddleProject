package com.d.mp.cs.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/cs/**")
public class FaqController {
	
	@Autowired
	private FaqService faqService;
	
	@GetMapping("faqList")
	public ModelAndView getList() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cs/faqList");
		List<FaqDTO> ar = faqService.getList();
		mv.addObject("faqlist", ar);
		return mv;
	}
	
	
}
