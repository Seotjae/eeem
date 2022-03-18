package gudi.pro.eeem.dao;

import java.time.LocalDateTime;
import java.util.ArrayList;

import gudi.pro.eeem.dto.ApplicantAndMeetDTO;
import gudi.pro.eeem.dto.MeetDTO;
import gudi.pro.eeem.dto.MeetWriterDTO;
import gudi.pro.eeem.dto.PageDTO;
import gudi.pro.eeem.dto.PhotoDTO;
import gudi.pro.eeem.dto.myPageJoinDTO;

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
	
	//문의 상세보기
	MeetDTO meetDetail(String meet_num);
	
	//문의 상세보기 썸네일 관련
		ArrayList<PhotoDTO> thumList(String meet_num);
		//2022-03-15 유현진 모임 상세보기 개설자 정보 가져오기
		ArrayList<MeetWriterDTO> MeetWriter(String meet_num);
		//승인 인원수를 불러오는 기능
		int approvechk(String mem_id);

		int mpointchk(String mem_id);

	int makeAllCount(String mem_id);



	ArrayList<ApplicantAndMeetDTO> MakeList(int pagePerCnt, int offset, String mem_id);



	ArrayList<myPageJoinDTO> appList(int pagePerCnt, int offset, String mem_id);



	int appAllCount(String mem_id);


}
