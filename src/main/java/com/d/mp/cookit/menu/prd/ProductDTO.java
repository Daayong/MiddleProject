package com.d.mp.cookit.menu.prd;

public class ProductDTO {
	
	// Product 테이블 값
	private Long product_id;
	private String product_name;
	private String product_sub_name;
	private String product_recipe;
	private String product_description;
	private String product_info;
	private Long product_price;
	private Long product_total_count;
	private String product_state;
	
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
	public Long getProduct_total_count() {
		return product_total_count;
	}
	public void setProduct_total_count(Long product_total_count) {
		this.product_total_count = product_total_count;
	}
	
	// 품절 판단
	public String getProduct_state() {
		return product_state;
	}
	public void setProduct_state(String product_state) {
		this.product_state = product_state;
	}
	
	// 판매 상품의 배송 날짜를 구하기위해 화, 수, 목, 금, 토 새벽배송
	private String product_start_date;
	private String product_end_date;
	
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
	
	// 위에서구한 상품날짜를 인서트
	private String product_regdate;
	
	public String getProduct_regdate() {
		return product_regdate;
	}
	public void setProduct_regdate(String product_regdate) {
		this.product_regdate = product_regdate;
	}
	
	// 각 상품 날짜별 맥시멈 수량 만약 product_sell_count >= product_max_count 이면 해당 날짜 select 박스 비활성화
	private Long product_max_count;
	private Long product_sell_count;
	private String product_date_state;
	
	public Long getProduct_max_count() {
		return product_max_count;
	}
	public void setProduct_max_count(Long product_max_count) {
		this.product_max_count = product_max_count;
	}
	public Long getProduct_sell_count() {
		return product_sell_count;
	}
	public void setProduct_sell_count(Long product_sell_count) {
		this.product_sell_count = product_sell_count;
	}
	public String getProduct_date_state() {
		return product_date_state;
	}
	public void setProduct_date_state(String product_date_state) {
		this.product_date_state = product_date_state;
	}
	
	// menu_manage 상품 재고 파악
	
	private Long product_stock;
	
	public Long getProduct_stock() {
		return product_stock;
	}
	public void setProduct_stock(Long product_stock) {
		this.product_stock = product_stock;
	}
	
	// ============================================================== //

	// 임시로 해놓은 방식 페이저에들어가야함	
	private String kind;
	private String date;
	
	public String getKind() {
		if(this.kind == null) {
			this.kind = "";
		}
		return kind;
	}
	public void setKind(String kind) {
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
	
	private Long zzim_id;

	public Long getZzim_id() {
		return zzim_id;
	}
	public void setZzim_id(Long zzim_id) {
		this.zzim_id = zzim_id;
	}
}
