package gudi.pro.eeem.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import gudi.pro.eeem.dto.PointDTO;
import gudi.pro.eeem.service.PointService;
@Controller
public class PointController {
	@Autowired PointService ptService;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@RequestMapping(value = "/listCall", method = RequestMethod.GET)
	public @ResponseBody HashMap<String, Object> listCall(HttpSession session){
		
		String mem_id = (String) session.getAttribute("loginId");
		HashMap<String, Object> map = new HashMap<String, Object>();
		logger.info("리스트 불러오기");
		ArrayList<PointDTO> list = ptService.listCall(mem_id);
		map.put("list",list);
		map.put("count",list.size());
		return map;
	}
}
