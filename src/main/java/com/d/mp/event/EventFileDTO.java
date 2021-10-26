package com.d.mp.event;

public class EventFileDTO {

	private Long event_file_id;
	private Long event_id;
	private String event_file_name;
	private String event_file_ori_name;
	private String event_file_path;
	
	
	
	
	public String getEvent_file_path() {
		return event_file_path;
	}
	public void setEvent_file_path(String event_file_path) {
		this.event_file_path = event_file_path;
	}
	public Long getEvent_file_id() {
		return event_file_id;
	}
	public void setEvent_file_id(Long event_file_id) {
		this.event_file_id = event_file_id;
	}
	public Long getEvent_id() {
		return event_id;
	}
	public void setEvent_id(Long event_id) {
		this.event_id = event_id;
	}
	public String getEvent_file_name() {
		return event_file_name;
	}
	public void setEvent_file_name(String event_file_name) {
		this.event_file_name = event_file_name;
	}
	public String getEvent_file_ori_name() {
		return event_file_ori_name;
	}
	public void setEvent_file_ori_name(String event_file_ori_name) {
		this.event_file_ori_name = event_file_ori_name;
	}
	
	
}
