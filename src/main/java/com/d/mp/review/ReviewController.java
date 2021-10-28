package com.d.mp.review;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.d.mp.order.cart.CartDTO;
import com.d.mp.order.cart.CartService;
import com.d.mp.order.payment.PaymentDTO;
import com.d.mp.order.payment.PaymentService;

@Controller
@RequestMapping("/review/**")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private PaymentService paymentService;
	
	@Autowired
	private CartService cartService;
	
	@GetMapping("reviewMain")
	public String reviewMain(Model model) throws Exception {
		model.addAttribute("bestReviewDTOs", reviewService.getBestReviewList());
		model.addAttribute("reviewDTOs", reviewService.getReviewList());
		model.addAttribute("familyReviewDTOs", reviewService.getFamilyReviewList());
		return "review/reviewMain";		
	}
	
	@GetMapping("reviewOpenDetail")
	public String reviewOpenDetail(Model model, Long review_id) throws Exception {
		model.addAttribute("review_id", review_id);
		model.addAttribute("bestReviewDTOs", reviewService.getBestReviewList());
		return "review/reviewOpenDetail";		
	}
	
	@GetMapping("reviewWrite")
	public String reviewWrite(Model model, CartDTO cartDTO) throws Exception{
		model.addAttribute("paymentListDTO", paymentService.getPaymentReview(cartDTO));
		return "review/reviewWrite";
	}
	
	@PostMapping("reviewInsert")
	public String reviewInsertTest(CartDTO cartDTO, ReviewDTO reviewDTO, MultipartFile[] multipartFile) throws Exception {
		System.out.println(cartDTO.getCart_id());
		reviewService.insertReview(reviewDTO, multipartFile);
		cartService.updateCartStateDone(cartDTO);
		return "redirect:../member/myOrderList";
	}

}
