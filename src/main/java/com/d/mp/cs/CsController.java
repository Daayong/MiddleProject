package com.d.mp.cs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/cs/**")
public class CsController {

	@RequestMapping("index")
	public String doAdmin() throws Exception{
		return "cs/index";
	}
	
}
