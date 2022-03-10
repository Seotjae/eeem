package gudi.pro.eeem.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import gudi.pro.eeem.dto.MeetDTO;
import gudi.pro.eeem.service.HomeService;

@Controller
public class HomeController {
	
	@Autowired HomeService homeservice;
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model,HttpSession session) {
		logger.info("메인화면 이미지요청");
		ArrayList<MeetDTO>meetdto = homeservice.home();
		
		logger.info("meetdto no :{} ",meetdto);
		
		return "index";
	}
	
}
