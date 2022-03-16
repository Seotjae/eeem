package gudi.pro.eeem.service;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gudi.pro.eeem.dao.PointDAO;

@Service
public class PointService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired PointDAO ptDAO;







	
}
