package gudi.pro.eeem.controller;

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

import gudi.pro.eeem.service.MemberService;

@Controller
public class MemberController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired MemberService memService;
	
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
	public String myPagePoint(Model model) {
		
		logger.info("포인트 내역 페이지 이동");

		return "myPage/myPagePoint";
	}
	
	String hashText = "";
	
	
	/*비밀번호 일치시*/
	@RequestMapping(value = "/myPageUpdateForm", method = RequestMethod.GET)
	public String myPageUpdateForm(Model model,@RequestParam String mem_pw, HttpSession session) {
		String page = "myPage/myPageUpdate";
		session.setAttribute("loginId", "sy0913");
		String mem_id = (String) session.getAttribute("loginId");
		logger.info("세션에 저장된 아이디 :{}",mem_id);
		String hashText = memService.myPageUpdateForm(mem_id);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		boolean success = encoder.matches(mem_pw, hashText);
		logger.info("입력된비밀번호 :{}",mem_pw);
		logger.info("암호화된비밀번호 :{}",hashText);
		if(success) {
			page = "myPage/myPageUpdateForm";
		}else {
	
			model.addAttribute("msg", "비밀번호 확인후 다시 시도해주세요");
		}
		return page;
	}
	
	
	
	
}
