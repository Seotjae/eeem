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
import org.springframework.web.multipart.MultipartFile;

import gudi.pro.eeem.service.MeetService;

@Controller
public class MeetController {
	
	@Autowired MeetService meetService;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@RequestMapping(value = "/meetList", method = RequestMethod.GET)
	public String meetList(Model model) {
		
		
		return "meet/meetList";
	}
	
	@RequestMapping(value = "/meetRegistForm", method = RequestMethod.GET)
	public String meetRegistForm(Model model) {
		logger.info("모임등록 작성  페이지 이동");
		return "meet/meetRegistForm";
	}
	
	@RequestMapping(value = "/meetRegist", method = RequestMethod.POST)
	public String meetRegist(Model model, MultipartFile thum_file, @RequestParam HashMap<String, String> params, MultipartFile[] photos) {
		logger.info("모임등록 요청 : {}",params);
		logger.info("파일업로드 요청 : {}/{}",thum_file,photos);
		return meetService.meetRegist(thum_file,params,photos);
	}
	

}
