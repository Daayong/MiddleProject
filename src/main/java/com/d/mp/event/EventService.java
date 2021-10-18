package com.d.mp.event;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EventService {
	
	@Autowired
	private EventDAO eventDAO;
	
	
	public List<EventDTO> getEventList() throws Exception{
		return eventDAO.getEventList();	
	}
	
	public List<EventDTO> getWinnerList() throws Exception{
		return eventDAO.getWinnerList();
	}
	
	
}
