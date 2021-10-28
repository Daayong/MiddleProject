package com.d.mp.member;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

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

import com.d.mp.address.AddressDTO;
import com.d.mp.cs.notice.NoticeService;
import com.d.mp.order.cart.CartDTO;
import com.d.mp.order.cart.CartService;
import com.d.mp.order.payment.PaymentDTO;
import com.d.mp.order.payment.PaymentService;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService; 
	
	@Autowired
	private PaymentService paymentService;
	
	@Autowired
	private CartService cartService;
	
	
/*---------------------------------- 로그인/로그아웃 시작---------------------------------------------- */	
	@GetMapping("login")
	public ModelAndView login(String check, String returnUrl) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/login");
		mv.addObject("check", check);
		mv.addObject("returnUrl",returnUrl);
		return mv;
	}

	@PostMapping("login")
	public ModelAndView login(MemberDTO memberDTO, HttpSession session, String check,String returnUrl)throws Exception{
		ModelAndView mv = new ModelAndView();
		memberDTO = memberService.getLogin(memberDTO);
		
		if(memberDTO !=null) {
			System.out.println("로그인 성공");
			session.setAttribute("member", memberDTO);
			if(check.equals("1")) {
				mv.setViewName("redirect:member/myPage");
			}else if(!returnUrl.equals("")){
				mv.setViewName("redirect:"+returnUrl);
			}else {
				mv.setViewName("redirect:../");
			}
		}else{
			System.out.println("로그인 실패");
			String message = "일치하는 정보가 없습니다";
			mv.addObject("msg", message);
		}return mv;
	}

	// myCookit
	@GetMapping("myPage")
	public ModelAndView myPage(HttpSession session,CartDTO cartDTO) throws Exception{
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		String id ="";	
		ModelAndView mv = new ModelAndView();
		if(memberDTO!=null) {
			AddressDTO addressDTO = memberService.getDefaultAddress(memberDTO);
			if(addressDTO !=null) {
				id=addressDTO.getAddress();
			}
			cartService.updateCartStateBeforePayment(memberDTO);
			List<CartDTO> cl=cartService.getOrderCount(memberDTO);
			int count=cl.size();
			List<CartDTO> paymentState=cartService.getPayFinish(memberDTO);
			List<CartDTO> etcState=cartService.getState(memberDTO);
			
			mv.addObject("paymentListDTOs", paymentService.getPaymentList(memberDTO));
			mv.addObject("getOrderCount",count);
			mv.addObject("paymentState", paymentState);
			mv.addObject("etcState",etcState);
			mv.addObject("address", addressDTO);
			mv.setViewName("member/myPage");
		}else {
			mv.setViewName("redirect:./login?check=1");
		}		
			return mv;
	}

	@GetMapping("logout")
	public ModelAndView logout(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		// 세션 시간 0으로 만들어주기
		session.invalidate();
		mv.setViewName("redirect:../");
		return mv;
	}

	/*---------------------------------- 로그인/로그아웃 종료---------------------------------------------- */

	/*--------------------------------- 약관동의/회원가입/아이디 중복체크 시작--------------------------------------*/
	// 약관동의
	@GetMapping("check")
	public String check() throws Exception {
		return "member/check";
	}

	// 회원가입
	@GetMapping("join")
	public String join() throws Exception {
		return "member/join";
	}

	@PostMapping("join")
	public ModelAndView join(MemberDTO memberDTO, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();
		memberDTO.setMember_birth(
				memberDTO.getBirth_yy() + "-" + memberDTO.getBirth_mm() + "-" + memberDTO.getBirth_dd());

		String phone_f = request.getParameter("phone_f");
		String member_phone_m = request.getParameter("member_phone_m");
		String member_phone_b = request.getParameter("member_phone_b");

		memberDTO.setMember_phone(phone_f + "-" + member_phone_m + "-" + member_phone_b);

		String member_email_f = request.getParameter("member_email_f");
		String member_email_b = request.getParameter("member_email_b");

		memberDTO.setMember_email(member_email_f + "@" + member_email_b);

		int result = memberService.setJoin(memberDTO);

		if (result > 0) {
			System.out.println("회원가입 성공");
		} else {
			System.out.println("회원가입 실패");
		}
		mv.setViewName("redirect:./login");
		return mv;
	}

	// 아이디중복체크
	@GetMapping("idCheck")
	@ResponseBody
	public int getIdCheck(@RequestParam("member_user_id") String member_user_id) throws Exception {
		int cId = memberService.getIdCheck(member_user_id);
		System.out.println(cId);
		return cId;
	}

	// 패스워드 체크
	@PostMapping("pwCheck")
	@ResponseBody
	public int getPwCheck(MemberDTO memberDTO, HttpSession session) throws Exception {
		int result = memberService.getPwCheck(memberDTO);
		return result;
	}

	/*--------------------------------- 약관동의/회원가입/아이디 중복체크 종료--------------------------------------*/

	/*--------------------------------- 아이디/패스워드 찾기 시작--------------------------------------*/

	@GetMapping("findLog")
	public String findLog() {
		return "member/findLog";
	}

	@PostMapping("findId")
	@ResponseBody
	public String getFindId(MemberDTO memberDTO, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		memberDTO = memberService.charSet(memberDTO);
		memberDTO = memberService.getFindId(memberDTO);
		String message = "1";
		if (memberDTO != null) {
			System.out.println("일치하는 정보 있음");
			message = memberDTO.getMember_user_id();
			message = message.substring(0, message.length() - 2);
			message = message + "**";
		} else {
			System.out.println("일치하는 정보 없음");
		}
		return message;
	}

	@PostMapping("quickPass")
	@ResponseBody
	public String quickPass(MemberDTO memberDTO) throws Exception {
		System.out.println("hi");
		// 1.INPUT에 입력받은 정보에 맞는 member가 있는지 확인하기
		// 2.있으면 임시비밀번호 발급해서
		// 3.해당되는 member 비밀번호에 발급된 임시비밀번호 update해주기
		// 4.발급된 임시비밀번호 값 콘솔창에 띄워주기
		String result = memberService.getFindPass(memberDTO);
		return result;
	}

	/*--------------------------------- 아이디/패스워드 찾기 종료--------------------------------------*/

	/*--------------------------------- 회원 탈퇴/수정 시작--------------------------------------*/

	@GetMapping("memberDelete")
	public String setDelete() throws Exception {
		return "member/memberDelete";
	}

	@GetMapping("delete")
	public ModelAndView setDelete(HttpSession session) throws Exception {
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		int result = memberService.setDelete(memberDTO);
		session.invalidate();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:../");
		return mv;
	}

	@GetMapping("memberUpdateConfirm")
	public String setUpdateConfirm() throws Exception {
		return "member/memberUpdateConfirm";
	}

	@GetMapping("memberUpdate")
	public ModelAndView setUpdate(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberDTO sessionDTO = (MemberDTO) session.getAttribute("member");
		memberService.setUpdateSplit(sessionDTO);
		mv.setViewName("member/memberUpdate");
		return mv;
	}

	@PostMapping("update")
	public ModelAndView setUpdate(MemberDTO memberDTO,HttpSession session)throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberDTO sessionDTO = (MemberDTO) session.getAttribute("member");
		memberDTO.setMember_phone(sessionDTO.getMember_phone_f()+"-"+sessionDTO.getMember_phone_m()+"-"+sessionDTO.getMember_phone_b());
		memberDTO.setMember_email(memberDTO.getMember_email_f() + "@" + memberDTO.getMember_email_b());
		memberDTO.setMember_birth(sessionDTO.getBirth_yy()+"-"+sessionDTO.getBirth_mm()+"-"+sessionDTO.getBirth_dd());
		memberService.setUpdate(memberDTO);
		session.setAttribute("member", memberDTO);
		mv.setViewName("redirect:../");
		return mv;
	}

	/*--------------------------------- 회원 탈퇴/수정 종료 --------------------------------------*/

	/*--------------------------------- 주소 관련 시작 --------------------------------------*/

	//배송지 리스트 불러오기 
	@GetMapping("myaddress")
	public ModelAndView getAddressList(AddressDTO addressDTO,HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberDTO sessionDTO = (MemberDTO) session.getAttribute("member");
		addressDTO.setMember_id(sessionDTO.getMember_id());
		List<AddressDTO> ar = memberService.getAddressList(addressDTO);
		mv.addObject("list", ar);
		mv.setViewName("member/myaddress");
		return mv;
	}
	
	//배송지추가 버튼 눌렀을 때 경로 매핑 
	@GetMapping("addAddress")
	public String addAddress() throws Exception {
		return "member/addAddress";
	}
	
	//배송지 추가 
	@PostMapping("addAddress")
	@ResponseBody
	public int setAddAddress(AddressDTO addressDTO,HttpServletRequest request)throws Exception{
		System.out.println("hello1");
		String pf=request.getParameter("member_phone_f");
		String pm=request.getParameter("member_phone_m");
		String pb=request.getParameter("member_phone_b");
		
		addressDTO.setRecipient_phone(pf + "-" + pm + "-" + pb);
		
		System.out.println("hello2");

		if(memberService.getAddressList(addressDTO)==null) {
			addressDTO.setDefault_check(1);
			System.out.println("hello");
		}else {
			addressDTO.setDefault_check(0);
		}
		
		System.out.println("hello3");
		return memberService.setAddAddress(addressDTO);
	}
	
	//배송지 추가 개수 제한 
	@GetMapping("checkInsert")
	@ResponseBody
	public Boolean checkInsert(AddressDTO addressDTO,MemberDTO memberDTO)throws Exception {
		List<AddressDTO> ar = memberService.getAddressList(addressDTO);
		Boolean result=false;
		if(ar.size()<4) {
			result= true; 
		}
		
		return result; 
	}
	
	//배송지 삭제 
	@GetMapping("addressDelete")
	@ResponseBody
	public String setAddressDelete(AddressDTO addressDTO)throws Exception{
		int result=memberService.setAddressDelete(addressDTO);
		String message="0";
		if(result>0) {
			message="1";
		}
		return message;
	}
	
	//기본배송지 수정 
	@GetMapping("defaultChange")
	@ResponseBody
	public int setAddressDefaultUpdate(AddressDTO addressDTO,HttpSession session)throws Exception{
		MemberDTO sessionDTO = (MemberDTO) session.getAttribute("member");
		addressDTO.setMember_id(sessionDTO.getMember_id());
		memberService.allSetzero(addressDTO);
		return memberService.setAddressDefaultUpdate(addressDTO);
	}
	
	//배송지수정 버튼 눌렀을 때 (배송지 1개 조회)
	@GetMapping("adUpdate")
	public ModelAndView adUpdate(AddressDTO addressDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		addressDTO=memberService.getAddressOne(addressDTO);
		String i=addressDTO.getRecipient_phone();
		System.out.println(i);
		String[] phone=memberService.splitRePhone(addressDTO);
		mv.addObject("member_phone_f", phone[0]);
		mv.addObject("member_phone_m", phone[1]);
		mv.addObject("member_phone_b", phone[2]);
		mv.addObject("address", addressDTO);
		mv.setViewName("member/adUpdate");
		return mv;
	}

	
	//배송지 수정 
	@PostMapping("addressUpdate")
	@ResponseBody
	public int setAddressUpdate(AddressDTO addressDTO,HttpServletRequest request)throws Exception{
		String pf=request.getParameter("member_phone_f");
		String pm=request.getParameter("member_phone_m");
		String pb=request.getParameter("member_phone_b");
		addressDTO.setRecipient_phone(pf + "-" + pm + "-" + pb);
		return memberService.setAddressUpdate(addressDTO);
	}


/*--------------------------------- 주문/배송 조회 시작 --------------------------------------*/	
	@GetMapping("myOrderList")
 	public String myOrderList(Model model, HttpSession session) throws Exception{
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		cartService.updateCartStateBeforePayment(memberDTO);
		model.addAttribute("paymentListDTOs", paymentService.getPaymentList(memberDTO));
		
		return "member/myOrderList";		
	}

/*--------------------------------- 주문상세 시작 --------------------------------------*/	
	@GetMapping("myOrder")
 	public String myOrder(Model model, PaymentDTO paymentDTO) throws Exception{
		return "member/myOrder";
	}

	
	
}
