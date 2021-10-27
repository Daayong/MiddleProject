package com.d.mp.cs.qna;

import java.sql.Date;

public class QnaListDTO {
	
	private Long qna_id;
	private Long member_id;
	private String qna_content;
	private String qna_type;
	private String qna_email;
	private Date qna_date;
	private String qna_answer;
	private Date qna_answer_date;
	private Long payment_id;
	private String qna_phone;
	
	
	public Long getQna_id() {
		return qna_id;
	}
	public void setQna_id(Long qna_id) {
		this.qna_id = qna_id;
	}
	public Long getMember_id() {
		return member_id;
	}
	public void setMember_id(Long member_id) {
		this.member_id = member_id;
	}
	public String getQna_content() {
		return qna_content;
	}
	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}
	public String getQna_type() {
		return qna_type;
	}
	public void setQna_type(String qna_type) {
		this.qna_type = qna_type;
	}
	public String getQna_email() {
		return qna_email;
	}
	public void setQna_email(String qna_email) {
		this.qna_email = qna_email;
	}
	public String getQna_phone() {
		return qna_phone;
	}
	public void setQna_phone(String qna_phone) {
		this.qna_phone = qna_phone;
	}
	public Date getQna_date() {
		return qna_date;
	}
	public void setQna_date(Date qna_date) {
		this.qna_date = qna_date;
	}
	public String getQna_answer() {
		return qna_answer;
	}
	public void setQna_answer(String qna_answer) {
		this.qna_answer = qna_answer;
	}
	public Date getQna_answer_date() {
		return qna_answer_date;
	}
	public void setQna_answer_date(Date qna_answer_date) {
		this.qna_answer_date = qna_answer_date;
	}
	public Long getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(Long payment_id) {
		this.payment_id = payment_id;
	}
	
	
	
	

}
