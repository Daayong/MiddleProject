package com.d.mp.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order/**")
public class OrderController {
	
	@RequestMapping("cartList")
	public String cartList() {
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
