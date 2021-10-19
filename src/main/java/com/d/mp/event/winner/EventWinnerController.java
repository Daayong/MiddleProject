package com.d.mp.event.winner;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.d.mp.cs.notice.NoticeDTO;
import com.d.mp.event.EventDTO;
import com.d.mp.event.EventFileDTO;


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
	public ModelAndView getWinnerView(EventWinnerDTO eventWinnerDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		eventWinnerDTO = eventWinnerService.getWinnerView(eventWinnerDTO);
	
		mv.addObject("dto", eventWinnerDTO);
		return mv;
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
	

	@GetMapping("winnerEventDelete")
	public ModelAndView setEventDelete(EventWinnerDTO eventWinnerDTO) throws Exception{
		
		int result = eventWinnerService.setEventDelete(eventWinnerDTO);
		
		ModelAndView mv = new ModelAndView();
		
		String message = "삭제에 실패했습니다";
		
		if(result>0) {
			message = "삭제되었습니다";
		}
		
		mv.addObject("msg", message);
		mv.addObject("url", "./winnerMain");
		
		mv.setViewName("common/result");
		
		return mv;
	}
	
}
