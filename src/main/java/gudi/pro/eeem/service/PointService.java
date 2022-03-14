package gudi.pro.eeem.service;


import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gudi.pro.eeem.dao.PointDAO;
import gudi.pro.eeem.dto.PointDTO;

@Service
public class PointService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired PointDAO ptDAO;

	public ArrayList<PointDTO> listCall(String mem_id) {
		logger.info("list call service : DAO 호출");
		return ptDAO.listCall(mem_id);
	}
	
}
