package com.d.mp.address;

public class AddressDTO {

	private Long address_id;
	private Long member_id;
	private String address;
	private String recipient_name;
	private int default_check;
	
	
	public Long getAddress_id() {
		return address_id;
	}
	public void setAddress_id(Long address_id) {
		this.address_id = address_id;
	}
	public Long getMember_id() {
		return member_id;
	}
	public void setMember_id(Long member_id) {
		this.member_id = member_id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRecipient_name() {
		return recipient_name;
	}
	public void setRecipient_name(String recipient_name) {
		this.recipient_name = recipient_name;
	}
	public int getDefault_check() {
		return default_check;
	}
	public void setDefault_check(int default_check) {
		this.default_check = default_check;
	}
	
	
}
