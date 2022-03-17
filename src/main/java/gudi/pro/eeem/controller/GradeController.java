package gudi.pro.eeem.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public HashMap<String, Object> GradeList(@RequestParam String page,@RequestParam String cnt, HttpSession session) {
		
		logger.info("개설한 모임 리스트 요청 : {} 페이지 / {} 개 씩",page,cnt);

		String mem_id = (String) session.getAttribute("loginId");
		
		int currPage = Integer.parseInt(page);
		int pagePerCnt = Integer.parseInt(cnt);
		
		return grdService.GradeList(currPage,pagePerCnt,mem_id);
	}
}
