package com.d.mp.order.payment;

public class PaymentListDTO {
	private Long 	payment_id						;
    private Long 	payment_total_product_price		;
    private Long	payment_total_delivery_price	;
    private Long 	payment_use_point				;
    private Long	payment_total_payment_price		;
	private String	payment_date          			;
	private String 	cart_delivery_date				;
	private String	cart_state						;
	private String 	cart_quantity 					;
	private Long 	product_id              		;
	private String 	product_name            		;
	private Long 	product_price           		;
	private String 	product_file_name       		;
	
	
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
	public String getPayment_date() {
		return payment_date;
	}
	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}
	public String getCart_delivery_date() {
		return cart_delivery_date;
	}
	public void setCart_delivery_date(String cart_delivery_date) {
		this.cart_delivery_date = cart_delivery_date;
	}
	public String getCart_state() {
		return cart_state;
	}
	public void setCart_state(String cart_state) {
		this.cart_state = cart_state;
	}
	public String getCart_quantity() {
		return cart_quantity;
	}
	public void setCart_quantity(String cart_quantity) {
		this.cart_quantity = cart_quantity;
	}
	public Long getProduct_id() {
		return product_id;
	}
	public void setProduct_id(Long product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public Long getProduct_price() {
		return product_price;
	}
	public void setProduct_price(Long product_price) {
		this.product_price = product_price;
	}
	public String getProduct_file_name() {
		return product_file_name;
	}
	public void setProduct_file_name(String product_file_name) {
		this.product_file_name = product_file_name;
	}	
	
	
}
