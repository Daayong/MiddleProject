package com.d.mp.cookit.menu.prd;

import java.util.ArrayList;
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
		List<ProductFilesDTO> mainFiles = new ArrayList<ProductFilesDTO>();
		List<ProductFilesDTO> sliderFiles = new ArrayList<ProductFilesDTO>();
		for(int i=0;i<prdAr.size();i++) {
			if(prdAr.get(i).getProduct_file_path().equals("main")) {
				mainFiles.add(prdAr.get(i));
			}
			else {
				sliderFiles.add(prdAr.get(i));
			}
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("mainFiles", mainFiles);
		mv.addObject("sliderFiles", sliderFiles);
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
	
	// 어드민 관련 부분 //////////////////////////////////////////////
	
	@RequestMapping("index")
	public ModelAndView doAdmin() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cookit_menu/index");
		
		return mv;
	}
	
	@RequestMapping("manage")
	public ModelAndView doManage() throws Exception{
		
		List<ProductDTO> prdAr = productService.getPrdList();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("prdDTO", prdAr);
		mv.setViewName("cookit_menu/menu_manage");
		
		return mv;
	}
	
	// 어드민 관련 부분 끝 ////////////////////////////////////////////
	@PostMapping("prdUpload")
	public ModelAndView setInsert(ProductDTO productDTO, MultipartFile [] main_files, MultipartFile [] slider_files) throws Exception{

		for(int i=0;i<main_files.length;i++) {
			System.out.println(main_files[i].getOriginalFilename());
		}
		System.out.println("========================================");
		
		for(int i=0;i<slider_files.length;i++) {
			System.out.println(slider_files[i].getOriginalFilename());
		}
		
		int result = productService.setInsert(productDTO, main_files, slider_files);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cookit_menu/menu_result");
		mv.addObject("result", result);
		
		return mv;
	}
	
	
}
