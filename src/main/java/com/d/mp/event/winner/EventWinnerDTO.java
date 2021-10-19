package com.d.mp.event.winner;

import java.sql.Date;

public class EventWinnerDTO {
	
	private Long event_winner_id;
	private String event_winner_subject;
	private String event_winner_content;
	private Date event_winner_regDate;
	
	public Long getEvent_winner_id() {
		return event_winner_id;
	}
	public void setEvent_winner_id(Long event_winner_id) {
		this.event_winner_id = event_winner_id;
	}
	public String getEvent_winner_subject() {
		return event_winner_subject;
	}
	public void setEvent_winner_subject(String event_winner_subject) {
		this.event_winner_subject = event_winner_subject;
	}
	public String getEvent_winner_content() {
		return event_winner_content;
	}
	public void setEvent_winner_content(String event_winner_content) {
		this.event_winner_content = event_winner_content;
	}
	public Date getEvent_winner_regDate() {
		return event_winner_regDate;
	}
	public void setEvent_winner_regDate(Date event_winner_regDate) {
		this.event_winner_regDate = event_winner_regDate;
	}
	
	
}
