package gudi.pro.eeem.service;

import java.util.HashMap;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gudi.pro.eeem.dao.MeetDAO;
import gudi.pro.eeem.dto.MeetDTO;
import gudi.pro.eeem.dto.PageDTO;

@Service
public class MeetService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired
	public MeetDAO meetDao;

	public ArrayList<MeetDTO> meetList(String keyword, String meet_subject, String meet_point) {
		
		 PageDTO pageDto = new PageDTO();
		 pageDto.setKeyword(keyword);
		 pageDto.setMeet_subject(meet_subject);
		 pageDto.setMeet_point(Integer.parseInt(meet_point));
		return meetDao.meetList(pageDto);
	}

	public String meetRegist(MultipartFile thum_file, HashMap<String, String> params, MultipartFile[] photos) {
		//1.파라미터 dto로 옮기기
		//1-1썸네일 사진 이름 변환
		//1-2썸네일 사진 저장
		
		//2.모임등록하고 등록한 meet_num 가져오기
		
		//3.내용사진 저장
		
		//4.
		
		return null;
	}

	
	
	/*
	public int meetSerchCount(String keyword) {
		
		PageDTO pageDto = new PageDTO();
		pageDto.setKeyword(keyword);
		//pageDto.setMeet_subject(meet_subject);
		
		return meetDao.meetSerchCount(pageDto);
	}
	*/
	

}
