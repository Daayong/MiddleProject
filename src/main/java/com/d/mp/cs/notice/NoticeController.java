package com.d.mp.cs.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.d.mp.board.util.boardPager;

@Controller
@RequestMapping("/cs/**")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	
	@GetMapping("noticeMain")
	public ModelAndView getNoticeList(boardPager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
				
		List<NoticeDTO> ar = noticeService.getNoticeList(pager);
		
		mv.addObject("pager", pager);
		mv.addObject("noticelist", ar);
		mv.setViewName("cs/noticeMain");
		
		return mv;
	}
	
	@GetMapping("noticeView")
	public ModelAndView getNoticeView(NoticeDTO noticeDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		noticeDTO = noticeService.getNoticeView(noticeDTO);
		List<NoticeFileDTO> files = noticeService.getFile(noticeDTO);
		mv.addObject("dto", noticeDTO);
		
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
	
	
	@GetMapping("noticeDelete")
	public ModelAndView setDelete(NoticeDTO noticeDTO) throws Exception{
		
		int result = noticeService.setDelete(noticeDTO);
		
		ModelAndView mv = new ModelAndView();
		
		String message = "삭제에 실패했습니다";
		
		if(result>0) {
			message = "삭제되었습니다";
		}
		
		mv.addObject("msg", message);
		mv.addObject("url", "./noticeMain");
		
		mv.setViewName("common/result");
		
		return mv;
	}
	

}
