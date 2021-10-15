package com.d.mp.event;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/event/**")
public class EventController {

	@RequestMapping("eventMain")
	public String eventMain() throws Exception{
		return "event/eventMain" ;
	}
	
	
	@RequestMapping("planView")
	public String planView() throws Exception{
		return "event/planView";
	}
}
