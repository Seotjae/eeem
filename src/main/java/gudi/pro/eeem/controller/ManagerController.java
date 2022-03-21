package gudi.pro.eeem.controller;

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

import gudi.pro.eeem.service.ManagerService;

@Controller
public class ManagerController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired ManagerService managerService;
	
	@RequestMapping(value = "/managerDeclaration", method = RequestMethod.GET)
	public String managerDeclaration(Model model, HttpSession session) {
		logger.info("관리자 페이지 신고목록 이동");
		
		String mem_id = (String) session.getAttribute("loginId");
		model.addAttribute("loginId", mem_id);
		return "/manager/managerDeclaration";
	}
	
	@RequestMapping(value = "/managerMeetList", method = RequestMethod.GET)
	public String managerMeetList(Model model, HttpSession session) {
		logger.info("관리자 페이지 모임 목록 이동");
		
		String mem_id = (String) session.getAttribute("loginId");
		model.addAttribute("loginId", mem_id);
		return "/manager/managerMeetList";
	}
	
	@ResponseBody
	@RequestMapping(value = "/declarationListCall", method = RequestMethod.GET)
	public HashMap<String, Object> declarationListCall(@RequestParam String page, @RequestParam String cnt, HttpSession session) {
	logger.info("신고 리스트 요청 : {} 페이지 / {} 개 씩",page,cnt);
	
	int currPage = Integer.parseInt(page);
	int pagePerCnt = Integer.parseInt(cnt);
	

		return managerService.declarationListCall(currPage, pagePerCnt);
	}
	
	@ResponseBody
	@RequestMapping(value = "/managerMeetListCall", method = RequestMethod.GET)
	public HashMap<String, Object> managerMeetListCall(@RequestParam String page, @RequestParam String cnt, 
			@RequestParam String meet_state, @RequestParam String meet_subject,
			HttpSession session) {
	logger.info("모임 리스트 요청 : {} 페이지 / {} 개 씩",page,cnt);
	logger.info("검색 요청 : {} 페이지 / {} 개 씩",meet_state, meet_subject);
	
	int currPage = Integer.parseInt(page);
	int pagePerCnt = Integer.parseInt(cnt);
	int imeet_state = Integer.parseInt(meet_state);
	

		return managerService.managerMeetListCall(currPage, pagePerCnt, imeet_state, meet_subject);
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
	
	@RequestMapping(value = "/managerAdvertisement", method = RequestMethod.GET)
	public String managerAdvertisement(Model model, HttpSession session) {
		logger.info("광고 관리 페이지 이동");
		
		String mem_id = (String) session.getAttribute("loginId");
		model.addAttribute("loginId", mem_id);
		
		return "/manager/managerAdvertisement";
	}
	
	@ResponseBody
	@RequestMapping(value = "/meetAddList", method = RequestMethod.GET)
	public HashMap<String, Object> meetAddList(@RequestParam String page, @RequestParam String cnt, HttpSession session,
			@RequestParam String ad_state) {
	logger.info("광고 리스트 요청 : {} 페이지 / {} 개 씩",page,cnt);
	logger.info("검색 요청 : {} 페이지",ad_state);
	
	int currPage = Integer.parseInt(page);
	int pagePerCnt = Integer.parseInt(cnt);
	int add_state = Integer.parseInt(ad_state);
	

		return managerService.meetAddList(currPage, pagePerCnt, add_state);
	}
	

	@RequestMapping(value = "/managerSanctions", method = RequestMethod.GET)
	public String managerSanctions(Model model, HttpSession session) {
		logger.info("관리자 페이지 모임 목록 이동");
		
		String mem_id = (String) session.getAttribute("loginId");
		model.addAttribute("loginId", mem_id);
		return "/manager/managerSanctions";
	}

	@ResponseBody
	@RequestMapping(value = "/SanctionsListCall", method = RequestMethod.GET)
	public HashMap<String, Object> SanctionsListCall(@RequestParam String page, @RequestParam String cnt, HttpSession session) {
	logger.info("신고 리스트 요청 : {} 페이지 / {} 개 씩",page,cnt);
	
	int currPage = Integer.parseInt(page);
	int pagePerCnt = Integer.parseInt(cnt);
	return managerService.SanctionsListCall(currPage, pagePerCnt);
	}

	
	@RequestMapping(value = "/managerQnA", method = RequestMethod.GET)
	public String managerQnA(Model model, HttpSession session) {
		logger.info("광고 관리 페이지 이동");
		
		String mem_id = (String) session.getAttribute("loginId");
		model.addAttribute("loginId", mem_id);
		
		return "/manager/managerQnA";
	}
	
	
	
	@ResponseBody
	@RequestMapping(value = "/QnAList", method = RequestMethod.GET)
	public HashMap<String, Object> QnAList(@RequestParam String page, @RequestParam String cnt, HttpSession session) {
	logger.info("QnA 리스트 요청 : {} 페이지 / {} 개 씩",page,cnt);
	
	
	int currPage = Integer.parseInt(page);
	int pagePerCnt = Integer.parseInt(cnt);
	

		return managerService.QnAList(currPage, pagePerCnt);
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/upQue_state", method = RequestMethod.POST)
	public HashMap<String, Object> upQue_state(Model model , @RequestParam String que_num, HttpSession session) {
	logger.info("upQue_state 요청");
	
	HashMap<String, Object> map = new HashMap<String, Object>();
	
	int upQue_num = Integer.parseInt(que_num);

		return managerService.upQue_state(upQue_num);
	}
	
	
	@RequestMapping(value = "/managerMemList", method = RequestMethod.GET)
	public String managerMemList(Model model, HttpSession session) {
		logger.info("관리자 페이지 회원 목록 이동");
		
		String mem_id = (String) session.getAttribute("loginId");
		model.addAttribute("loginId", mem_id);
		return "/manager/managerMemList";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/managerMemListCall", method = RequestMethod.GET)
	public HashMap<String, Object> managerMemListCall(@RequestParam String page, @RequestParam String cnt, HttpSession session) {
	logger.info("광고 리스트 요청 : {} 페이지 / {} 개 씩",page,cnt);
	logger.info("검색 요청 : {} 페이지");
	
	int currPage = Integer.parseInt(page);
	int pagePerCnt = Integer.parseInt(cnt);
	
	

		return managerService.managerMemListCall(currPage, pagePerCnt);
	}

	

	
	
	@ResponseBody
	@RequestMapping(value = "/checkCont2", method = RequestMethod.POST)
	public HashMap<String, Object> checkCont2(@RequestParam int dec_type, @RequestParam int dec_targetNum, HttpSession session) {
	logger.info("dec_type : {}, dec_targetNum : {}",dec_type,dec_targetNum);
	
		return managerService.checkCont2(dec_type, dec_targetNum);
	}
}
