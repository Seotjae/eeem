package gudi.pro.eeem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import gudi.pro.eeem.service.MemberService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class MemberController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired MemberService service;
	
	/*마이페이지 클릭시*/
	@RequestMapping(value = "/myPagePwCk", method = RequestMethod.GET)
	public String MyPagePwCk(Model model) {
		
		logger.info("마이페이지 이동");

		return "myPage/myPagePwCk";
	}
	
	
	
}
