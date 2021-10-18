package com.d.mp.member.util;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.d.mp.member.MemberDTO;


public class LoginInterceptor extends HandlerInterceptorAdapter {

@Override
public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
		throws Exception {
	
	MemberDTO memberDTO =(MemberDTO)request.getSession().getAttribute("member");	
	boolean result = false;
	//세션에 id가 null이면 
	if(memberDTO==null) {
		//로그인 페이지로 이동
		response.sendRedirect(request.getContextPath()+"/member/login");
		//컨트롤러를 실행하지 않는다.(요청페이지로 이동하지 않는다)
		return false;
	}else {
		//컨트롤러 실행(요청페이지로 이동)
		return true; 
	}
}
	
@Override
public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
		ModelAndView modelAndView) throws Exception {
	
	super.postHandle(request, response, handler, modelAndView);
}	
	
	
	
	
	
	
	
	
	
}
