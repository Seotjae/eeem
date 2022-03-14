package gudi.pro.eeem.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import gudi.pro.eeem.dto.EtcDTO;
import gudi.pro.eeem.service.EtcService;


@Controller
public class EtcController {
	
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired EtcService qstservice;
	

	//22-03-14 임시 문의 리스트
	@RequestMapping(value = "/queList", method = RequestMethod.GET)
	public String queList(Model model, HttpSession session) {
		
		logger.info("list 요청");
		
		ArrayList<EtcDTO> list = qstservice.queList();
		
		logger.info("확인해보기");
		
		String loginId = (String) session.getAttribute("loginId");
		
		model.addAttribute("loginId", loginId);
		
		logger.info("글의 수  : {}", list.size());
	
		logger.info("list : {}",list);
		
		model.addAttribute("size", list.size());
		model.addAttribute("list", list);
		
		return "question/queList";
	}
	
	
	
	
	//2022-03-10 유현진 문의 글쓰기 페이지 요청
	//세션에 담아서 디비에 있는 이메일을 꺼내와서 모델에 담아오기
	@RequestMapping(value = "/queWriteForm")
	public String queWriteForm(Model model, HttpSession session) {
	logger.info("queWriteForm 으로 이동");

	String mem_id = (String) session.getAttribute("loginId");

	model.addAttribute("mem_id", mem_id);
		return "question/queWriteForm";
		
	}
	
	//2022-03-10 유현진 문의 글쓰기 
	@RequestMapping(value = "/queWrite")
	public String queWrite(Model model, @ModelAttribute EtcDTO etcdto
			,@RequestParam HashMap<String, String> params ,HttpSession session) {
		
		//세션
	String loginId = (String) session.getAttribute("loginId");
	logger.info("여기는 잘 타고 있나요? 대답해!",loginId);
		model.addAttribute("loginId", loginId);
		//세션
		
			logger.info("글쓰기 요청 : {}",params);
			logger.info("etcdto : {}", etcdto.getMem_id());
			
			qstservice.queWrite(params);

		return "redirect:/question/queList";
		
	}
	
	
	//2022-03-10 유현진 문의 글쓰기 상세보기
	@RequestMapping(value = "/queDetail", method = RequestMethod.GET)
	public String queDetail(Model model, @RequestParam String que_num ,HttpSession session) { 
		
			logger.info("detail 요청 : {}",que_num);

			//로그인 세션
			String mem_id = (String) session.getAttribute("loginId");
			model.addAttribute("loginId", mem_id);
			//
			
			EtcDTO etcdto = qstservice.queDetail(que_num, "queDetail");
			
			logger.info("db로부터 받아온 값 : {}"+etcdto.getQue_content());	
			model.addAttribute("question",etcdto);

		return "question/queDetail";
		
	}
	
	
	// 2022-03-14 유현진 문의상세보기 - 삭제하기
	@RequestMapping(value = "/delete")
	public String delete(Model model, @RequestParam String que_num, HttpSession session) {
		
		logger.info("삭제 요청 : {}", que_num);
		
		qstservice.delete(que_num);
		return "redirect:/question/queList";
	}
	
	@RequestMapping(value = "/bookmarkinsert", method = RequestMethod.GET)
	@ResponseBody
	public int bookmarkinsert(Model model, @RequestParam int meet_num, @RequestParam String mem_id) { 
		logger.info("즐겨찾기 목록 추가요청"); // 메인화면 즐겨찾기 목록추가하기
		
		
		int success = qstservice.bookmarkinsert(meet_num,mem_id);
		
		if (success > 0) {
			logger.info("즐겨찾기 목록추가 확인");
			
		}

		return success;
		
	}
	
	

	
	

}

