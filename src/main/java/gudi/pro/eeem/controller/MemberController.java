package gudi.pro.eeem.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import gudi.pro.eeem.dto.MemberDTO;
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
	public String myPageUpdate(Model model) {
		
		logger.info("마이페이지 비밀번호 확인 페이지 이동");
		
		return "myPage/myPageUpdate";
	}
	
	
	/*즐겨찾기 클릭시*/
	@RequestMapping(value = "/myPageLike", method = RequestMethod.GET)
	public String myPageLike(Model model) {
		
		logger.info("즐겨찾기 페이지 이동");

		return "myPage/myPageLike";
	}
	/*개설한 모임 클릭시*/
	@RequestMapping(value = "/myPageMake", method = RequestMethod.GET)
	public String myPageMake(Model model) {
		
		logger.info("개설한 모임 페이지 이동");

		return "myPage/myPageMake";
	}
	/*신청한 모임 클릭시*/
	@RequestMapping(value = "/myPageJoin", method = RequestMethod.GET)
	public String myPageJoin(Model model) {
		
		logger.info("신청한 모임 페이지 이동");

		return "myPage/myPageJoin";
	}
	/*내가 작성한 문의 클릭시*/
	@RequestMapping(value = "/myPageQna", method = RequestMethod.GET)
	public String myPageQna(Model model) {
		
		logger.info("내가 작성한 문의 페이지 이동");

		return "myPage/myPageQna";
	}
	/*포인트 내역 클릭시*/
	@RequestMapping(value = "/myPagePoint", method = RequestMethod.GET)
	public String myPagePoint(Model model,HttpSession session) {
		
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
	

	
	
}
