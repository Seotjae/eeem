package gudi.pro.eeem.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import gudi.pro.eeem.dto.ManagerDTO;
import gudi.pro.eeem.service.ManagerService;

@Controller
public class ManagerController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired ManagerService managerService;
	
	@RequestMapping(value = "/managerDeclaration", method = RequestMethod.GET)
	public String managerDeclaration(Model model, HttpSession session) {
		logger.info("관리자 페이지 이동");
		
		String mem_id = (String) session.getAttribute("loginId");
		model.addAttribute("loginId", mem_id);
		return "/manager/managerDeclaration";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/declarationListCall", method = RequestMethod.GET)
	public HashMap<String, Object> declarationListCall(@RequestParam String page, @RequestParam String cnt, HttpSession session) {
	logger.info("신고 리스트 요청 : {} 페이지 / {} 개 씩",page,cnt);
	
	int currPage = Integer.parseInt(page);
	int pagePerCnt = Integer.parseInt(cnt);
	

		return managerService.declarationListCall(currPage, pagePerCnt);
	}
	
	@RequestMapping(value = "/declarationMore", method = RequestMethod.GET)
	public String declarationMore(Model model, HttpSession session) {
		logger.info("관리자 페이지 이동");
		String mem_id = (String) session.getAttribute("loginId");
		model.addAttribute("loginId", mem_id);
		
		return "/manager/declarationMore";
	}
	
	@ResponseBody
	@RequestMapping(value = "/checkCont", method = RequestMethod.POST)
	public HashMap<String, Object> checkCont(@RequestParam int dec_type, @RequestParam int dec_targetNum, HttpSession session) {
	logger.info("dec_type : {}, dec_targetNum : {}",dec_type,dec_targetNum);
	
		return managerService.checkCont(dec_type, dec_targetNum);
	}

	@RequestMapping(value = "/sct_regist", method = RequestMethod.POST)
	public String sct_regist(Model model, @RequestParam HashMap<String, String> params, HttpSession session) {
		logger.info("제재 등록 요청 : {}",params);
		
		String sct_admin = (String) session.getAttribute("loginId");
		params.put("sct_admin", sct_admin);
		managerService.sct_regist(params);
		
		
		return "manager/managerDeclaration";
	}
	
	

}
