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
	public String home(Model model,HttpSession session) {
		logger.info("메인화면 요청");
		
		String mem_id = (String) session.getAttribute("loginId");
		
		if (mem_id == null) {
			ArrayList<MeetDTO>mainmeet = homeservice.mainmeet(); //session에 아이디가 없을경우
			logger.info("세션에 아이디가 없다!!!! : {}",mainmeet.size());
			model.addAttribute("mainmeet",mainmeet);
		}else if(mem_id != null) {
			ArrayList<MeetDTO>mainusermeet = homeservice.mainusermeet(mem_id);//session에 아이디가 있을경우
			logger.info("세션에 아이디가 있다!!!! : {}",mainusermeet.size());
			model.addAttribute("mainusermeet",mainusermeet);
		}
				
		ArrayList<MeetDTO>meetdto = homeservice.home(); //메인화면 모임리스트(날자순)
		int num =  meetdto.size();
		logger.info("메인화면 모임갯수 : "+num);
		model.addAttribute("meetdto",meetdto); //메인화면 모임리스트
				
		return "index";
	}
	
}
