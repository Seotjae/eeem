package gudi.pro.eeem.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import gudi.pro.eeem.dto.MeetDTO;
import gudi.pro.eeem.dto.PageDTO;
import gudi.pro.eeem.service.MeetService;

@Controller
public class MeetController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired MeetService meetService; 
	
	@RequestMapping(value = "/meetList", method = RequestMethod.GET)
	public String meetList(Model model, HttpSession session, 
			@RequestParam(value="meet_subject",required=false,defaultValue = "0")String meet_subject,
			@RequestParam(value="keyword",required=false,defaultValue = "")String keyword,
			@RequestParam(value="meet_point",required=false,defaultValue = "0") String meet_point) {
		
		ArrayList<MeetDTO> dto = meetService.meetList(keyword, meet_subject,meet_point);
		logger.info("dto.get(0).getMeet_thum : {}",dto.get(0).getMeet_thum());
		
		/*
		PageDTO page = new PageDTO();
		
		page.setCount(meetService.meetSerchCount(keyword));
		page.setKeyword(keyword);
		
		logger.info("Page.getCount() : {}",page.getCount());
		logger.info("page.getkeyword() : {}",page.getKeyword());
		*/
		model.addAttribute("meetList", dto);
		model.addAttribute("keyword", keyword);
		
		
		
		return "meet/meetList";
	}
	
	@RequestMapping(value = "/meetRegistForm", method = RequestMethod.GET)
	public String meetRegistForm(Model model) {
		logger.info("모임등록 작성  페이지 이동");
		meetService.loop();
		return "meet/meetRegistForm";
	}
	
	@RequestMapping(value = "/meetRegist", method = RequestMethod.POST)
	public String meetRegist(Model model, MultipartFile thum_file, @RequestParam HashMap<String, String> params, MultipartFile[] photos, HttpSession session) {
		logger.info("모임등록 요청 : {}",params.get("meet_point").isEmpty());
		logger.info("파일업로드 요청 : {}/{}",thum_file,photos.length);
		return meetService.meetRegist(thum_file,params,photos,session);
	}
	
	//2022-03-15 유현진 모임 상세보기
	
	@RequestMapping(value = "/meetDetail", method = RequestMethod.GET)
	public String meetDetail(Model model, @RequestParam String meet_num, HttpSession session) {
			logger.info("모임 detail 요청 : {}",meet_num);		
			
			//세션에 담기
			String mem_id = (String) session.getAttribute("loginId");
			model.addAttribute("mem_id", mem_id);
			//세션
		 		
		MeetDTO mDetaildto = meetService.meetDetail(meet_num);
					logger.info("왜 안되지?",meet_num);
					model.addAttribute("mDetail",mDetaildto);

		return "meetDetail";
	}
	
	

		

}
