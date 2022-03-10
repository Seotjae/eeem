package gudi.pro.eeem.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gudi.pro.eeem.dao.HomeDAO;
import gudi.pro.eeem.dto.MeetDTO;

@Service
public class HomeService {
	@Autowired HomeDAO homedao;
	
	public ArrayList<MeetDTO> home() {
	
		return homedao.home();	
		
	}

}
