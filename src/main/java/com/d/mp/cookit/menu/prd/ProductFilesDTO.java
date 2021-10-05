package com.d.mp.cookit.menu.prd;

public class ProductFilesDTO {
	
	private Long id;
	private Long product_id;
	private String product_file_name;
	private String product_file_ori_name;
	
	public Long getFileNum() {
		return id;
	}
	public void setFileNum(Long id) {
		this.id = id;
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
