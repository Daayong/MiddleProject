package com.d.mp.order.cart;

import java.sql.Date;

public class CartListDTO {
	private	Long	cart_id                 ;
	private	Long	product_id				;
	private	String	cart_delivery_date      ;
	private	Long	cart_quantity           ;
	private	String	cart_state              ;
	private	String	product_name            ;
	private	Long	product_price           ;
	private	String	product_file_ori_name	;
	
	public Long getCart_id() {
		return cart_id;
	}
	public void setCart_id(Long cart_id) {
		this.cart_id = cart_id;
	}
	public Long getProduct_id() {
		return product_id;
	}
	public void setProduct_id(Long product_id) {
		this.product_id = product_id;
	}
	public String getCart_delivery_date() {
		return cart_delivery_date;
	}
	public void setCart_delivery_date(String cart_delivery_date) {
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
	public String getProduct_file_ori_name() {
		return product_file_ori_name;
	}
	public void setProduct_file_ori_name(String product_file_ori_name) {
		this.product_file_ori_name = product_file_ori_name;
	}
	

	
	
}
