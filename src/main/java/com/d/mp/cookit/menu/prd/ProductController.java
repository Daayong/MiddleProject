package com.d.mp.cookit.menu.prd;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin/**")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("index")
	public ModelAndView doAdmin() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/index");
		
		return mv;
	}
	
	@PostMapping("prdUpload")
	public ModelAndView setInsert(ProductDTO productDTO, MultipartFile files) throws Exception{

		System.out.println(files.getOriginalFilename());
		
		int result = productService.setInsert(productDTO);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/menu_add");
		mv.addObject("result", result);
		
		return mv;
	}
	
}
