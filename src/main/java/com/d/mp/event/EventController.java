package com.d.mp.event;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/event/**")
public class EventController {

	@Autowired
	private EventService eventService;
	
	//event type별 event list 불러오기
	@GetMapping("eventMain")
	public ModelAndView getEventList() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<EventDTO> ar = eventService.getEventList();
		List<EventDTO> ar1 = eventService.getWinnerList();
		
		mv.addObject("eventList", ar);
		mv.addObject("winnerList", ar1);
		
		mv.setViewName("event/eventMain");
		
		return mv;
	}
	
	
	@GetMapping("planView")
	public String planView() throws Exception{
		return "event/planView";
	}
	
	@RequestMapping("eventUpload")
	public String eventUpload() throws Exception{
		return "event/eventUpload";
	}
}
