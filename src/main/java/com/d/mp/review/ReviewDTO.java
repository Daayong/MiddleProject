package com.d.mp.review;

import java.sql.Date;
import java.util.List;

public class ReviewDTO {
	private Long		review_id			; 
	private Long		product_id			;
	private Long		member_id			;
	private String		review_tag			; 
	private Long		review_star			; 
	private String		review_txt			; 
	private String		review_tip			; 
	private Date		review_date			;
	
	private List<ReviewFileDTO> file		;

	private String		product_name		;
	private String		member_user_id		;

	private String		review_salty		;
	private String		review_easy			;
	private String		review_fresh		;
	private String		review_many			;
	private String		review_delicious	;
	
	public Long getReview_id() {
		return review_id;
	}
	public void setReview_id(Long review_id) {
		this.review_id = review_id;
	}
	public Long getProduct_id() {
		return product_id;
	}
	public void setProduct_id(Long product_id) {
		this.product_id = product_id;
	}
	public Long getMember_id() {
		return member_id;
	}
	public void setMember_id(Long member_id) {
		this.member_id = member_id;
	}
	public String getReview_tag() {
		return review_tag;
	}
	public void setReview_tag(String review_tag) {
		this.review_tag = review_tag;
	}
	public Long getReview_star() {
		return review_star;
	}
	public void setReview_star(Long review_star) {
		this.review_star = review_star;
	}
	public String getReview_txt() {
		return review_txt;
	}
	public void setReview_txt(String review_txt) {
		this.review_txt = review_txt;
	}
	public String getReview_tip() {
		return review_tip;
	}
	public void setReview_tip(String review_tip) {
		this.review_tip = review_tip;
	}
	public Date getReview_date() {
		return review_date;
	}
	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}	
	public List<ReviewFileDTO> getFile() {
		return file;
	}
	public void setFile(List<ReviewFileDTO> file) {
		this.file = file;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getMember_user_id() {
		return member_user_id;
	}
	public void setMember_user_id(String member_user_id) {
		this.member_user_id = member_user_id;
	}
	public String getReview_salty() {
		return review_salty;
	}
	public void setReview_salty(String review_salty) {
		this.review_salty = review_salty;
	}
	public String getReview_easy() {
		return review_easy;
	}
	public void setReview_easy(String review_easy) {
		this.review_easy = review_easy;
	}
	public String getReview_fresh() {
		return review_fresh;
	}
	public void setReview_fresh(String review_fresh) {
		this.review_fresh = review_fresh;
	}
	public String getReview_many() {
		return review_many;
	}
	public void setReview_many(String review_many) {
		this.review_many = review_many;
	}
	public String getReview_delicious() {
		return review_delicious;
	}
	public void setReview_delicious(String review_delicious) {
		this.review_delicious = review_delicious;
	}
	
	
	
}
