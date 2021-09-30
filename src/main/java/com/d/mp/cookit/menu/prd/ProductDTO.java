package com.d.mp.cookit.menu.prd;


public class ProductDTO {
	
	private String prd_code;
	private String prd_name;
	private String prd_subName;
	private String prd_etc;
	private String prd_description;
	private String prd_info;
	private Long prd_price;
	private Double prd_satisfaction;
	private Long cnt_review;
	
	public String getPrd_description() {
		return prd_description;
	}
	public void setPrd_description(String prd_description) {
		this.prd_description = prd_description;
	}
	public String getPrd_info() {
		return prd_info;
	}
	public void setPrd_info(String prd_info) {
		this.prd_info = prd_info;
	}
	public String getPrd_code() {
		return prd_code;
	}
	public void setPrd_code(String prd_code) {
		this.prd_code = prd_code;
	}
	public String getPrd_name() {
		return prd_name;
	}
	public void setPrd_name(String prd_name) {
		this.prd_name = prd_name;
	}
	public String getPrd_subName() {
		return prd_subName;
	}
	public void setPrd_subName(String prd_subName) {
		this.prd_subName = prd_subName;
	}
	public String getPrd_etc() {
		return prd_etc;
	}
	public void setPrd_etc(String prd_etc) {
		this.prd_etc = prd_etc;
	}
	public Long getPrd_price() {
		return prd_price;
	}
	public void setPrd_price(Long prd_price) {
		this.prd_price = prd_price;
	}
	public Double getPrd_satisfaction() {
		return prd_satisfaction;
	}
	public void setPrd_satisfaction(Double prd_satisfaction) {
		this.prd_satisfaction = prd_satisfaction;
	}
	public Long getCnt_review() {
		return cnt_review;
	}
	public void setCnt_review(Long cnt_review) {
		this.cnt_review = cnt_review;
	}
}
