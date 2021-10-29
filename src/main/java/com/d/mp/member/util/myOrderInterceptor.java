package com.d.mp.member.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.d.mp.member.MemberDTO;

public class myOrderInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		
		MemberDTO memberDTO =(MemberDTO)request.getSession().getAttribute("member");		
		StringBuffer returnUrl=request.getRequestURL();
		String parameter = request.getParameter("payment_id");
		
		//로그인 되어있지 않으면
		if (memberDTO == null) {
			response.sendRedirect(request.getContextPath()+"/member/login?returnUrl="+returnUrl+"?payment_id="+parameter);
			return false;
		}

		String session_id = Long.toString(memberDTO.getMember_id());
		String member_id = parameter.substring(parameter.length()-session_id.length(), parameter.length());

		System.out.println("session_id : " + session_id);
		System.out.println("member_id : " + member_id);
		
		//로그인 id와 파싱한 id가 다를경우
		if(!session_id.equals(member_id)) {
			response.sendRedirect(request.getContextPath()+"/member/myOrderList");
			return false;
		}
		
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}

}
