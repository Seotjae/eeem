package gudi.pro.eeem.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import gudi.pro.eeem.dto.EtcDTO;
import gudi.pro.eeem.dto.MeetDTO;
import gudi.pro.eeem.dto.MemberDTO;
import gudi.pro.eeem.service.HomeService;

@Controller
public class HomeController {
	
	@Autowired HomeService homeservice;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("메인화면 ,header, footer 이미지요청 이미지요청");
		ArrayList<MeetDTO>meetdto = homeservice.home(); // 메인페이지 광고 불러오기
		int num =  meetdto.size();
		logger.info("num 갯수 : "+num);
		
		model.addAttribute("meetdto",meetdto); //메인화면 모임리스트 jsp 파일로보내기
		 // 알림내용 보내기 -- header로 보내야함
		
				
		return "index";
	}
	
}
