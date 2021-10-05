package com.d.mp.cs;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/cs/**")
public class CsController {

	@GetMapping("csMain")
	public ModelAndView csMain(ModelAndView mv) throws Exception{
		mv.setViewName("cs/csMain");
		return mv;
		
	}
	
	
}
