package com.d.mp.event.winner;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/event/**")
public class EventWinnerController {

	@Autowired
	private EventWinnerService eventWinnerService;
	
	@GetMapping("winnerMain")
	public ModelAndView getWinnerList() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<EventWinnerDTO> ar = eventWinnerService.getWinnerList();
		mv.addObject("winnerList", ar);
		
		mv.setViewName("event/winnerMain");
		
		return mv;
	}
	
	
	@GetMapping("winnerView")
	public String planView() throws Exception{
		return "event/winnerView";
	}
	
	@GetMapping("winnerUpload")
	public ModelAndView setWinnerList() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("event/winnerUpload");
		
		return mv;
	}
	
	@PostMapping("winnerUpload")
	public ModelAndView setWinnerList(EventWinnerDTO eventWinnerDTO) throws Exception{
		
		
		ModelAndView mv = new ModelAndView();
		int result = eventWinnerService.setWinnerList(eventWinnerDTO);
		mv.setViewName("redirect:./eventMain");
		return mv;
	}
}
