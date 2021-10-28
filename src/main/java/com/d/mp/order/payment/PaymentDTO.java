package com.d.mp.order.payment;

public class PaymentDTO {
	                                            
	private Long payment_id                     ; 
	private Long address_id						;
	private Long payment_total_product_price    ; 
	private Long payment_total_delivery_price   ; 
	private Long payment_use_point              ; 
	private Long payment_total_payment_price    ;
	
	private Long member_id						;
	private String address						;
	private String recipient_name				;
	private String recipient_phone				;
	
	public Long getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(Long payment_id) {
		this.payment_id = payment_id;
	}
	public Long getAddress_id() {
		return address_id;
	}
	public void setAddress_id(Long address_id) {
		this.address_id = address_id;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRecipient_name() {
		return recipient_name;
	}
	public void setRecipient_name(String recipient_name) {
		this.recipient_name = recipient_name;
	}
	public String getRecipient_phone() {
		return recipient_phone;
	}
	public void setRecipient_phone(String recipient_phone) {
		this.recipient_phone = recipient_phone;
	}
	
	
	
}
