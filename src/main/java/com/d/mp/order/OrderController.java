package com.d.mp.order;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.d.mp.member.MemberDTO;
import com.d.mp.order.cart.CartDTO;
import com.d.mp.order.cart.CartService;
import com.d.mp.order.payment.PaymentDTO;
import com.d.mp.order.payment.PaymentService;

@Controller
@RequestMapping("/order/**")
public class OrderController {
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private PaymentService paymentService;
	
	@RequestMapping("cartList")
	public String cartList(Model model, HttpSession session) throws Exception {	
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		cartService.updateCartStateDeadLine(memberDTO);
		return "order/cartList";
	}
	
	@GetMapping("getCartList")
	public String getCartList(Model model, HttpSession session) throws Exception {		
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		model.addAttribute("cartListDTOs", cartService.getCartList(memberDTO));	
		return "order/getCartList";
	}
	
	@RequestMapping("orders")
	public String orders(Model model, HttpSession session) throws Exception {
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		model.addAttribute("cartListDTOs", cartService.getCartListChecked(memberDTO));
		return "order/orders";
	}
	
	@RequestMapping("insertPayment")
	@ResponseBody
	public Long insertPayment(Model model, HttpSession session, PaymentDTO paymentDTO) throws Exception {
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		paymentDTO.setMember_id(memberDTO.getMember_id());
		
		paymentService.insertPayment(paymentDTO);
		cartService.updateCartStatePayment(paymentDTO, memberDTO);
		
		return paymentDTO.getPayment_id();
	}
	
	@RequestMapping("orderComplete")
	public String orderComplete(Model model, PaymentDTO paymentDTO) throws Exception {
		model.addAttribute("paymentDTO", paymentService.selectPaymentOne(paymentDTO));
		model.addAttribute("cartDTO", cartService.getCartListPaymentId(paymentDTO));
		return "order/orderComplete";
	}
	
//===== ===== ===== DELETE CART ===== ===== =====
	@GetMapping("deleteCartOne")
	public String deleteCartOne(Model model, HttpSession session, CartDTO cartDTO) throws Exception {
		cartService.deleteCartOne(cartDTO);
		
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");		
		model.addAttribute("cartListDTOs", cartService.getCartList(memberDTO));
		
		return "order/cartList";
	}

//===== ===== ===== UPDATE CART ===== ===== =====
	@GetMapping("updateCartQuantity")
	public String updateCartQuantity(Model model, HttpSession session, CartDTO cartDTO) throws Exception {		
		cartService.updateCartQuantity(cartDTO);
		
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");		
		model.addAttribute("cartListDTOs", cartService.getCartList(memberDTO));
		
		return "order/cartList";
	}

	@GetMapping("updateCartStateOne")
	public String updateCartStateOne(Model model, HttpSession session, CartDTO cartDTO) throws Exception {
		cartService.updateCartStateOne(cartDTO);
		
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		model.addAttribute("cartListDTOs", cartService.getCartList(memberDTO));
		
		return "order/cartList";
	}

	@GetMapping("updateCartStateAll")
	public String updateCartStateAll(Model model, HttpSession session, CartDTO cartDTO) throws Exception {		
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		cartDTO.setMember_id(memberDTO.getMember_id());
		cartService.updateCartStateAll(cartDTO);
		
		model.addAttribute("cartListDTOs", cartService.getCartList(memberDTO));
		
		return "order/cartList";
	}
	
	@GetMapping("updateCartStateDate")
	public String updateCartStateDate(Model model, HttpSession session, CartDTO cartDTO) throws Exception {		
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		cartDTO.setMember_id(memberDTO.getMember_id());
		cartService.updateCartStateDate(cartDTO);
		
		model.addAttribute("cartListDTOs", cartService.getCartList(memberDTO));
		
		return "order/cartList";
	}
	
}
