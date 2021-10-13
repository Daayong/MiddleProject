package com.d.mp.cookit.menu.prd;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/menu/**")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	
	@RequestMapping("menu_search")
	public ModelAndView doSearch(ProductDTO productDTO) throws Exception{
		List<ProductDTO> prdAr = productService.getPrdList(productDTO);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("prdDTO", prdAr);
		mv.setViewName("menu/menu_search");
		
		return mv;
	}
	
	@GetMapping("menu_detail")
	public ModelAndView getPrdOne(ProductDTO productDTO) throws Exception{
		
		ProductDTO dto = productService.getPrdOne(productDTO);
		List<ProductDTO> prdDate = productService.getDate(productDTO);
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
		mv.addObject("prdDate", prdDate);
		mv.addObject("mainFiles", mainFiles);
		mv.addObject("sliderFiles", sliderFiles);
		mv.addObject("prdDTO", dto);
		mv.setViewName("menu/menu_detail");
		
		return mv;
	}
	
	@ResponseBody
	@GetMapping("menu_main")
	public ModelAndView getPrdList(ProductDTO productDTO) throws Exception{
		List<ProductDTO> prdAr = productService.getPrdList(productDTO);
		
		System.out.println(productDTO.getDate());
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("prdDTO", prdAr);
		mv.setViewName("menu/menu_main");
		
		return mv;
	}
	
	// 어드민 관련 부분 //////////////////////////////////////////////
	
	@RequestMapping("menu_insert")
	public ModelAndView doAdmin() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("menu/menu_insert");
		
		return mv;
	}
	
	@RequestMapping("menu_manage")
	public ModelAndView doManage(ProductDTO productDTO) throws Exception{
		
		List<ProductDTO> prdAr = productService.getPrdList(productDTO);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("prdDTO", prdAr);
		mv.setViewName("menu/menu_manage");
		
		return mv;
	}
	
	@ResponseBody
	@GetMapping("menu_delete")
	public ModelAndView deletePrdOne(ProductDTO productDTO) throws Exception{
		
		productService.deletePrdOne(productDTO);
		List<ProductDTO> prdAr = productService.getPrdList(productDTO);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("prdDTO", prdAr);
		mv.setViewName("menu/menu_manage");
		
		return mv;
	}
	
	// 어드민 관련 부분 끝 ////////////////////////////////////////////
	@PostMapping("prdUpload")
	public ModelAndView setInsert(ProductDTO productDTO, List<MultipartFile> main_files, List<MultipartFile> slider_files) throws Exception{
		
		int result = productService.setInsert(productDTO, main_files, slider_files);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("menu/menu_result");
		mv.addObject("result", result);
		
		return mv;
	}
	
	
}