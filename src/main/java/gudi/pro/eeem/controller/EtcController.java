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

import gudi.pro.eeem.dto.EtcDTO;
import gudi.pro.eeem.service.EtcService;


@Controller
public class EtcController {
	
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired EtcService qstservice;
	
	
	//2022-03-10 유현진 문의 글쓰기 페이지 요청
	//세션에 담아서 디비에 있는 이메일을 꺼내와서 모델에 담아오기
	@RequestMapping(value = "/queWriteForm")
	public String queWriteForm(Model model, HttpSession session) {
	logger.info("queWriteForm 으로 이동");

	//세션에 담기
	String mem_id = (String) session.getAttribute("loginId");
	model.addAttribute("mem_id", mem_id);
	

	String mem_email= qstservice.getEmail(mem_id);
	model.addAttribute("mem_email", mem_email);
	logger.info("mem_email : {}",mem_email);

	
		return "question/queWriteForm";
		
	}
	
	//2022-03-10 유현진 문의 글쓰기 
	@RequestMapping(value = "/queWrite")
	public String queWrite(Model model
			,@RequestParam HashMap<String, String> params ,HttpSession session) {
		
		
		String mem_id = (String) session.getAttribute("loginId");
		model.addAttribute("mem_id", mem_id);
			
			params.put("mem_id", mem_id);
			logger.info("글쓰기 요청 : {}",params);
			String que_num = qstservice.queWrite(params);
				
		return "redirect:/queDetail?que_num="+que_num;
		
	}
	
	
	//2022-03-10 유현진 문의 글쓰기 상세보기
	@RequestMapping(value = "/queDetail", method = RequestMethod.GET)
	public String queDetail(Model model, @RequestParam String que_num ,HttpSession session) {
		
			logger.info("detail 요청 : {}",que_num);
			String mem_id = (String) session.getAttribute("loginId");
			model.addAttribute("loginId", mem_id);
			EtcDTO etcdto = qstservice.queDetail(que_num, "queDetail");
			
			logger.info("db로부터 받아온 값 : {}"+etcdto.getQue_content());
			model.addAttribute("question",etcdto);
			
			String mem_name = qstservice.getName(mem_id);
			model.addAttribute("mem_name", mem_name);
			logger.info("name : {}",mem_name);

			String mem_email= qstservice.getEmail(mem_id);
			model.addAttribute("mem_email", mem_email);
			logger.info("email :{}",mem_email);

		return "question/queDetail";
		
	}
	
	// 2022-03-14 유현진 문의상세보기 - 삭제하기
	@RequestMapping(value = "/delete")
	public String delete(Model model, @RequestParam String que_num, HttpSession session) {
		
		logger.info("삭제 요청 : {}", que_num);
		qstservice.delete(que_num);
		return "redirect:/myPageQna";
	}
	
	@RequestMapping(value = "/bookmarkinsert", method = RequestMethod.GET) // 메인페이지 즐겨찾기목록 추가하기
	@ResponseBody
	public HashMap<String, Object> bookmarkinsert(Model model, @RequestParam int meet_num,HttpSession session) { 
		logger.info("즐겨찾기 목록 추가요청"); // 메인화면 즐겨찾기 목록추가하기
			
			String mem_id = (String) session.getAttribute("loginId");
			HashMap<String, Object>map = new HashMap<String,Object>();
			String msg = "즐겨찾기 목록 추가는 로그인후 사용 가능합니다.";
		    
			if (mem_id != null) { //로그인이 되어있으면 즐겨찾기추가를 진행하고
				
				int row = qstservice.likecountchk(mem_id);//즐겨찾기 목록의 갯수 확인
					
				
				int bookmarkCheck = qstservice.bookmarkselect(meet_num,mem_id); //즐겨찾기목록가져오고
				logger.info("bookmarkCheck : {}",bookmarkCheck);
					
				
				if (bookmarkCheck == 1) { //기존의db에 목록이랑 요청들어온 meet_num이랑 비교
				
				qstservice.bookmarkdelete(meet_num,mem_id);//기존에 즐겨찾기목록에있으면 삭제
				logger.info("즐겨찾기 목록 삭제");
				msg = "즐겨찾기 목록에서 삭제하였습니다.";
				
				}else if(row < 5){
				
				qstservice.bookmarkinsert(meet_num,mem_id);//없으면 insert하기
				logger.info("즐겨찾기 목록 추가");
				msg = "회원님의 즐겨찾기목록에 추가되었습니다.";
				
				}else if(row == 5) {
				
				msg = "즐겨찾기 등록은 5개 까지만 가능합니다!";
				}
				
				
			}
			
			map.put("msg",msg);
					
		return map;
		
	}
	
	

	
	

}

