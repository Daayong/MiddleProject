package com.d.mp.order.payment;

public class PaymentDTO {
	                                            
	private Long payment_id                     ; 
	private Long payment_total_product_price    ; 
	private Long payment_total_delivery_price   ; 
	private Long payment_use_point              ; 
	private Long payment_total_payment_price    ;
	
	private Long member_id						;

	public Long getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(Long payment_id) {
		this.payment_id = payment_id;
	}

	public Long getPayment_total_product_price() {
		return payment_total_product_price;
	}

	public void setPayment_total_product_price(Long payment_total_product_price) {
		this.payment_total_product_price = payment_total_product_price;
	}

	public Long getPayment_total_delivery_price() {
		return payment_total_delivery_price;
	}

	public void setPayment_total_delivery_price(Long payment_total_delivery_price) {
		this.payment_total_delivery_price = payment_total_delivery_price;
	}

	public Long getPayment_use_point() {
		return payment_use_point;
	}

	public void setPayment_use_point(Long payment_use_point) {
		this.payment_use_point = payment_use_point;
	}

	public Long getPayment_total_payment_price() {
		return payment_total_payment_price;
	}

	public void setPayment_total_payment_price(Long payment_total_payment_price) {
		this.payment_total_payment_price = payment_total_payment_price;
	}

	public Long getMember_id() {
		return member_id;
	}

	public void setMember_id(Long member_id) {
		this.member_id = member_id;
	}
	
	
	
}
