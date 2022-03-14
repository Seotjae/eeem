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

import gudi.pro.eeem.dto.EtcDTO;
import gudi.pro.eeem.dto.MeetDTO;
import gudi.pro.eeem.service.MeetService;

@Controller
public class MeetController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired MeetService meetService; 
	
	@RequestMapping(value = "/meetList", method = RequestMethod.GET)
	public String meetList(Model model, HttpSession session) {
		
		ArrayList<MeetDTO> dto = meetService.meetList();
		logger.info("dto.get(0).getMeet_thum : {}",dto.get(0).getMeet_thum());
		model.addAttribute("meetList", dto);
		
		
		return "meet/meetList";
	}
	

		

}
