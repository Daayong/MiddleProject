package com.d.mp.member;

public class MemberDTO {

	private Long member_id;
	private String member_user_id; 
	private String member_password; 
	private String member_name; 
	private Long member_phone; 
	private String member_email; 
	private Long member_birth; 
	private String member_address; 
	private int member_type;
	
	
	
	public Long getMember_id() {
		return member_id;
	}
	public void setMember_id(Long member_id) {
		this.member_id = member_id;
	}
	public String getMember_user_id() {
		return member_user_id;
	}
	public void setMember_user_id(String member_user_id) {
		this.member_user_id = member_user_id;
	}
	public String getMember_password() {
		return member_password;
	}
	public void setMember_password(String member_password) {
		this.member_password = member_password;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public Long getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(Long member_phone) {
		this.member_phone = member_phone;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public Long getMember_birth() {
		return member_birth;
	}
	public void setMember_birth(Long member_birth) {
		this.member_birth = member_birth;
	}
	public String getMember_address() {
		return member_address;
	}
	public void setMember_address(String member_address) {
		this.member_address = member_address;
	}
	public int getMember_type() {
		return member_type;
	}
	public void setMember_type(int member_type) {
		this.member_type = member_type;
	} 
	
}
