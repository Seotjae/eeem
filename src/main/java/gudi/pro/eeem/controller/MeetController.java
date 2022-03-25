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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import gudi.pro.eeem.dto.MeetDTO;
import gudi.pro.eeem.dto.MeetWriterDTO;
import gudi.pro.eeem.dto.PhotoDTO;
import gudi.pro.eeem.service.EtcService;
import gudi.pro.eeem.service.ManagerService;
import gudi.pro.eeem.service.MeetService;
import gudi.pro.eeem.service.PointService;

@Controller
public class MeetController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired MeetService meetService;
	@Autowired PointService pointSerivice;
	@Autowired EtcService etcService;
	@Autowired ManagerService managerService;
	
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
		
		String mem_id = (String) session.getAttribute("loginId");
		int myPoint = pointSerivice.myPointChk(mem_id); //포인트 확인
		logger.info("myPoint 현재 : "+myPoint);
		model.addAttribute("myPoint",myPoint);
		return "meet/meetRegistForm";
	}
	
	@RequestMapping(value = "/adCount", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> adCount(@RequestParam String ad_meetArea,HttpSession session) {
		logger.info("광고 수 확인 요청 : {}",ad_meetArea);
		int iAd_meetArea = Integer.parseInt(ad_meetArea);
		return meetService.adCount(iAd_meetArea);
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
				String mem_id = (String) session.getAttribute("loginId");
				model.addAttribute("mem_id", mem_id);
				
					MeetDTO mDetaildto = meetService.meetDetail(meet_num, "meetDetail");
					logger.info("모임번호 : {}",mDetaildto.getMeet_num());
					
					model.addAttribute("mDetail",mDetaildto);
						
						//썸네일 사진 목록 가져오기. 이게 꼭 필요할까?
						ArrayList<PhotoDTO> thumFile = meetService.thumList(meet_num);
						logger.info("사진 수 : {}", thumFile.size());
						model.addAttribute("thumFile",thumFile);
						//썸네일 사진 목록 가져오기.
						
						//2022-03-15 유현진 모임 상세보기 개설자 정보 가져오기
						MeetWriterDTO meetWriter = meetService.MeetWriter(meet_num);
						 logger.info("개설자의 정보", meetWriter);
						 
						 model.addAttribute("MeetWriter",meetWriter);
						//2022-03-15 유현진 모임 상세보기 개설자 정보 가져오기
						 
							//상세보기 사진 목록 가져오기.
							ArrayList<PhotoDTO> photos = meetService.photoList(meet_num);
							logger.info("사진 수 : {}", photos.size());
							model.addAttribute("photos",photos);
							
						 
							// 승인 인원수를  불러오는 기능
							int approve = meetService.approvechk(mem_id);
							model.addAttribute("approve", approve);
							logger.info("approve :{}"+approve);
							//승인 인원수를 불러오는 기능
							
							//신청자 포인트 확인
							int mpoint = meetService.mpointchk(mem_id);
							model.addAttribute("mpoint", mpoint);
							logger.info("mpoint : {}"+mpoint);
							//개설자 포인트 확인

				int loginId_mem_state =0;			
				//모임리뷰 관련 컨트롤러
				if (mem_id != null) {
					loginId_mem_state = managerService.chkAdmin(mem_id);//사용자가 관리자 인가? 일반:0 관리자:1 탈퇴:2 정지:3
					logger.info("모임리뷰 -> 관리자확인 : {}",loginId_mem_state);	
				}
				
				int chkAppYN = meetService.chkAppYN(meet_num,mem_id); //로그인한 사용자가 모임을 참석했는가?
			
				int chkReviewYN = meetService.chkReviewYN(meet_num,mem_id);//참석한 사용자가 후기를 남겼는가?
				logger.info("모임리뷰 -> 참석여부 : {} / 작성여부 : {}",chkAppYN,chkReviewYN);
				

				model.addAttribute("loginId_mem_state", loginId_mem_state);
				model.addAttribute("chkAppYN", chkAppYN);
				model.addAttribute("chkReviewYN", chkReviewYN);
				model.addAttribute("loginId", mem_id);
									
							
						 
			return "meet/meetDetail";
		}
		
		//2022-03-17 유현진 모임 신청시 포인트차감(포인트테이블 인서트), 신청자테이블, 알림테이블 인서트
		
		@RequestMapping(value = "/pointToss", method = RequestMethod.GET)
			public String pointToss(Model model,	@RequestParam int meet_num, HttpSession session) {
			
			//세션 담기
			
			String mem_id = (String) session.getAttribute("loginId");
			//model.addAttribute("mem_id", mem_id);
			logger.info("pointToss : {}", meet_num);
			
			//해쉬맵 객체만들기.
			HashMap<String, Object>map = new HashMap<String, Object>();
			map.put("mem_id",mem_id); 
			map.put("meet_num",meet_num);

			//포인트 테이블에 인서트하기
			pointSerivice.pointToss(map);
			logger.info("포인트 차감 ");
			
			//어플리컨트테이블에 멤버아이디랑 모임번호 서비스랑 메퍼
			meetService.meetAppInsert(map);
			logger.info("신청자 테이블 등록");
			
			//알림 테이블도. 인서트 대상번호 = 모임번호 알림내용은 0번으로 
			meetService.meetNoticeInsert(map);
			logger.info("신청자 알림 등록");

			return "redirect:/meetDetail?meet_num="+meet_num;
		}
		
		
		
		//2022-03-21 유현진 모임 상세보기 즐겨찾기
		
		//모임 상세보기 -즐겨찾기
		@ResponseBody
		@RequestMapping(value = "/meetBookmarkinsert", method = RequestMethod.GET) // 메인페이지 즐겨찾기목록 추가하기
		public HashMap<String, Object> meetBookmarkinsert(Model model, @RequestParam int meet_num, HttpSession session) { 
			logger.info("즐겨찾기 목록 추가요청"); // 모임 상세보기 - 즐겨찾기 목록추가하기
			
			
			
			String mem_id = (String) session.getAttribute("loginId");
			//model.addAttribute("mem_id", mem_id);
			logger.info("pointToss : {}", meet_num);
			
				HashMap<String, Object> map = new HashMap<String,Object>();
		
				String msg = "";
			    
				//모임 상세보기 즐겨찾기 - id와 모임번호가 일치하는 내용이 있는가 확인하는하는 기능.
				int bookmarkCheck = etcService.bookmarkselect(meet_num,mem_id);
				logger.info("meetBookmarkinsert : {}",bookmarkCheck);
				
				
				if (bookmarkCheck> 0) {
					etcService.bookmarkdelete(meet_num,mem_id);//기존에 즐겨찾기목록에있으면 삭제
					logger.info("즐겨찾기 목록 삭제");
					msg = "즐겨찾기 목록에서 삭제하였습니다.";
				
				}else{
					etcService.bookmarkinsert(meet_num,mem_id);//없으면 insert하기
					logger.info("즐겨찾기 목록 추가");
					msg = "회원님의 즐겨찾기목록에 추가되었습니다.";
				}
				map.put("msg",msg);
				
				
			return map;
			
		}
		
		//2022-03-21 유현진 모임 상세보기  안에있는 글 사진 꺼내오기. + 내용도 가져오기
		
		@RequestMapping(value = "/meetDetailBoard")
		public String meetDetailBoard(Model model,  @RequestParam String meet_num, HttpSession session) {
			

			String mem_id = (String) session.getAttribute("loginId");
			model.addAttribute("mem_id", mem_id);
			
			//게시 글 가져오기.
			MeetDTO dto = meetService.meetDetailBoard(meet_num);
			logger.info("상세정보 등록글 가져오기 : {}", dto.getMeet_subject());
			model.addAttribute("dto",dto);
				
			return "meet/meetDetailBoard?meet_num="+meet_num;
		}
		
		
		// 2022-03-21 유현진 모임 상세보기 신고하기 글쓰기 요청
		@RequestMapping(value = "/meetDeclarationForm")
		public String meetDeclarationForm(Model model, @RequestParam int meet_num, HttpSession session) {
			
			logger.info("meetDeclarationForm 클릭시 신고하기 글쓰기 팝업창으로 이동");
			
			logger.info("모임 상세보기 신고하기 모임 번호 : {}", meet_num);
			

					String mem_id = (String) session.getAttribute("loginId");
					model.addAttribute("mem_id", mem_id);
					
					//신고당하는 사람 아이디 불러오기
					String targetId= meetService.getId(meet_num);
					logger.info("targetId 나와주세요 : {}",targetId);
					//꺼내온 email을 model 에 담아 jsp 에 보냄
					model.addAttribute("targetId", targetId);
					logger.info("targetId 나와주세요 : {}",targetId);
					
					//신고 당하는 모임의 번호 가져오기
					String targetNum= meetService.getNum(meet_num);
					logger.info("targetNum 나와주세요 : {}",targetNum);
					//꺼내온 email을 model 에 담아 jsp 에 보냄
					model.addAttribute("targetNum", targetNum);
					logger.info("targetNum 나와주세요 : {}",targetNum);
					
					//신고 내용
					String targetContent= meetService.getSubject(meet_num);
					logger.info("targetContent 나와주세요 : {}",targetContent);
					model.addAttribute("targetContent", targetContent);
					logger.info("targetContent 나와주세요 : {}",targetContent);

			return "meetDeclarationForm";
		}
		
		

		// 2022-03-21 유현진 모임 상세보기 신고하기 글쓰기	/모임 상세보기 - 신고하기
		@RequestMapping(value = "/meetSct_regist", method = RequestMethod.POST)
		public String meetSct_regist(Model model, @RequestParam HashMap<String, String> params, HttpSession session) {
			
			logger.info("해쉬맵 값 확인 : {}",params.size());
			

					String mem_id = (String) session.getAttribute("loginId");
					//model.addAttribute("mem_id", mem_id);
					params.put("mem_id", mem_id);
					
					logger.info("신고 글쓰기 요청 : {}",params);
					meetService.meetSct_regist(params);
			
			return "redirect:/meetList";
		}

	
	
	//모임 신청자 관리
	/*
	 * @RequestMapping(value = "/meetAppCon", method = RequestMethod.GET) public
	 * ModelAndView meetAppCon(Model model,@RequestParam String meet_num) {
	 * logger.info("{}번 모임 신청자 관리 페이지 이동",meet_num); ModelAndView mav = new
	 * ModelAndView(); mav.addObject("meet_num", meet_num);
	 * mav.setViewName("meet/meetAppCon"); return mav; }
	 */
	
	//모임 신청자 리스트 요청, 작성자 최성재
	@RequestMapping(value = "/meetAppsCall", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, Object> meetAppsCall(
			@RequestParam String sltState, @RequestParam String meet_num,
			@RequestParam String page,@RequestParam String cnt, HttpSession session) {
		
		logger.info("모임 신청자 리스트 요청 : {} 페이지 / {} 개 씩",page,cnt);
		logger.info("{}번 모임 신청자 상태 : {}",meet_num,sltState);

		int tMeet_num = Integer.parseInt(meet_num); //모임번호
		int app_state = Integer.parseInt(sltState); //신청자 상태
		int currPage = Integer.parseInt(page);
		int pagePerCnt = Integer.parseInt(cnt);
		
		return meetService.meetAppsCall(currPage,pagePerCnt,tMeet_num,app_state);
	}
	
	
	//모임 신청자 승인 : 작성자 최성재
	@RequestMapping(value = "/updAppSt", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> updAppSt(@RequestParam String app_num,@RequestParam String app_id,@RequestParam String meet_num, HttpSession session) {
		

		int mApp_num = Integer.parseInt(app_num); //신청자 번호 변환
		int mMeet_num = Integer.parseInt(meet_num); //모임 번호 변환
		logger.info("{}번 모임 {}번 신청자 승인 요청",mMeet_num,mApp_num);

		return meetService.updAppSt(mApp_num,mMeet_num,app_id);
	}
	
	
	
	//모임 후기 페이지 이동 : 작성자 최성재
	/*
	 * @RequestMapping(value = "/meetReview", method = RequestMethod.GET) public
	 * ModelAndView meetReview(HttpSession session,Model model,@RequestParam String
	 * meet_num) { logger.info("{}번 모임 리뷰 페이지 이동",meet_num); String loginId =
	 * (String) session.getAttribute("loginId"); int loginId_mem_state =
	 * managerService.chkAdmin(loginId);//사용자가 관리자 인가? 일반:0 관리자:1 탈퇴:2 정지:3
	 * logger.info("모임리뷰 -> 관리자확인 : {}",loginId_mem_state);
	 * 
	 * int chkAppYN = meetService.chkAppYN(meet_num,loginId); //로그인한 사용자가 모임을 참석했는가?
	 * 
	 * int chkReviewYN = meetService.chkReviewYN(meet_num,loginId);//참석한 사용자가 후기를
	 * 남겼는가? logger.info("모임리뷰 -> 참석여부 : {} / 작성여부 : {}",chkAppYN,chkReviewYN);
	 * 
	 * 
	 * 
	 * ModelAndView mav = new ModelAndView(); mav.addObject("loginId_mem_state",
	 * loginId_mem_state); mav.addObject("chkAppYN", chkAppYN);
	 * mav.addObject("chkReviewYN", chkReviewYN); mav.addObject("loginId", loginId);
	 * mav.addObject("meet_num", meet_num); mav.setViewName("meet/meetReview");
	 * return mav; }
	 */
	
	//모임 후기 리스트 요청 : 작성자 최성재
	@RequestMapping(value = "/meetReviewCall", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, Object> meetReviewCall(@RequestParam String meet_num, HttpSession session,
			@RequestParam String page,@RequestParam String cnt) {
		
		logger.info("{}번 모임 후기 리스트 요청",meet_num);

		int mMeet_num = Integer.parseInt(meet_num); //신청자 번호 변환
		int currPage = Integer.parseInt(page);
		int pagePerCnt = Integer.parseInt(cnt);

		return meetService.meetReviewCall(currPage,pagePerCnt,mMeet_num);
	}
	
	
	//모임 후기 작성 요청 : 작성자 최성재
	@RequestMapping(value = "/meetReviewRegist", method = RequestMethod.POST)
	public ModelAndView meetReviewRegist(HttpSession session,Model model,@RequestParam String meet_num
			,@RequestParam String rev_subject,@RequestParam String rev_content, RedirectAttributes rAttr) {
		
		String mem_id = (String) session.getAttribute("loginId"); //작성자
		logger.info("{}번 모임 리뷰 작성 요청 작성자 : {}",meet_num,mem_id);
		logger.info("작성 제목 : {} 작성 내용 : {}",rev_subject,rev_content);
		

		return meetService.meetReviewRegist(meet_num,mem_id,rev_subject,rev_content);
	}
	
	//모임 후기 삭제 요청 : 작성자 최성재
	@RequestMapping(value = "/meetRevDel", method = RequestMethod.GET)
	public ModelAndView meetRevDel(HttpSession session,Model model,@RequestParam String rev_num, @RequestParam String meet_num) {
		
		String mem_id = (String) session.getAttribute("loginId"); //작성자
		logger.info("{}번 모임 {} 번 리뷰 삭제 요청",meet_num,rev_num);
		int mMeet_num = Integer.parseInt(meet_num);
		int mRev_num = Integer.parseInt(rev_num);
		return meetService.meetRevDel(mRev_num,mMeet_num);
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
	

	/*개설한 모임 폐쇄*/
	@RequestMapping(value = "/makeDel", method = RequestMethod.GET)
	public String makeDel(Model model, @RequestParam String meet_num) {
			logger.info("모임 폐쇄 요청 : {}",meet_num);	
						
			meetService.makeDel(meet_num);	
			
		return "redirect:/myPageMake";
	}


	//신청한 모임 리스트 요청
	@RequestMapping(value = "/appList", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> appList(@RequestParam String page,@RequestParam String cnt, HttpSession session) {
		
		logger.info("개설한 모임 리스트 요청 : {} 페이지 / {} 개 씩",page,cnt);

		String mem_id = (String) session.getAttribute("loginId");
		
		int currPage = Integer.parseInt(page);
		int pagePerCnt = Integer.parseInt(cnt);
		
		return meetService.appList(currPage,pagePerCnt,mem_id);
	}
	
	//모임 완료 요청
	@RequestMapping(value = "/completion", method = RequestMethod.GET)
	public String completion(Model model,@RequestParam String meet_num,HttpSession session) {
		logger.info("모임완료요청 도착");
		String mem_id = (String) session.getAttribute("loginId");
				
		int dsaewq = meetService.completion(meet_num,mem_id); // 모임 신청한 회원의 모임상태를 모임완료 요청
		logger.info("완료요청 update 결과 : "+dsaewq); // 완료요청 확인
		
		int row = meetService.meetcompletion(meet_num);//모임총원구해오고
		int row2 = meetService.meetcompletionTow(meet_num);//모임 완료인원구해오고
		if (row == row2) {  								//총원과 완료인원이 같다면
			int success = meetService.meetsuccess(meet_num);//모임상태를 모임완료로 변경
			logger.info("success : {}",success);
		}
		
		MeetDTO meetdto = meetService.MakeScorePage(meet_num,mem_id);//개설자 평가페이지 이동시 모임정보 가져오기
		logger.info("개설자 정보 : {}",meetdto);
		model.addAttribute("meetdto", meetdto);
		
		return "myPage/myPageMakeScore";
	}
	
	//모임 취소요청
	@RequestMapping(value = "/meetStop", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> meetStop(@RequestParam String meet_num, @RequestParam String mem_id) {
		HashMap<String, Object>map =new HashMap<String, Object>();
		logger.info("모임취소 요청 도착");
		
		int row = meetService.meetStop(meet_num,mem_id); //모임 취소요청(신청한 회원)
		int row2 = meetService.pointreturn(meet_num,mem_id);//모임 취소요청(신청한 회원 포인트반환)
		logger.info("모임취소,포인트반환 : {},{}",row,row2);
		
		if (row+row2 > 0) {
			map.put("msg", "모임취소가 완료돼었습니다. 반환된 포인트를 확인해주세요.");
		}
		
		return map;
	}

	
	
	//2022-03-21 유현진 모임상세보기 모임 문의 글쓰기 
	@RequestMapping(value = "/meetCommentWrite")
	public String meetCommentWrite(Model model,
			@RequestParam HashMap<String, String> params ,HttpSession session) {
		

		String mem_id = (String) session.getAttribute("loginId");
		model.addAttribute("mem_id", mem_id);
		params.put("mem_id", mem_id);

		logger.info("모임 문의 글쓰기 요청 : {}",params);
		meetService.meetCommentWrite(params);
		String meet_num =params.get("meet_num");
		return "redirect:/meetDetail?meet_num="+meet_num;
		
	}

	//모임 문의 리스트 요청
		@RequestMapping(value = "/meetCommentCall", method = RequestMethod.POST)
		@ResponseBody
		public HashMap<String, Object> meetCommentCall(@RequestParam String meet_num, HttpSession session,
				@RequestParam String page,@RequestParam String cnt) {
			
			logger.info("{}번 모임 후기 리스트 요청",meet_num);

			int mMeet_num = Integer.parseInt(meet_num); //신청자 번호 변환
			int currPage = Integer.parseInt(page);
			int pagePerCnt = Integer.parseInt(cnt);

			return meetService.meetCommentCall(currPage,pagePerCnt,mMeet_num);
		}
	
	
	//대댓글 답글 쓰기
		@RequestMapping(value = "/reCommentWrite")
		public String reCommentWrite(Model model,
				@RequestParam HashMap<String, String> params ,HttpSession session) {
			
			String mem_id = (String) session.getAttribute("loginId");
			model.addAttribute("mem_id", mem_id);
			params.put("mem_id", mem_id);

			logger.info("대댓글 글쓰기 요청 : {}",params);
			meetService.reCommentWrite(params);
		
			return "redirect:/meetDetail?meet_num="+params.get("meet_num");
			
		}

		//문의 답변 삭제하기
		@RequestMapping(value = "/commentDelete")
		public String commentDelete(Model model, @RequestParam String meet_num, @RequestParam String cmt_num, HttpSession session) {
			
			meetService.commentDelete(meet_num, cmt_num);
		
			return  "redirect:/meetDetail?meet_num="+meet_num;

		}
			
			

	/*임시 메서드 개설자평가 페이지 이동용    **************삭제 예정******* */
	@RequestMapping(value = "/myPageMakeScore", method = RequestMethod.GET)
	public String myPageMakeScore(Model model) {
			logger.info("페이지 이동용 임시 메서드");	
				
		return "myPage/myPageMakeScore";
	}
	
	//개설자 평가하기
	@RequestMapping(value = "/makeEvaluation", method = RequestMethod.GET)
	public String makeEvaluation(Model mode,@RequestParam String targetId,
			@RequestParam String meet_num,@RequestParam String score,HttpSession session) {
			logger.info("개설자 평가 요청!!!!");
			String msg ="";
			
			String mem_id = (String) session.getAttribute("loginId");
			int row = meetService.makeEvaluation(targetId,meet_num,score,mem_id);
			if (row > 0) {
				msg = "redirect:/";
			}	
			
		return msg;
	}
	



		

}
