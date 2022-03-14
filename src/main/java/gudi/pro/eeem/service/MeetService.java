package gudi.pro.eeem.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gudi.pro.eeem.dao.MeetDAO;
import gudi.pro.eeem.dto.MeetDTO;

@Service
public class MeetService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired MeetDAO meetDao;

	public ArrayList<MeetDTO> meetList() {
		// TODO Auto-generated method stub
		return meetDao.meetList();
	}

}
