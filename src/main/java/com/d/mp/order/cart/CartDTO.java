package com.d.mp.order.cart;

import java.sql.Date;

import com.d.mp.order.payment.PaymentDTO;

public class CartDTO {
	private Long	cart_id                  ;
	private Long	member_id                ;
	private Long	product_id               ;
	private Long	payment_id				 ;
	private Date	cart_delivery_date       ;  
	private Long	cart_quantity            ;
	private String	cart_state               ;
	
	public Long getCart_id() {
		return cart_id;
	}
	public void setCart_id(Long cart_id) {
		this.cart_id = cart_id;
	}
	public Long getMember_id() {
		return member_id;
	}
	public void setMember_id(Long member_id) {
		this.member_id = member_id;
	}
	public Long getProduct_id() {
		return product_id;
	}
	public void setProduct_id(Long product_id) {
		this.product_id = product_id;
	}
	public Long getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(Long payment_id) {
		this.payment_id = payment_id;
	}
	public Date getCart_delivery_date() {
		return cart_delivery_date;
	}
	public void setCart_delivery_date(Date cart_delivery_date) {
		this.cart_delivery_date = cart_delivery_date;
	}
	public Long getCart_quantity() {
		return cart_quantity;
	}
	public void setCart_quantity(Long cart_quantity) {
		this.cart_quantity = cart_quantity;
	}
	public String getCart_state() {
		return cart_state;
	}
	public void setCart_state(String cart_state) {
		this.cart_state = cart_state;
	}

}

