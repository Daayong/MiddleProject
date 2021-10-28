package com.d.mp.myAct.couselList;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.d.mp.cs.qna.QnaDTO;
import com.d.mp.cs.qna.QnaService;
import com.d.mp.member.MemberDTO;

@Controller
@RequestMapping("/myAct/**")
public class CounselListController {
	
	@Autowired
	private QnaService qnaService;
	
	@RequestMapping("customerCounselList")
	public ModelAndView cusomerCounseList() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("myAct/customerCounselList");
		return mv;
	}
	
	@GetMapping("customerCounselList")
	public String getMyCounselList(Model model, HttpSession session) throws Exception{
		
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		model.addAttribute("qnaList", qnaService.getMyCounselList(memberDTO));
		return "myAct/customerCounselList";
		
	}
	
	@GetMapping("MycounselDelete")
	@ResponseBody
	public String setDeleteMyCounsel(QnaDTO qnaDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = qnaService.setDeleteMyCounsel(qnaDTO);
		
		String message = "0";
		
		if(result>0) {
			message = "1";
		}
		
		return message;
		
	}
	
	
}
