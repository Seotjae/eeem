package gudi.pro.eeem.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import gudi.pro.eeem.service.ManagerService;

@Controller
public class ManagerController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired ManagerService managerService;
	
	
	@RequestMapping(value = "/managerDeclaration", method = RequestMethod.GET)
	public String managerDeclaration(Model model) {
		logger.info("신고처리 페이지'");
		
		
		
		return "manager/managerDeclaration";
	}

}
