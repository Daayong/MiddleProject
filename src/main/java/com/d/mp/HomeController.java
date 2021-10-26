package com.d.mp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.d.mp.cookit.menu.prd.ProductDTO;
import com.d.mp.cookit.menu.prd.ProductService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/**")
public class HomeController {
	
	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView getPrdListMain() throws Exception{
		
		List<ProductDTO> ar = productService.getPrdListMain();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("prd_mDTO", ar);
		mv.setViewName("home");
		
		return mv;
	}
	
}
