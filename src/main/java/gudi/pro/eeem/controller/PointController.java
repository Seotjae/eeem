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

import gudi.pro.eeem.service.PointService;
@Controller
public class PointController {
	@Autowired PointService ptService;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	//포인트 사용 리스트 요청
	@RequestMapping(value = "/PointList", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> PointList(@RequestParam String page,@RequestParam String cnt, HttpSession session) {
		
		logger.info("포인트 사용 리스트 요청 : {} 페이지 / {} 개 씩",page,cnt);

		String mem_id = (String) session.getAttribute("loginId");
		
		int currPage = Integer.parseInt(page);
		int pagePerCnt = Integer.parseInt(cnt);
		
		return ptService.PointList(currPage,pagePerCnt,mem_id);
	}
	
	@RequestMapping(value = "/pointExchangeForm")
	public String pointExchangeForm(Model model, HttpSession session) {
		logger.info("pointExchangeForm 으로 이동");
		String loginId = (String) session.getAttribute("loginId");
		model.addAttribute("loginId",loginId);
		if (loginId != null) {
			int myPoint = ptService.myPointChk(loginId);
			logger.info("불러온 내 포인트 : {}",myPoint);
			model.addAttribute("myPoint",myPoint);
		}
	
	return "point/pointExchangeForm";
		
	}
	
	

	//입력한 포인트 view에 뿌려주기 작성자 : 최성재
	@RequestMapping(value = "/justPtView", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> justPtView(@RequestParam String pt_count, HttpSession session) {
		
		logger.info("사용자가 입력한 포인트 : {}",pt_count);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pt_count",pt_count);
		return map;
	}
	
	//환전요청 받음
	@RequestMapping(value = "/rqstExchg")
	public String rqstExchg(Model model, HttpSession session,@RequestParam HashMap<String, String> params) {
		logger.info("환전 요청 : {}",params);
		model.addAttribute("params",params);
		ptService.pointRegist(params);
	
	return "point/pointExchangeFormResult";
		
	}
		
		

	//포인트 충전하기 화면 이동
		@RequestMapping(value = "/pointChargeForm")
		public String pointChargeForm(Model model, HttpSession session) {
			
		logger.info("pointCharge 으로 이동");
		
		session.setAttribute("loginId","csj1017");

		String loginId = (String) session.getAttribute("loginId");
		model.addAttribute("loginId",loginId);
		
		//신청자 포인트 확인
				int chargePoint = ptService.myPointChk(loginId);
				logger.info("내포인트 여기까지 왔나"+chargePoint);
				model.addAttribute("chargePoint", chargePoint);
				logger.info("내포인트 나와주세요"+chargePoint);
		

		
		return "point/pointChargeForm";
		}
		
		
		//포인트 등록하기 (인서트)

		@RequestMapping(value = "/pointCharge", method = RequestMethod.POST)
		public String pointCharge(Model model, @RequestParam String pt_count, HttpSession session) {
			
			logger.info("pointCharge : {}",pt_count);
			int mPt_count = Integer.parseInt(pt_count);
			
			//세션
			session.setAttribute("loginId","csj1017");
			String loginId = (String) session.getAttribute("loginId");
			model.addAttribute("loginId",loginId);
			
			ptService.pointCharge(mPt_count,loginId);
			
			
			int chargePoint = ptService.myPointChk(loginId);
			logger.info("내포인트 여기까지 왔나"+chargePoint);
			model.addAttribute("chargePoint", chargePoint);
			
			model.addAttribute("pt_count", mPt_count);
			return "point/pointChargeResult";
		}
		
		
		
		//라디오 버튼 값 넣어주기 
		@ResponseBody
		@RequestMapping(value = "/pointRadio")
		public HashMap<String, Object> pointRadio(Model model,@RequestParam String pt_count, HttpSession session) {
			
			logger.info("pointCharge 으로 이동");
		
		HashMap<String, Object> result = new HashMap<String, Object>();
		
		logger.info("pt_count : {}",pt_count);
		result.put("pt_count", pt_count);
		
		return result;
		}
		
		

}
