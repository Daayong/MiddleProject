package com.d.mp.cs.qna;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.d.mp.member.MemberDTO;
import com.d.mp.order.payment.PaymentDTO;



@Controller
@RequestMapping("/cs/**")
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	
	@GetMapping("formCounsel")
	public ModelAndView setFormcounselUpload() throws Exception{
		ModelAndView mv = new ModelAndView();
			mv.setViewName("cs/formCounsel");
			return mv;
	}
	
	@PostMapping("formCounsel")
	public ModelAndView setFormcounselUpload(QnaDTO qnaDTO, HttpServletRequest request, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();

		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		
		String qna_phone_f = request.getParameter("qna_phone_f");
		String qna_phone_m = request.getParameter("qna_phone_m");
		String qna_phone_b = request.getParameter("qna_phone_b");
		
		String qna_email_f = request.getParameter("qna_email_id");
		String qna_email_b = request.getParameter("qna_email_domain2");
		
		
		qnaDTO.setQna_phone(qna_phone_f+"-"+qna_phone_m+"-"+qna_phone_b);
		
		qnaDTO.setQna_email(qna_email_f + "@" + qna_email_b);
		
		qnaDTO.setMember_id(memberDTO.getMember_id());
		
		int result = qnaService.setFormcounselUpload(qnaDTO);
		
		if(result>0) {
			System.out.println("글 작성 성공");
		}else {
			System.out.println("글 작성 실패");
		}
		
		mv.setViewName("cs/formCounselComplete");
		return mv;
	}
	
	
	

}
