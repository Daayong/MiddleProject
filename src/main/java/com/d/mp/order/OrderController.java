package com.d.mp.order;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.d.mp.member.MemberDTO;
import com.d.mp.order.cart.CartService;

@Controller
@RequestMapping("/order/**")
public class OrderController {
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping("cartList")
	public String cartList(Model model, HttpSession session) throws Exception {
		
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");		
		model.addAttribute("cartListDTOs", cartService.getCartList(memberDTO));
		
		return "order/cartList";		
	}
	
	@RequestMapping("orders")
	public String orders() {
		return "order/orders";		
	}
	
	@RequestMapping("orderComplete")
	public String orderComplete() {
		return "order/orderComplete";		
	}

}
