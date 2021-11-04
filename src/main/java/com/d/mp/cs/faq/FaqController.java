package com.d.mp.cs.faq;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.d.mp.board.util.BoardPager;
import com.d.mp.event.EventDTO;
import com.d.mp.event.EventFileDTO;

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
	
	

	@GetMapping("faqTypeList")
	@ResponseBody
	public ModelAndView getTypeList(FaqDTO faqDTO) throws Exception{
	
		List<FaqDTO> ar = faqService.getTypeList(faqDTO);
		
		ModelAndView mv = new ModelAndView();
	
		mv.addObject("faqlist", ar);
	
		mv.setViewName("common/faqTypeList");
		
		return mv;
	}
	
	@GetMapping("/faqDelete")
	public ModelAndView setDelete(FaqDTO faqDTO) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		int result = faqService.setDelete(faqDTO);
		
		String message = "삭제에 실패했습니다";
		
		if(result>0) {
			message = "삭제되었습니다";
		}
		
		mv.addObject("msg", message);
		mv.addObject("url", "./csMain");
		
		mv.setViewName("common/result");
		
		return mv;
		
	}
	
	
	
	
	
}	
