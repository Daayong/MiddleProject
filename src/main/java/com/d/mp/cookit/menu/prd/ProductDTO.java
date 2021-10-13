package com.d.mp.cookit.menu.prd;

public class ProductDTO {
	
	// 임시로 해놓은 방식 페이저에들어가야함	
	private String kind;
	private String date;

	private Long product_id;
	private String product_name;
	private String product_sub_name;
	private String product_recipe;
	private String product_description;
	private String product_info;
	private Long product_price;
	private Long product_total_count;
	
	private String product_start_date;
	private String product_end_date;
	
	private String product_regdate;
	
	//////////////////////////////////////////
	public String getProduct_regdate() {
		return product_regdate;
	}
	public void setProduct_regdate(String product_regdate) {
		this.product_regdate = product_regdate;
	}
	//////////////////////////////////////////
	
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
	public String getProduct_sub_name() {
		return product_sub_name;
	}
	public void setProduct_sub_name(String product_sub_name) {
		this.product_sub_name = product_sub_name;
	}
	public String getProduct_recipe() {
		return product_recipe;
	}
	public void setProduct_recipe(String product_recipe) {
		this.product_recipe = product_recipe;
	}
	public String getProduct_description() {
		return product_description;
	}
	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}
	public String getProduct_info() {
		return product_info;
	}
	public void setProduct_info(String product_info) {
		this.product_info = product_info;
	}
	public Long getProduct_price() {
		return product_price;
	}
	public void setProduct_price(Long product_price) {
		this.product_price = product_price;
	}
	public String getProduct_start_date() {
		return product_start_date;
	}
	public void setProduct_start_date(String product_start_date) {
		this.product_start_date = product_start_date;
	}
	public String getProduct_end_date() {
		return product_end_date;
	}
	public void setProduct_end_date(String product_end_date) {
		this.product_end_date = product_end_date;
	}
	
	public Long getProduct_total_count() {
		return product_total_count;
	}
	public void setProduct_total_count(Long product_total_count) {
		this.product_total_count = product_total_count;
	}
	/////////////////////////////////////////////////////////////
	
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		if(this.kind == null) {
			this.kind = "";
		}
		this.kind = kind;
	}
	
	public String getDate() {
		if(this.date == "") {
			this.date = null;
		}
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
}
