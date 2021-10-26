package com.d.mp.cookit.menu.prd.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.d.mp.member.MemberDTO;

public class ProductInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		MemberDTO memberDTO =(MemberDTO)request.getSession().getAttribute("member");	
		
		int member_type = 0;
		
		if(memberDTO != null) {
			member_type = memberDTO.getMember_type();
		}
		
		if(member_type != 1) {
			
			response.sendRedirect(request.getContextPath() + "/");
			return false;
			
		}else {
			
			return true;
			
		}
		
	}
}
