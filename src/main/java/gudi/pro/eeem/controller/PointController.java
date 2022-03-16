package gudi.pro.eeem.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import gudi.pro.eeem.service.PointService;
@Controller
public class PointController {
	@Autowired PointService ptService;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	


}
