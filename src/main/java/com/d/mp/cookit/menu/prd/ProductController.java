package com.d.mp.cookit.menu.prd;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/cookit_menu/**")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	
	@RequestMapping("menu_detail")
	public ModelAndView getPrdOne(ProductDTO productDTO) throws Exception{
		
		ProductDTO dto = productService.getPrdOne(productDTO);
		List<ProductFilesDTO> prdAr = productService.getFile(productDTO);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("prdFileDTO", prdAr);
		mv.addObject("prdDTO", dto);
		mv.setViewName("cookit_menu/menu_detail");
		
		return mv;
	}
	
	@RequestMapping("menu_main")
	public ModelAndView getPrdList() throws Exception{
		
		List<ProductDTO> prdAr = productService.getPrdList();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("prdDTO", prdAr);
		mv.setViewName("cookit_menu/menu_main");
		
		return mv;
	}
	
	
	@RequestMapping("index")
	public ModelAndView doAdmin() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cookit_menu/index");
		
		return mv;
	}
	
	@PostMapping("prdUpload")
	public ModelAndView setInsert(ProductDTO productDTO, MultipartFile [] files) throws Exception{

		for(int i=0;i<files.length;i++) {
			System.out.println(files[i].getOriginalFilename());
		}
		
		int result = productService.setInsert(productDTO, files);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cookit_menu/menu_add");
		mv.addObject("result", result);
		
		return mv;
	}
	
	
}
