package com.d.mp.management;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.d.mp.cookit.menu.prd.ProductDTO;
import com.d.mp.cookit.menu.prd.ProductService;
import com.d.mp.cookit.menu.prd.util.ProductPager;
import com.d.mp.cs.qna.QnaDTO;
import com.d.mp.cs.qna.QnaService;
import com.d.mp.member.MemberDTO;

@Controller
@RequestMapping("/management/**")
public class ManagementController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private QnaService qnaService;
	
	// 상품 업데이트
	@ResponseBody
	@GetMapping("product_update")
	public ModelAndView doUpdate(ProductDTO productDTO) throws Exception{
		
		ProductDTO dto = productService.getPrdOne(productDTO);
		dto.setProduct_stock(productDTO.getProduct_stock());
		
		List<ProductDTO> dateAr = productService.getDate(productDTO);
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("prdInfo", dto);
		mv.addObject("dateInfo", dateAr);
		mv.setViewName("management/product_update");
		
		return mv;
	}
	
	// 상품 관리 페이지 링크
	@RequestMapping("product_insert")
	public ModelAndView doManage(ProductDTO productDTO, ProductPager pager) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("management/product_insert");
		
		return mv;
	}
	
	@RequestMapping("product_manage")
	public ModelAndView goManage(ProductDTO productDTO, ProductPager pager) throws Exception{
		
		List<ProductDTO> prdAr = productService.getPrdList(productDTO, pager);
		
		// 남은 수량 구하기
		for(int i=0; i<prdAr.size(); i++) {
			Long total = prdAr.get(i).getProduct_total_count();
			Long count = productService.getSoldSum(prdAr.get(i).getProduct_id());
			
			Long stock = total - count;
			
			prdAr.get(i).setProduct_stock(stock);
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("prdDTO", prdAr);
		mv.setViewName("management/product_manage");
		
		return mv;
		
	}
	
	// 상품 관리
	
	// 상풍 등록 버튼 클릭시 실행
	@PostMapping("prdUpload")
	public ModelAndView setInsert(ProductDTO productDTO, List<MultipartFile> main_files, List<MultipartFile> slider_files) throws Exception{
		
		productService.setInsert(productDTO, main_files, slider_files);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/menu/menu_main");
		
		return mv;
	}
	
	
	// 상품 삭제
	@ResponseBody
	@GetMapping("product_delete")
	public ModelAndView deletePrdOne(ProductDTO productDTO, ProductPager pager) throws Exception{
		
		productService.deletePrdOne(productDTO);
		productService.setFileDelete(productDTO);
		List<ProductDTO> prdAr = productService.getPrdList(productDTO, pager);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("prdDTO", prdAr);
		mv.setViewName("management/product_manage");
		
		return mv;
	}
	
	@RequestMapping("member_CounselList")
	public ModelAndView getMemberCounselList(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		mv.addObject("member", memberDTO);
		List<QnaDTO> ar = qnaService.getMemberCounselList();
		mv.addObject("counselList", ar);
		mv.setViewName("management/member_CounselList");
		
		return mv;
	}
	
	@GetMapping("member_addComments")
	public ModelAndView memberAddComments(QnaDTO qnaDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		qnaDTO  = qnaService.getOneCounselList(qnaDTO);
		mv.addObject("counselList", qnaDTO);
		mv.setViewName("management/member_addComments");
		return mv;
	}
	
	

	@PostMapping("member_addComments")
	@ResponseBody
	public int setCounselComment(QnaDTO qnaDTO) throws Exception{
		
		return qnaService.setCounselComment(qnaDTO);
	}
}
