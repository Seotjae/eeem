package gudi.pro.eeem.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		boolean pass = false;
		HttpSession session = request.getSession();
		
		if (session.getAttribute("loginId") != null) {
			pass = true;
		}else {
			pass=false;
			
			response.sendRedirect("/eeem/loginAlert");
		}
		
		
		return pass;
	}

	/*
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView mav) throws Exception {
		String content = "로그인이 필요합니다.";
		mav.addObject("loginmsg",content);
	}
	*/
	
	
	

}
