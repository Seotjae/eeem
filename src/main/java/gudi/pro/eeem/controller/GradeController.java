package gudi.pro.eeem.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import gudi.pro.eeem.service.GradeService;
@Controller
public class GradeController {
	
	@Autowired GradeService grdService;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	//참여자 평가 리스트 요청
	@RequestMapping(value = "/GradeList", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> GradeList(@RequestParam int meet_num) {

		logger.info("참여자 평가 리스트 요청 : {}",meet_num);
		
		return grdService.GradeList(meet_num);//memService.likeListCall();
	}
	
	//참여자 평가 완료
	@PostMapping(value="/rateEnd")
	public String rateEnd(@RequestParam HashMap<String, String> params, HttpSession session) {
		String mem_id = (String) session.getAttribute("loginId");
		logger.info("참여자 평가 params : {}",params);
		grdService.rateEnd(mem_id,params);
		return "redirect:/myPageMake";
		
	}

}
