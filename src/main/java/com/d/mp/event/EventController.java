package com.d.mp.event;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
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
		mv.addObject("eventList", ar);
		
		mv.setViewName("event/eventMain");
		
		return mv;
	}
	
	
	@GetMapping("planView")
	public String planView() throws Exception{
		return "event/planView";
	}
	
	@GetMapping("eventUpload")
	public ModelAndView setEventList() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("event/eventUpload");
		
		return mv;
	}
	
	@PostMapping("eventUpload")
	public ModelAndView setEventList(EventDTO eventDTO, MultipartFile [] files) throws Exception{
		
		for(MultipartFile multipartFile : files) {
			System.out.println(multipartFile.getOriginalFilename());
		}
		
		ModelAndView mv = new ModelAndView();
		int result = eventService.setEventList(eventDTO, files);
		mv.setViewName("redirect:./eventMain");
		return mv;
	}
}
