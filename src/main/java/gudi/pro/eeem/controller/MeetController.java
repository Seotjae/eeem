package gudi.pro.eeem.controller;

import java.util.ArrayList;
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
import org.springframework.web.multipart.MultipartFile;

import gudi.pro.eeem.dto.MeetDTO;
import gudi.pro.eeem.service.MeetService;
import gudi.pro.eeem.service.PointService;

@Controller
public class MeetController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired MeetService meetService;
	@Autowired PointService pointSerivice;
	
	@RequestMapping(value = "/meetList")
	public String meetList(Model model, HttpSession session,
			@RequestParam(value="meet_subject",required=false,defaultValue = "0")String meet_subject,
			@RequestParam(value="keyword",required=false,defaultValue = "")String keyword,
			@RequestParam(value="meet_region",required=false, defaultValue = "11")ArrayList<Integer> meet_region,
			@RequestParam(value="meet_interest",required=false, defaultValue = "11")ArrayList<Integer> meet_interest,
			@RequestParam(value="meet_point",required=false,defaultValue = "0") String meet_point) {
		
		
		
		
		ArrayList<MeetDTO> dto = meetService.meetList(keyword, meet_subject,meet_point,meet_region,meet_interest);
		//logger.info("dto.get(0).getmeet_thum : {}",dto.get(0).getMeet_thum());
		//
		//logger.info("meet_region"+meet_region);
		
		//PageDTO page = new PageDTO();
		
		//page.setNum(num);
		//page.setCount(meetService.meetSerchCount(meet_subject, meet_region, meet_interest, meet_point, keyword));
		//page.setKeyword(keyword);
		
		//logger.info("Page.getCount() : {}",page.getCount());
		//logger.info("page.getkeyword() : {}",page.getKeyword());
		
		model.addAttribute("meetList", dto);
		//model.addAttribute("page", page); //페이징처리
		//model.addAttribute("select", num);//페이징처리	
		//model.addAttribute("meet_subject", meet_subject);
		//model.addAttribute("meet_region", meet_region);  
		//model.addAttribute("meet_interest", meet_interest);  
		//model.addAttribute("meet_point", meet_point);
		model.addAttribute("keyword", keyword);
		
		
		
		return "meet/meetList";
	}
	
	@RequestMapping(value = "/meetRegistForm", method = RequestMethod.GET)
	public String meetRegistForm(Model model, HttpSession session) {
		//meetService.loop();
		logger.info("모임등록 작성  페이지 이동");
		session.setAttribute("loginId", "csj1017");
		String mem_id = (String) session.getAttribute("loginId");
		int myPoint = pointSerivice.myPointChk(mem_id);
		logger.info("myPoint 현재 : "+myPoint);
		model.addAttribute("myPoint",myPoint);
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
			
			String mem_id = (String) session.getAttribute("loginId");
			model.addAttribute("mem_id", mem_id);
			
			//""안에는 왜 들어가는거지 저게? 
		MeetDTO mDetaildto = meetService.meetDetail(meet_num, "meetDetail");
					logger.info("왜 안되지?",meet_num);
					model.addAttribute("mDetail",mDetaildto);
					
					/*
					 * //썸네일 사진 목록 가져오기. 이게 꼭 필요할까? ArrayList<PhotoDTO> thumFile =
					 * meetService.thumList(meet_num); logger.info("사진 수 : {}", thumFile.size());
					 * model.addAttribute("thumFile",thumFile); //썸네일 사진 목록 가져오기.
					 */	
					
					
					//*** name 가져오기 
					//mem_id 를 db 로 보내 email을 가져오는 셀렉트 문 작성
					String mem_name = meetService.getName(mem_id);
					logger.info("name 나와주세요",mem_name);
					//꺼내온 email을 model 에 담아 jsp 에 보냄
					model.addAttribute("mem_name", mem_name);
					logger.info("name 나와주세요",mem_name);
					//*** name 가져오기 
					
					//*** email 가져오기 
					String mem_email= meetService.getEmail(mem_id);
					logger.info("email 나와주세요",mem_email);
					//꺼내온 email을 model 에 담아 jsp 에 보냄
					model.addAttribute("mem_email", mem_email);
					logger.info("email 나와주세요",mem_email);

					//***phone 가져오기 
					String mem_phone = meetService.getphone(mem_id);
					logger.info("email 나와주세요",mem_phone);
					//꺼내온 email을 model 에 담아 jsp 에 보냄
					model.addAttribute("mem_email", mem_phone);
					logger.info("phone 나와주세요");


		return "meet/meetDetail";
	}
	

	
	

		

}
