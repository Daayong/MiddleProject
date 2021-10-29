package com.d.mp.cookit.menu.prd;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.d.mp.cookit.menu.prd.util.ProductPager;
import com.d.mp.member.MemberDTO;
import com.d.mp.order.cart.CartDTO;
import com.d.mp.order.cart.CartListDTO;
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
		
		pager.setPerPage(10L);
		
		List<ProductDTO> prdAr = productService.getPrdList(productDTO, pager);
		
		// 판매 및 판매종료 구분 리스트
		List<ProductDTO> prdAr_sale = new ArrayList<ProductDTO>();
		List<ProductDTO> prdAr_end_sale = new ArrayList<ProductDTO>();
		
		for(int i=0; i<prdAr.size(); i++) {
			
			String prd_state = prdAr.get(i).getProduct_state();
			
			if(prd_state.equals("판매가능")) {
				prdAr_sale.add(prdAr.get(i));
			}else {
				prdAr_end_sale.add(prdAr.get(i));
			}
			
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("prd_sale", prdAr_sale);
		mv.addObject("prd_end_sale", prdAr_end_sale);
		mv.addObject("pager", pager);
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
		
		// 품절이아닌 주문일자가 지나가버리면.
		boolean isEndDate = false;
		String state = "";
		
		for(ProductDTO prdDate_each : prdDate) {

			Long sell_count = prdDate_each.getProduct_sell_count();
			Long max_count = prdDate_each.getProduct_max_count();
			
			String getdate = prdDate_each.getProduct_regdate();
			
			Date today_date = transDate.parse(today);
			Date reg_date = transDate.parse(getdate);
			
			int compare_count = sell_count.compareTo(max_count);
			
			if(compare_count == 1 || compare_count == 0) {
				
				prdDate_each.setProduct_date_state("상품준비중");
				productService.doDateState(prdDate_each);
			}else if(compare_count == -1) {

				prdDate_each.setProduct_date_state("판매가능");
				productService.doDateState(prdDate_each);
			}
			
			// 주문일 마감 상태 업데이트
			int compare = today_date.compareTo(reg_date);
			if(compare > 0) {
				prdDate_each.setProduct_date_state("주문마감");
				productService.doDateState(prdDate_each);
			}
			
			state = prdDate_each.getProduct_date_state();
			
			if(state.equals("판매가능")) {
				isEndDate = false;
				break;
			}else if(state.equals("주문마감")) {
				isEndDate = true;
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
		List<ProductDTO> prdDate = null;
		
		// detail => main
		Date now = new Date();
		SimpleDateFormat transDate = new SimpleDateFormat("yyyy-MM-dd");
		
		// 오늘 날짜의 +2 한 날짜 구하기
		Calendar cal = Calendar.getInstance();
		cal.setTime(now);
		
		cal.add(Calendar.DATE, 2);
		
		String today = transDate.format(cal.getTime());
		
		
		for(ProductDTO prdAr_each : prdAr) {
						
			// 품절이아닌 주문일자가 지나가버리면.
			boolean isEndDate = false;
			String state = "";
			
			prdDate = productService.getDate(prdAr_each);
			
			
			for(ProductDTO prdDate_each : prdDate) {
				
				Long sell_count = prdDate_each.getProduct_sell_count();
				Long max_count = prdDate_each.getProduct_max_count();
				
				String getdate = prdDate_each.getProduct_regdate();
				
				Date today_date = transDate.parse(today);
				Date reg_date = transDate.parse(getdate);
				
				int compare_count = sell_count.compareTo(max_count);
				
				if(compare_count == 1 || compare_count == 0) {
					
					prdDate_each.setProduct_date_state("상품준비중");
					productService.doDateState(prdDate_each);
					
				}else if(compare_count == -1) {

					prdDate_each.setProduct_date_state("판매가능");
					productService.doDateState(prdDate_each);
				}
				
				// 주문일 마감 상태 업데이트
				int compare = today_date.compareTo(reg_date);
				if(compare > 0) {
					prdDate_each.setProduct_date_state("주문마감");
					productService.doDateState(prdDate_each);
				}
				
				state = prdDate_each.getProduct_date_state();
				
				if(state.equals("판매가능")) {
					isEndDate = false;
					continue;
				}else if(state.equals("주문마감")) {
					isEndDate = true;
				}
			}
			
			isSoldOut = productService.isSoldOut(prdAr_each.getProduct_id());
			
			if(isSoldOut == 1) {
				prdAr_each.setProduct_state("품절");
				productService.doSoldOut(prdAr_each.getProduct_id());
			}			
			else if(isEndDate == true) {
				prdAr_each.setProduct_state("품절");
				productService.doDateOut(prdAr_each.getProduct_id());
			}
		}
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("prdDTO", prdAr);
		mv.setViewName("menu/menu_main");
		
		return mv;
	}

	// 장바구니 추가
	@ResponseBody
	@GetMapping("cart_insert")
	public ModelAndView test01(CartDTO cartDTO, HttpSession session) throws Exception{
		
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		List<CartListDTO> cartDTOs = cartService.getCartList(memberDTO);
		
		cartDTO.setMember_id(memberDTO.getMember_id());
		
		SimpleDateFormat transDate = new SimpleDateFormat("yyyy-MM-dd(E)");
		
		Long c_id = cartDTO.getProduct_id();
		Date c_date = cartDTO.getCart_delivery_date();
		
		String ct_date = transDate.format(c_date);
		
		boolean check = true;
		
		for(int i=0; i<cartDTOs.size(); i++) {
			
			Long p_id = cartDTOs.get(i).getProduct_id();
			Long p_quantity = cartDTOs.get(i).getCart_quantity();
			String p_date = cartDTOs.get(i).getCart_delivery_date();
			
			if(c_id.equals(p_id) && p_date.equals(ct_date)) {
				
				cartDTO.setCart_id(cartDTOs.get(i).getCart_id());
				cartDTO.setCart_quantity(p_quantity + cartDTO.getCart_quantity());
				
				cartService.updateCartQuantity(cartDTO);
				
				check = false;
				
				break;
			}
			
		}
		
		if(check) {
			
			cartService.insertCart(cartDTO);
			
		}

		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("menu/menu_detail");
		
		return mv;
	}
	
	// 메인 페이지 장바구니 추가
	
	@ResponseBody
	@GetMapping("getDateOne")
	public String getDateOne(ProductDTO productDTO) throws Exception{
		
		ProductDTO dto = productService.getDateOne(productDTO);
		
		SimpleDateFormat transDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		Date first_date = transDate.parse(dto.getProduct_regdate());
		
		SimpleDateFormat transCal = new SimpleDateFormat("yyyy-MM-dd");
		
		String t_date = transCal.format(first_date);
		
		return t_date;
	}
	
	
	// 메인 페이지 찜목록 추가
	@ResponseBody
	@GetMapping("setZzim")
	public int setZzim(ProductDTO productDTO, HttpSession session){
		
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		Long member_id = memberDTO.getMember_id();
		Long product_id = productDTO.getProduct_id();
		
		String zzim_code = Long.toString(member_id) + Long.toString(product_id);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("member_id", member_id);
		map.put("product_id", product_id);
		map.put("zzim_code", zzim_code);
		
		
		int result = 0;
		
		try {
			result = productService.setZzim(map);
		} catch (Exception e) {
			
			result = 0;
		}
		
		return result;
	}
}