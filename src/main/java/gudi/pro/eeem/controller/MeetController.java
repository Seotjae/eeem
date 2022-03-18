package gudi.pro.eeem.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.multipart.MultipartFile;

import gudi.pro.eeem.dto.MeetDTO;
import gudi.pro.eeem.dto.MeetWriterDTO;
import gudi.pro.eeem.dto.PhotoDTO;
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
		String mem_id = (String) session.getAttribute("loginId");
		model.addAttribute("loginId", mem_id);
		
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
				
				//세션 담기
				session.setAttribute("loginId","csj1017");
				String mem_id = (String) session.getAttribute("loginId");
				model.addAttribute("mem_id", mem_id);
				
						//""안에는 왜 들어가는거지 저게? 
					MeetDTO mDetaildto = meetService.meetDetail(meet_num, "meetDetail");
						logger.info("왜 안되지?",meet_num);
						model.addAttribute("mDetail",mDetaildto);
						
						//썸네일 사진 목록 가져오기. 이게 꼭 필요할까?
						ArrayList<PhotoDTO> thumFile = meetService.thumList(meet_num);
						logger.info("사진 수 : {}", thumFile.size());
						model.addAttribute("thumFile",thumFile);
						//썸네일 사진 목록 가져오기.
						
						//2022-03-15 유현진 모임 상세보기 개설자 정보 가져오기
						ArrayList<MeetWriterDTO> MeetWriter = meetService.MeetWriter(meet_num);
						 logger.info("개설자의 정보", MeetWriter);
						 
						 model.addAttribute("MeetWriter",MeetWriter);
						//2022-03-15 유현진 모임 상세보기 개설자 정보 가져오기
						 
						 
						 logger.info(" 나와주세요"+mem_id);
						 
							//*** 승인 인원수를  불러오는 기능
							int approve = meetService.approvechk(mem_id);
							logger.info("승인인원 나와주세요",approve);
							//꺼내온 email을 model 에 담아 jsp 에 보냄
							model.addAttribute("approve", approve);
							logger.info("승인인원 나와주세요"+approve);
							//승인 인원수를 불러오는 기능
							
							//개설자 포인트 확인
							//Integer myPoint = pointService.myPointChk(mem_id);
							//model.addAttribute("myPoint",myPoint);
							//logger.info("내 포인트 : "+myPoint);
							
							//포인트를 차감하는 기능 (인서트)
							
							
						 
			return "meet/meetDetail";
		}
	
	
	//모임 신청자 관리
	@RequestMapping(value = "/meetAppCon", method = RequestMethod.GET)
	public String meetAppCon(Model model) {
		logger.info("모임 신청자 관리 페이지 이동");
		return "meet/meetAppCon";
	}
	
	

	//개설한 모임 리스트 요청
	@RequestMapping(value = "/MakeList", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> MakeList(@RequestParam String page,@RequestParam String cnt, HttpSession session) {
		
		logger.info("개설한 모임 리스트 요청 : {} 페이지 / {} 개 씩",page,cnt);

		String mem_id = (String) session.getAttribute("loginId");
		
		int currPage = Integer.parseInt(page);
		int pagePerCnt = Integer.parseInt(cnt);
		
		return meetService.MakeList(currPage,pagePerCnt,mem_id);
	}
	
	//신청한 모임 리스트 요청
	@RequestMapping(value = "/appList", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> appList(@RequestParam String page,@RequestParam String cnt, HttpSession session) {
		
		logger.info("개설한 모임 리스트 요청 : {} 페이지 / {} 개 씩",page,cnt);
		session.setAttribute("loginId", "csj1017");
		String mem_id = (String) session.getAttribute("loginId");
		
		int currPage = Integer.parseInt(page);
		int pagePerCnt = Integer.parseInt(cnt);
		
		return meetService.appList(currPage,pagePerCnt,mem_id);
	}
	
	//모임 완료 요청
	@RequestMapping(value = "/meetcompleted", method = RequestMethod.GET)
	public HashMap<String, Object> meetcompleted(@RequestParam String metnum) {
		logger.info("모임완료요청 도착");
		
		
		logger.info("meet_num: {}",metnum);
		
		
		
		
		return null;
	}
	

		

}
