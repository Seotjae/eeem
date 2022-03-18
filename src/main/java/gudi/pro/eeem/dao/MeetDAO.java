package gudi.pro.eeem.dao;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;

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
		MeetWriterDTO MeetWriter(String meet_num);
		//승인 인원수를 불러오는 기능
		int approvechk(String mem_id);
		//신청자 포인트 확인
		int mpointchk(String mem_id);

	int makeAllCount(String mem_id);



	ArrayList<ApplicantAndMeetDTO> MakeList(int pagePerCnt, int offset, String mem_id);

	//유현진 -모임 신청시 신청자 테이블 등록
		int meetAppInsert(HashMap<String, Object> map);

		//유현진 - 모임 신청시 알림 테이블 등록
		int meetNoticeInsert(HashMap<String, Object> map);



	ArrayList<myPageJoinDTO> appList(int pagePerCnt, int offset, String mem_id);



	int appAllCount(String mem_id);


}
