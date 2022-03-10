package gudi.pro.eeem.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import gudi.pro.eeem.dto.EtcDTO;
import gudi.pro.eeem.service.EtcService;


@Controller
public class EtcController {
	
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired EtcService qstservice;
	
	@RequestMapping(value = "/queList", method = RequestMethod.GET)
	public String list(Model model) {
		logger.info("list 요청");
		
		ArrayList<EtcDTO>list = qstservice.list();
		
		logger.info("글의 수 : {}", list.size());
		
		model.addAttribute("size", list.size());
		model.addAttribute("list", list);
		
		return "queList";
	}
	
	
	
	
	//2022-03-10 유현진 문의 글쓰기
	@RequestMapping(value = "/queWriteForm", method = RequestMethod.GET)
	public String writeForm(Model model) {
		
			logger.info("writeForm 으로 이동");

		return "queWriteForm";
		
	}
	
	//2022-03-10 유현진 문의 글쓰기
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(Model model, @RequestParam HashMap<String, String> params) {
		
			logger.info("write 요청 : {}",params);
			
			qstservice.write(params);

		return "redirect:/";
		
	}
	
	
	//2022-03-10 유현진 문의 상세보기
	@RequestMapping(value = "/queDetail", method = RequestMethod.GET)
	public String detail(Model model, @RequestParam String que_num) { 
		
			logger.info("detail 요청 : {}",que_num);
			
	 
			EtcDTO etcdto = qstservice.detail(que_num, "detail");
			
			logger.info("db로부터 받아온 값 : {}"+etcdto.getQue_content());

			model.addAttribute("question",etcdto);

		return "queDetail";
		
	}
	
	

}

