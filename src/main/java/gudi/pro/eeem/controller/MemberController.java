package gudi.pro.eeem.controller;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import gudi.pro.eeem.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired MemberService memService;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	
	
	@RequestMapping(value = "/registForm", method = RequestMethod.GET)
	public String registForm(Model model) {
		logger.info("회원가입 작성폼 이동");
		
		return "registForm";
	}
	
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String regist(Model model, @RequestParam HashMap<String, String> params) {
		logger.info("회원가입 요청 : {}", params);
		memService.regist(params);
		return "index";
	}
	
	@RequestMapping(value = "/idCheck", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> idCheck(Model model, @RequestParam String mem_id) {
		logger.info("아이디 중복확인 요청 : {}",mem_id);
		return memService.idCheck(mem_id);
	}
	
	@RequestMapping(value = "/phCheck", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> phCheck(Model model, @RequestParam String mem_phone) {
		logger.info("전화번호 중복확인 요청 : {}",mem_phone);
		return memService.phCheck(mem_phone);
	}
	

}
