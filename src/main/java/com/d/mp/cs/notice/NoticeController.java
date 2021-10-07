package com.d.mp.cs.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/cs/**")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	
	@GetMapping("noticeMain")
	public ModelAndView getNoticeList() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("cs/noticeMain");
		
		List<NoticeDTO> ar = noticeService.getNoticeList();
		mv.addObject("noticelist", ar);
		return mv;
	}
	
	@GetMapping("noticeUpload")
	public ModelAndView setInsert() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cs/noticeUpload");
		
		return mv;
	}
	
	@PostMapping("noticeUpload")
	public ModelAndView setInsert(NoticeDTO noticeDTO, MultipartFile [] files) throws Exception{
		
		for(MultipartFile multipartFile : files) {
			System.out.println(multipartFile.getOriginalFilename());
			
		}
		
		ModelAndView mv = new ModelAndView();
		int result = noticeService.setInsert(noticeDTO, files);
		mv.setViewName("redirect:./noticeMain");
		
		return mv;
	}
	
	

}
