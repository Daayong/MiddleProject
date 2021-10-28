package com.d.mp.review;

public class ReviewFileDTO {
	private Long	review_file_id             ; 
	private Long	review_id                  ; 
	private String	review_file_name           ; 
	private String	review_file_ori_name       ;
	public Long getReview_file_id() {
		return review_file_id;
	}
	public void setReview_file_id(Long review_file_id) {
		this.review_file_id = review_file_id;
	}
	public Long getReview_id() {
		return review_id;
	}
	public void setReview_id(Long review_id) {
		this.review_id = review_id;
	}
	public String getReview_file_name() {
		return review_file_name;
	}
	public void setReview_file_name(String review_file_name) {
		this.review_file_name = review_file_name;
	}
	public String getReview_file_ori_name() {
		return review_file_ori_name;
	}
	public void setReview_file_ori_name(String review_file_ori_name) {
		this.review_file_ori_name = review_file_ori_name;
	} 
	
}
