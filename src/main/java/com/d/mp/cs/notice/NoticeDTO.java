package com.d.mp.cs.notice;

import java.sql.Date;

public class NoticeDTO {
	
	private Long notice_id;
	private String notice_subject;
	private String notice_content;
	private Date notice_regDate;
	
	
	public Long getNotice_id() {
		return notice_id;
	}
	public void setNotice_id(Long notice_id) {
		this.notice_id = notice_id;
	}
	public String getNotice_subject() {
		return notice_subject;
	}
	public void setNotice_subject(String notice_subject) {
		this.notice_subject = notice_subject;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public Date getNotice_regDate() {
		return notice_regDate;
	}
	public void setNotice_regDate(Date notice_regDate) {
		this.notice_regDate = notice_regDate;
	}
	
	
	

}
