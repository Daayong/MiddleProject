package com.d.mp.event;

import java.sql.Date;

public class EventDTO {

	private Long event_id;
	private String event_subject;
	private String event_content;
	private Long event_type;
	private Date event_regDate;
	private Date event_startDate;
	private Date event_endDate;
	
	public Long getEvent_id() {
		return event_id;
	}
	public void setEvent_id(Long event_id) {
		this.event_id = event_id;
	}
	public String getEvent_subject() {
		return event_subject;
	}
	public void setEvent_subject(String event_subject) {
		this.event_subject = event_subject;
	}
	public String getEvent_content() {
		return event_content;
	}
	public void setEvent_content(String event_content) {
		this.event_content = event_content;
	}
	public Long getEvent_type() {
		return event_type;
	}
	public void setEvent_type(Long event_type) {
		this.event_type = event_type;
	}
	public Date getEvent_regDate() {
		return event_regDate;
	}
	public void setEvent_regDate(Date event_regDate) {
		this.event_regDate = event_regDate;
	}
	public Date getEvent_startDate() {
		return event_startDate;
	}
	public void setEvent_startDate(Date event_startDate) {
		this.event_startDate = event_startDate;
	}
	public Date getEvent_endDate() {
		return event_endDate;
	}
	public void setEvent_endDate(Date event_endDate) {
		this.event_endDate = event_endDate;
	}
	
	
}
