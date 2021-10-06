package com.d.mp.cookit.menu.prd;

public class ProductFilesDTO {
	
	private Long product_file_id;
	private Long product_id;
	private String product_file_name;
	private String product_file_ori_name;
	private String product_file_path;
	
	public Long getProduct_file_id() {
		return product_file_id;
	}
	public void setProduct_file_id(Long product_file_id) {
		this.product_file_id = product_file_id;
	}
	public String getProduct_file_path() {
		return product_file_path;
	}
	public void setProduct_file_path(String product_file_path) {
		this.product_file_path = product_file_path;
	}
	public Long getProduct_id() {
		return product_id;
	}
	public void setProduct_id(Long product_id) {
		this.product_id = product_id;
	}
	public String getProduct_file_name() {
		return product_file_name;
	}
	public void setProduct_file_name(String product_file_name) {
		this.product_file_name = product_file_name;
	}
	public String getProduct_file_ori_name() {
		return product_file_ori_name;
	}
	public void setProduct_file_ori_name(String product_file_ori_name) {
		this.product_file_ori_name = product_file_ori_name;
	}
}
