package com.d.mp.member;

import java.lang.ProcessBuilder.Redirect;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService; 
	
	
/*---------------------------------- 로그인/로그아웃 시작---------------------------------------------- */	
	@GetMapping("login")
	public ModelAndView login(String check) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/login");
		mv.addObject("check", check);
		return mv;
	}
	
	@PostMapping("login")
	public ModelAndView login(MemberDTO memberDTO,HttpSession session, String check)throws Exception{
		ModelAndView mv = new ModelAndView();
		memberDTO = memberService.getLogin(memberDTO);
		
		if(memberDTO !=null) {
			System.out.println("로그인 성공");
			session.setAttribute("member", memberDTO);
			mv.addObject("member", memberDTO);
			
			
			if(check.equals("1")) {
				mv.setViewName("redirect:member/myPage");
			}else if(check.equals("2")){
				mv.setViewName("redirect:../cs/formCounsel");
			}else{
				mv.setViewName("redirect:../");
			}
		
		}else {
			System.out.println("로그인 실패");
			String message="일치하는 정보가 없습니다";
			mv.addObject("msg", message);
		}
		return mv;
	}

	
	//myCookit	
	@GetMapping("myPage")
	public ModelAndView myPage(HttpSession session) throws Exception{
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		ModelAndView mv = new ModelAndView();
		if(memberDTO!=null) {
			mv.setViewName("member/myPage");
		}else {
			mv.setViewName("redirect:./login?check=1");
		}		
			return mv;
	}
		
	@GetMapping("logout")
	public ModelAndView logout(HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		//세션 시간 0으로 만들어주기
		session.invalidate(); 
		mv.setViewName("redirect:../");
		return mv; 
	}
	
/*---------------------------------- 로그인/로그아웃 종료---------------------------------------------- */


	
/*--------------------------------- 약관동의/회원가입/아이디 중복체크 시작--------------------------------------*/
	//약관동의
	@GetMapping("check")
	public String check()throws Exception {
		return "member/check";
	}
	
	//회원가입
	@GetMapping("join")
	public String join()throws Exception {
		return "member/join";
	}

	@PostMapping("join")
	public ModelAndView join(MemberDTO memberDTO, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		String birth_yy = request.getParameter("birth_yy");
		String birth_mm = request.getParameter("birth_mm");
		String birth_dd = request.getParameter("birth_dd");
		
		memberDTO.setMember_birth(birth_yy+"-"+birth_mm+"-"+birth_dd);
		
		String phone_f = request.getParameter("phone_f");
		String member_phone_m = request.getParameter("member_phone_m");
		String member_phone_b = request.getParameter("member_phone_b");
		
		memberDTO.setMember_phone(phone_f+"-"+member_phone_m+"-"+member_phone_b);
		
		String member_email_f = request.getParameter("member_email_f");
		String member_email_b = request.getParameter("member_email_b");
		
		memberDTO.setMember_email(member_email_f+"@"+member_email_b);
		
		int result = memberService.setJoin(memberDTO);
		
		if(result>0) {
			System.out.println("회원가입 성공");
		}else {
			System.out.println("회원가입 실패");
		}	
		mv.setViewName("redirect:./login");
		return mv;
	}
	
	//아이디중복체크
	@GetMapping("idCheck")
	@ResponseBody
	public int getIdCheck(@RequestParam("member_user_id") String member_user_id)throws Exception{
		int cId=memberService.getIdCheck(member_user_id);
		System.out.println(cId);
		return cId;
	}
	
	//패스워드 체크
	@PostMapping("pwCheck")
	@ResponseBody
		public boolean getPwCheck(@RequestParam("member_user_id") String member_user_id,@RequestParam("member_password") String member_password)throws Exception{
		MemberDTO memberDTO = new MemberDTO();
		boolean result=memberService.getPwCheck(memberDTO.getMember_user_id(), memberDTO.getMember_password());
		return result; 
	}
	
	
	
	
/*--------------------------------- 약관동의/회원가입/아이디 중복체크 종료--------------------------------------*/	

/*--------------------------------- 아이디/패스워드 찾기 시작--------------------------------------*/	
	
	@GetMapping("findLog")
	public String findLog() {
		return "member/findLog";
	}

	
	
/*--------------------------------- 아이디/패스워드 찾기 종료--------------------------------------*/	

/*--------------------------------- 회원 탈퇴/수정 시작--------------------------------------*/	
	
	@GetMapping("memberDelete")
	public String setDelete()throws Exception{
		return "member/memberDelete";
	}
	
	@GetMapping("delete")
	public ModelAndView setDelete(HttpSession session)throws Exception {
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		int result = memberService.setDelete(memberDTO);
		session.invalidate();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:../");
		return mv;
	}
	
	@GetMapping("memberUpdateConfirm")
	public String setUpdateConfirm()throws Exception{
		return "member/memberUpdateConfirm";
	}
	
	@GetMapping("memberUpdate")
	public ModelAndView setUpdate()throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/memberUpdate");
		return mv;
	}
	
	@PostMapping("update")
	public ModelAndView setUpdate(MemberDTO memberDTO,HttpSession session)throws Exception{
		//수정 전 데이터 
		MemberDTO sessionDTO =(MemberDTO)session.getAttribute("member");
		//수정 후 데이터 
		memberDTO = memberService.setUpdate(memberDTO);
		memberDTO.setMember_id(sessionDTO.getMember_id());
		memberDTO.setMember_user_id(sessionDTO.getMember_user_id());
		memberDTO.setBirth_yy(sessionDTO.getBirth_yy());
		memberDTO.setBirth_mm(sessionDTO.getBirth_mm());
		memberDTO.setBirth_dd(sessionDTO.getBirth_dd());
		session.setAttribute("member", memberDTO);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:./myPage");
		return mv; 
	}
	
/*--------------------------------- 회원 탈퇴/수정 종료 --------------------------------------*/	
	
/*--------------------------------- 주소 관련 시작 --------------------------------------*/	
	
	@GetMapping("myaddress")
	public ModelAndView myAddress(HttpSession session, MemberDTO memberDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		memberDTO = memberService.getDefaultAddress(memberDTO);
		session.setAttribute("member_address", memberDTO);
		mv.addObject("member_address", memberDTO);
		mv.setViewName("member/myaddress");	
		return mv;
	}
		
	
	
}
