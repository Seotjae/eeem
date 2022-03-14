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

	//세션에 담기
	String mem_id = (String) session.getAttribute("loginId");
	model.addAttribute("mem_id", mem_id);
	

	String mem_email= qstservice.getEmail(mem_id);
	logger.info("email 나와주세요",mem_email);
	model.addAttribute("mem_email", mem_email);
	logger.info("email 나와주세요",mem_email);

	
		return "queWriteForm";
		
	}
	
	//2022-03-10 유현진 문의 글쓰기 
	@RequestMapping(value = "/queWrite")
	public String queWrite(Model model
			,@RequestParam HashMap<String, String> params ,HttpSession session) {
		

		String mem_id = (String) session.getAttribute("loginId");
		model.addAttribute("mem_id", mem_id);

			logger.info("글쓰기 요청 : {}",params);
			qstservice.queWrite(params);

		return "redirect:/queList";
		
	}
	
	
	//2022-03-10 유현진 문의 글쓰기 상세보기
	@RequestMapping(value = "/queDetail", method = RequestMethod.GET)
	public String queDetail(Model model, @RequestParam String que_num ,HttpSession session) { // @RequestParam 로 파라메터를 가져오는거야, idx 라는걸!
		
			logger.info("detail 요청 : {}",que_num);
			String mem_id = (String) session.getAttribute("loginId");
			model.addAttribute("loginId", mem_id);
			EtcDTO etcdto = qstservice.queDetail(que_num, "queDetail");
			
			logger.info("db로부터 받아온 값 : {}"+etcdto.getQue_content());
			model.addAttribute("question",etcdto);
			
			String mem_name = qstservice.getName(mem_id);
			logger.info("name 나와주세요",mem_name);
			model.addAttribute("mem_name", mem_name);
			logger.info("name 나와주세요",mem_name);

			String mem_email= qstservice.getEmail(mem_id);
			logger.info("email 나와주세요",mem_email);
			model.addAttribute("mem_email", mem_email);
			logger.info("email 나와주세요",mem_email);

		return "queDetail";
		
	}
	
	
	
	// 2022-03-14 유현진 문의상세보기 - 삭제하기
	@RequestMapping(value = "/delete")
	public String delete(Model model, @RequestParam String que_num, HttpSession session) {
		
		logger.info("삭제 요청 : {}", que_num);
		
		qstservice.delete(que_num);
		return "redirect:/question/queList";
	}
	
	@RequestMapping(value = "/bookmarkinsert", method = RequestMethod.GET) // 메인페이지 즐겨찾기목록 추가하기
	@ResponseBody
	public HashMap<String, Object> bookmarkinsert(Model model, @RequestParam int meet_num, @RequestParam String mem_id) { 
		logger.info("즐겨찾기 목록 추가요청"); // 메인화면 즐겨찾기 목록추가하기
		
			HashMap<String, Object>map = new HashMap<String,Object>();
			String msg = "";
		    
			int bookmarkCheck = qstservice.bookmarkselect(meet_num,mem_id); //즐겨찾기목록가져오고
			logger.info("bookmarkCheck : {}",bookmarkCheck);
			
			
			if (bookmarkCheck > 0) { //기존의db에 목록이랑 요청들어온 meet_num이랑 비교
			qstservice.bookmarkdelete(meet_num,mem_id);//기존에 즐겨찾기목록에있으면 삭제
			logger.info("즐겨찾기 목록 삭제");
			msg = "즐겨찾기 목록에서 삭제하였습니다.";
			
			}else{
			qstservice.bookmarkinsert(meet_num,mem_id);//없으면 insert하기
			logger.info("즐겨찾기 목록 추가");
			msg = "회원님의 즐겨찾기목록에 추가되었습니다.";
			}
			map.put("msg",msg);
			
			
			
		return map;
		
	}
	
	

	
	

}

