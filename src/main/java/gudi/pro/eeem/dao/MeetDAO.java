package gudi.pro.eeem.dao;

import java.time.LocalDateTime;
import java.util.ArrayList;

import gudi.pro.eeem.dto.MeetDTO;
import gudi.pro.eeem.dto.PageDTO;

public interface MeetDAO {

	ArrayList<MeetDTO> meetList(PageDTO pageDto);

	

	//int meetSerchCount(PageDTO pageDto);

	

	

	void meetRegist(MeetDTO dto);

	void adRegist(int meet_num, int meet_region);

	void registPhoto(int meet_num, String photo_oriName, String photo_newName);

	ArrayList<Integer> chkGthrSt(LocalDateTime now);

	void updateMeetState(Integer meet_num, int i);

	ArrayList<Integer> chkGthrEd(LocalDateTime now);

	ArrayList<Integer> chkEd(LocalDateTime plusDays);

	void ntsRegist(String mem_id, int meet_num, int i);




	//int meetSerchCount(PageDTO pageDto);

	
	//모임 상세보기
	MeetDTO meetDetail(String meet_num);


}
