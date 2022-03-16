package gudi.pro.eeem.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.apache.tools.ant.types.resources.comparators.Size;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import gudi.pro.eeem.dto.EtcDTO;
import gudi.pro.eeem.dto.MemberDTO;
import gudi.pro.eeem.dto.NoticeDTO;
import gudi.pro.eeem.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired MemberService memService;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	
	
	@RequestMapping(value = "/registForm", method = RequestMethod.GET)
	public String registForm(Model model) {
		logger.info("회원가입 작성폼 이동");
		
		return "member/registForm";
	}
	
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String regist(Model model, @RequestParam HashMap<String, String> params) {
		logger.info("회원가입 요청 : {}", params);
		memService.regist(params);
		return "index";
	}
	
	@RequestMapping(value = "/idCheck", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> idCheck(Model model, @RequestParam String mem_id) {
		logger.info("아이디 중복확인 요청 : {}",mem_id);
		return memService.idCheck(mem_id);
	}
	
	@RequestMapping(value = "/phCheck", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> phCheck(Model model, @RequestParam String mem_phone) {
		logger.info("전화번호 중복확인 요청 : {}",mem_phone);
		return memService.phCheck(mem_phone);
	}
	
	
	/*마이페이지 클릭시*/
	@RequestMapping(value = "/myPageUpdate", method = RequestMethod.GET)
	public String myPageUpdate(Model model,HttpSession session) {
		
		/*세션 ID 넣기(나중에 뺄것)*/
		session.setAttribute("loginId", "sy0913");
		
		logger.info("마이페이지 비밀번호 확인 페이지 이동");
		String mem_id = (String) session.getAttribute("loginId");
		model.addAttribute("loginId", mem_id);
		return "myPage/myPageUpdate";
	}
	
	
	/*즐겨찾기 클릭시*/
	@RequestMapping(value = "/myPageLike", method = RequestMethod.GET)
	public String myPageLike(Model model,HttpSession session) {
		
		logger.info("즐겨찾기 페이지 이동");
		String mem_id = (String) session.getAttribute("loginId");
		model.addAttribute("loginId", mem_id);
		return "myPage/myPageLike";
	}
	/*개설한 모임 클릭시*/
	@RequestMapping(value = "/myPageMake", method = RequestMethod.GET)
	public String myPageMake(Model model,HttpSession session) {
		
		logger.info("개설한 모임 페이지 이동");
		String mem_id = (String) session.getAttribute("loginId");
		model.addAttribute("loginId", mem_id);
		return "myPage/myPageMake";
	}
	/*신청한 모임 클릭시*/
	@RequestMapping(value = "/myPageJoin", method = RequestMethod.GET)
	public String myPageJoin(Model model,HttpSession session) {
		
		logger.info("신청한 모임 페이지 이동");
		String mem_id = (String) session.getAttribute("loginId");
		model.addAttribute("loginId", mem_id);
		return "myPage/myPageJoin";
	}
	/*내가 작성한 문의 클릭시*/
	@RequestMapping(value = "/myPageQna", method = RequestMethod.GET)
	public String myPageQna(Model model,HttpSession session) {
		
		logger.info("내가 작성한 문의 페이지 이동");
		String mem_id = (String) session.getAttribute("loginId");
		model.addAttribute("loginId", mem_id);
		return "myPage/myPageQna";
	}
	/*포인트 내역 클릭시*/
	@RequestMapping(value = "/myPagePoint", method = RequestMethod.GET)
	public String myPagePoint(Model model,HttpSession session) {
		
		/*세션 ID 넣기(나중에 뺄것)*/
		session.setAttribute("loginId", "csj1017");
		
		logger.info("포인트 내역 페이지 이동");
		String mem_id = (String) session.getAttribute("loginId");
		model.addAttribute("loginId", mem_id);
		return "myPage/myPagePoint";
	}
	
	String hashText = "";
	
	
	/*비밀번호 일치시*/
	@RequestMapping(value = "/myPageUpdateForm", method = RequestMethod.POST)
	public String myPageUpdateForm(Model model,@RequestParam String mem_pw, HttpSession session) {
		String page = "myPage/myPageUpdate";
		
		/*세션 ID 넣기(나중에 뺄것)*/
		session.setAttribute("loginId", "sy0913");
		
		String mem_id = (String) session.getAttribute("loginId");
		logger.info("세션에 저장된 아이디 :{}",mem_id);
		String hashText = memService.myPageUpdateForm(mem_id);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		boolean success = encoder.matches(mem_pw, hashText);
		logger.info("입력된비밀번호 :{}",mem_pw);
		logger.info("암호화된비밀번호 :{}",hashText);
		if(success) {
			MemberDTO dto = memService.detail(mem_id,"detail");	
	        model.addAttribute("members", dto);		
			page = "myPage/myPageUpdateForm";
		}else {
			model.addAttribute("msg", "비밀번호 확인후 다시 시도해주세요");
		}
		return page;
	}
	

	@RequestMapping(value = "/notice_call", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, Object> notice_call(Model model,HttpSession session,@RequestParam String mem_id) {
		/*
		session.setAttribute("mem_id","ehdxornr");
		String mem_id = (String) session.getAttribute("mem_id");
		ArrayList<EtcDTO>notice = homeservice.notice(mem_id); //알림내역 불러오기위한 요청
		model.addAttribute("notice",notice);		
		*/
		HashMap<String, Object>map = new HashMap<String, Object>();
		
		ArrayList<NoticeDTO> noti = new ArrayList<NoticeDTO>();
		noti = memService.notice_call(mem_id);
		map.put("noti",noti);

		return map;
	}
	

	/*개인 정보 수정*/
	@RequestMapping(value = "/memberUpdate", method = RequestMethod.POST)
    public String memberUpdate(Model model, @RequestParam HashMap<String, String> params) {
        logger.info("update 요청 : {}",params);
        //세션에 로그인된 아이디의 비밀번호를 가져옴(get_pw)
        String get_pw = memService.myPageUpdateForm(params.get("mem_id"));
        //mem_pw 와 비교
        String mem_pw = params.get("mem_pw");
    	logger.info(mem_pw);
    	logger.info(get_pw);
        if (get_pw.equals(mem_pw)) {
        	logger.info("비밀번호 일치");
        	memService.memberUpdate(params);			
		}else {
			//암호화
			logger.info("비밀번호 불일치. 암호화 시작");
			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			String enc_pw = encoder.encode(mem_pw);
			params.put("mem_pw", enc_pw);
			memService.memberUpdate(params);
		}
        return "myPage/myPageUpdate";
	}
	

	//문의하기 목록 요청
	@RequestMapping(value = "/qnaListCall", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> qnaListCall(@RequestParam String page,@RequestParam String cnt, HttpSession session) {
		
		logger.info("문의하기 리스트 요청 : {} 페이지 / {} 개 씩",page,cnt);
		session.setAttribute("loginId", "ehdxornr");
		String mem_id = (String) session.getAttribute("loginId");
		
		int currPage = Integer.parseInt(page);
		int pagePerCnt = Integer.parseInt(cnt);
		
		return memService.qnaListCall(currPage,pagePerCnt,mem_id);
	}
	
	
	//즐겨찾기 목록 요청
	@RequestMapping(value = "/likeListCall", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> likeListCall(HttpSession session) {
		
		session.setAttribute("loginId", "yhjin0211");
		String mem_id = (String) session.getAttribute("loginId");
		logger.info("즐겨찾기 목록 요청 : {}",mem_id);
		
		return memService.likeListCall(mem_id);//memService.likeListCall();
	}
	

	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		logger.info("로그인 페이지 이동");
		
		return "member/login";
	}
	
	//충구 로그인 요청
	@RequestMapping(value = "/loginForm", method = RequestMethod.POST)   //로그인 요청을 받는 메서드
	public String loginForm(Model model,HttpSession session,@RequestParam String mem_id,@RequestParam String mem_pw) {
		logger.info("로그인 요청");
		logger.info("받아온 값 :{}",mem_id);
				
		//String msg = "아이디와 비밀번호를 확인해 주십시오";
		String page = "member/login";
		String loginmsg = "회원가입하지않은 고객입니다.";
				
		try {
			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(); //암호화 관련 객체화
			
			MemberDTO memdto = memService.loginForm(mem_id); // 서비스로 보낸다.
			logger.info("회원상태 : {}",memdto.getMem_state());			
			
			boolean success = encoder.matches(mem_pw,memdto.getMem_pw());
			logger.info("비밀번호 매칭결과 : "+success);
						
			if (success == true) {
								
				if (memdto.getMem_state() == 2) { //탈퇴 회원일때
					loginmsg = "탈퇴한 회원입니다.";
				}else if(memdto.getMem_state() ==3) { //정지 회원
					loginmsg = "사용정지된 회원입니다. 본사로 문의 하세요  02-1111-1111";
				}else if(memdto.getMem_state() == 0) { // 일반&관리 회원
					session.setAttribute("mem_id", memdto.getMem_id());
					page  = "index";
				}else if(memdto.getMem_state() == 1) {
					session.setAttribute("mem_id", memdto.getMem_id());
					page = "index";
				}else if(memdto.getMem_id()=="") {
					loginmsg = "올바르지 않은 아이디입니다. 다시입력해주세요";
				} 
				
			}else if(success == false) {
				loginmsg = "비밀번호를 확인 후 다시 입력해 주세요";
				
				
			}
			model.addAttribute("loginmsg", loginmsg);
		
		} catch (Exception e) {
			logger.info("에러 발생");
			model.addAttribute("loginmsg", loginmsg);
		}
		
		
		return page;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model,HttpSession session) {
		logger.info("로그아웃 요청");
		
		session.removeAttribute("mem_id");
		return "index";

	}
	

	
}
