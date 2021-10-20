package com.d.mp.cookit.menu.prd;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.d.mp.cookit.menu.prd.util.ProductPager;
import com.d.mp.member.MemberDTO;
import com.d.mp.order.cart.CartDTO;
import com.d.mp.order.cart.CartService;

@Controller
@RequestMapping(value = "/menu/**")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CartService cartService;
	
	// =========================== 사용자 상품 관련 페이지 =========================== //
	
	// 메뉴 찾기
	@ResponseBody
	@GetMapping("menu_search")
	public ModelAndView doSearch(ProductDTO productDTO, ProductPager pager) throws Exception{
		
		
		// 검색어가 공백이면 전체 목록
		String forTrim = productDTO.getProduct_name();
		
		if(forTrim != null) {
			forTrim = forTrim.trim();
			productDTO.setProduct_name(forTrim);
			System.out.println(forTrim);
		}

		List<ProductDTO> prdAr = productService.getPrdList(productDTO, pager);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("prdDTO", prdAr);
		mv.setViewName("menu/menu_search");
		
		return mv;
	}
	
	
	// 메뉴 상세 페이지
	@GetMapping("menu_detail")
	public ModelAndView getPrdOne(ProductDTO productDTO) throws Exception{
		
		ProductDTO dto = productService.getPrdOne(productDTO);
		List<ProductDTO> prdDate = productService.getDate(productDTO);
		
		Date now = new Date();
		SimpleDateFormat transDate = new SimpleDateFormat("yyyy-MM-dd");
		
		// 오늘 날짜의 +2 한 날짜 구하기
		Calendar cal = Calendar.getInstance();
		cal.setTime(now);
		
		cal.add(Calendar.DATE, 2);
		
		String today = transDate.format(cal.getTime());
		
		
		// 상품별 재고상태 업데이트
		for(int i=0; i<prdDate.size(); i++) {
			
			Long sell_count = prdDate.get(i).getProduct_sell_count();
			Long max_count = prdDate.get(i).getProduct_max_count();
			
			String getdate = prdDate.get(i).getProduct_regdate();
			
			Date today_date = transDate.parse(today);
			Date reg_date = transDate.parse(getdate);
			
			if(sell_count >= max_count) {
				
				prdDate.get(i).setProduct_date_state("상품준비중");
				productService.doDateState(prdDate.get(i));
			}else if(max_count > sell_count) {
				
				prdDate.get(i).setProduct_date_state("판매가능");
				productService.doDateState(prdDate.get(i));
			}
			
			// 주문일 마감 상태 업데이트
			int compare = today_date.compareTo(reg_date);
			if(compare > 0) {
				prdDate.get(i).setProduct_date_state("주문마감");
				productService.doDateState(prdDate.get(i));
			}else {
				
			}
		}
		
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
		mv.addObject("today", today);
		mv.addObject("prdDate", prdDate);
		mv.addObject("mainFiles", mainFiles);
		mv.addObject("sliderFiles", sliderFiles);
		mv.addObject("prdDTO", dto);
		mv.setViewName("menu/menu_detail");
		
		return mv;
	}
	
	
	// 메뉴 메인 페이지
	@ResponseBody
	@GetMapping("menu_main")
	public ModelAndView getPrdList(ProductDTO productDTO, ProductPager pager) throws Exception{
		List<ProductDTO> prdAr = productService.getPrdList(productDTO, pager);
		
		
		
		int isSoldOut = 0;
		
		for(int i=0; i<prdAr.size(); i++) {
			
			// 품절이아닌 주문일자가 지나가버리면.
			boolean isEndDate = false;
			String state = "";
			
			List<ProductDTO> prdDate = productService.getDate(prdAr.get(i));
			
			for(int j=0; j<prdDate.size(); j++) {
				
				state = prdDate.get(j).getProduct_date_state();
				
				if(state.equals("판매가능")) {
					System.out.println("판매가능");
					isEndDate = false;
					break;
				}else if(state.equals("주문마감")) {
					isEndDate = true;
				}
			}
			
			isSoldOut = productService.isSoldOut(prdAr.get(i).getProduct_id());
			
			if(isSoldOut == 1) {
				prdAr.get(i).setProduct_state("품절");
				productService.doSoldOut(prdAr.get(i).getProduct_id());
			}			
			else if(isEndDate == true) {
				prdAr.get(i).setProduct_state("주문마감");
				productService.doDateOut(prdAr.get(i).getProduct_id());
			}
		}
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("prdDTO", prdAr);
		mv.setViewName("menu/menu_main");
		
		return mv;
	}
	
	// =========================== 사용자 상품 관련 페이지 끝 =========================== //
	
	
	
	// =========================== 관리자 상품 추가 및 관리 페이지 =========================== //
	
	@RequestMapping("menu_insert")
	public ModelAndView doAdmin() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("menu/menu_insert");
		
		return mv;
	}
	
	// 상풍 등록 버튼 클릭시 실행
	@PostMapping("prdUpload")
	public ModelAndView setInsert(ProductDTO productDTO, List<MultipartFile> main_files, List<MultipartFile> slider_files) throws Exception{
		
		productService.setInsert(productDTO, main_files, slider_files);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:menu_main");
		
		return mv;
	}
	
	@RequestMapping("menu_manage")
	public ModelAndView doManage(ProductDTO productDTO, ProductPager pager) throws Exception{
		
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
		mv.setViewName("menu/menu_manage");
		
		return mv;
	}
	
	@ResponseBody
	@GetMapping("menu_delete")
	public ModelAndView deletePrdOne(ProductDTO productDTO, ProductPager pager) throws Exception{
		
		productService.deletePrdOne(productDTO);
		productService.setFileDelete(productDTO);
		List<ProductDTO> prdAr = productService.getPrdList(productDTO, pager);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("prdDTO", prdAr);
		mv.setViewName("menu/menu_manage");
		
		return mv;
	}

	// =========================== 관리자 상품 추가 및 관리 페이지 끝 =========================== //
	
	
	// 테스트 장바구니 추가
	@ResponseBody
	@GetMapping("cart_insert")
	public ModelAndView test01(CartDTO cartDTO, HttpSession session) throws Exception{
		
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		cartDTO.setMember_id(memberDTO.getMember_id());
		cartService.insertCart(cartDTO);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("menu/menu_detail");
		
		return mv;
	}
}