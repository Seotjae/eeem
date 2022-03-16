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
	
	/*
	 * //문의 상세보기 썸네일 관련 ArrayList<PhotoDTO> thumList(String meet_num);
	 */
	String getName(String mem_id);

	String getEmail(String mem_id);

	String getphone(String mem_id);




	int makeAllCount(String mem_id);



	ArrayList<MeetDTO> MakeList(int pagePerCnt, int offset, String mem_id);


}
