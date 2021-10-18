package com.d.mp.cs.faq;


import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/cs/**")
public class FaqController {
	
	@Autowired
	private FaqService faqService;
	
	@GetMapping( value =  {"faqList", "csMain"})
	public ModelAndView getList() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cs/faqList");
		List<FaqDTO> ar = faqService.getList();
		mv.addObject("faqlist", ar);
		return mv;
	}
	
	@GetMapping("faqUpload")
	public ModelAndView setInsert() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cs/faqUpload");
		return mv;
	}
	
	@PostMapping("faqUpload")
	public ModelAndView setInsert(FaqDTO faqDTO) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		int result = faqService.setInsert(faqDTO);
		mv.setViewName("redirect:./faqList");
		
		return mv;
	}
	
	
	@PostMapping("faqTypeList")
		public ModelAndView getTypeList(HttpServletRequest request, HttpServletResponse response, FaqDTO faqDTO) throws Exception{
		
		String faq_type = request.getParameter("faq_type");
		
		 faqDTO.setFaq_type(faq_type);
		
		List<FaqDTO> ar = faqService.getTypeList(faqDTO);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("faq_type", faq_type);
		mv.addObject("faqlist", ar);
		mv.setViewName("cs/faqList");
		return mv;
	}

}	
