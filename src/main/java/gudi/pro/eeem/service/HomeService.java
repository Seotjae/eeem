package gudi.pro.eeem.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gudi.pro.eeem.dao.HomeDAO;
import gudi.pro.eeem.dto.EtcDTO;
import gudi.pro.eeem.dto.MeetDTO;
import gudi.pro.eeem.dto.MemberDTO;

@Service
public class HomeService {
	@Autowired HomeDAO homedao;
	
	public ArrayList<MeetDTO> home() {
	
		return homedao.home();
		
	}

	public ArrayList<EtcDTO> notice(String mem_id) {
		
		return homedao.notice(mem_id);
	}
	
	public ArrayList<MeetDTO> mainmeet() {
		
		return homedao.mainmeet();
	}

	public ArrayList<MeetDTO> mainusermeet(String mem_id) {
		// TODO Auto-generated method stub
		return homedao.mainusermeet(mem_id);
	}



}
