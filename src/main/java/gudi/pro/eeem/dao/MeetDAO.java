package gudi.pro.eeem.dao;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;

import gudi.pro.eeem.dto.ApplicantAndMeetDTO;
import gudi.pro.eeem.dto.CommentDTO;
import gudi.pro.eeem.dto.MeetDTO;
import gudi.pro.eeem.dto.MeetWriterDTO;
import gudi.pro.eeem.dto.MymeetAndApplicant;
import gudi.pro.eeem.dto.PageDTO;
import gudi.pro.eeem.dto.PhotoDTO;
import gudi.pro.eeem.dto.ReviewDTO;
import gudi.pro.eeem.dto.myPageJoinDTO;

public interface MeetDAO {

	ArrayList<MeetDTO> meetList(PageDTO pageDto);

	

	//int meetSerchCount(PageDTO pageDto);

	

	

	void meetRegist(MeetDTO dto);

	void adRegist(int meet_num, int meet_region);

	void registPhoto(int meet_num, String photo_oriName, String photo_newName);

	ArrayList<Integer> chkGthrSt(String now);

	void updateMeetState(int meet_num, int i);

	ArrayList<Integer> chkGthrEd(String now);

	ArrayList<Integer> chkEd(String plusDays);

	




	//int meetSerchCount(PageDTO pageDto);
	
	//문의 상세보기
	MeetDTO meetDetail(String meet_num);
	
	//문의 상세보기 썸네일 관련
	ArrayList<PhotoDTO> thumList(String meet_num);
	//2022-03-15 유현진 모임 상세보기 개설자 정보 가져오기
	MeetWriterDTO MeetWriter(String meet_num);
	//승인 인원수를 불러오는 기능
	int approvechk(String meet_num);
	//신청자 포인트 확인
	String mpointchk(String mem_id);

	int makeAllCount(String mem_id);



	ArrayList<ApplicantAndMeetDTO> MakeList(int pagePerCnt, int offset, String mem_id);

	//유현진 -모임 신청시 신청자 테이블 등록
	int meetAppInsert(HashMap<String, Object> map);

	//유현진 - 모임 신청시 알림 테이블 등록
	int meetNoticeInsert(HashMap<String, Object> map);


	
	//내 모임을 신청한 사람 목록
	int meetAppAllCount(int meet_num, int app_state);



	ArrayList<MymeetAndApplicant> meetAppsCall(int pagePerCnt, int offset, int meet_num, int app_state);



	int[] prsCount(int meet_num);


	String grdAvg(String mem_id);



	int makeDel(String meet_num);
	
	ArrayList<String> ptReturnId(String meet_num);
	
	int ptReturnCount(String meet_num);
	
	ArrayList<myPageJoinDTO> appList(int pagePerCnt, int offset, String mem_id);

	int appAllCount(String mem_id);
		
	int completion(String meet_num, String mem_id);
	
	int meetcompletion(String meet_num);
	
	int meetcompletionTow(String meet_num);
	
	int meetsuccess(String meet_num);
	
	int pointreturn(String meet_num, String mem_id);
		
	int meetStop(String meet_num, String mem_id);
	
	MeetDTO MakeScorePage(String meet_num,String mem_id);

	//2022-03-21 유현진 모임 상세보기  안에있는 글 사진 꺼내오기. + 내용도 가져오기
	MeetDTO meetDetailBoard(String meet_num);


	//모임 상세보기 본문 사진불러오기
	ArrayList<PhotoDTO> photoList(String meet_num);

	String getId(int meet_num);

	String getNum(int meet_num);

	String getSubject(int meet_num);

	int meetSct_regist(HashMap<String, String> params);

	int updAppSt(int app_num);

	//2022-03-21 유현진 모임상세보기 모임 문의 글쓰기 
	int meetCommentWrite(CommentDTO dto);

	void meetCommentWriteUpdate(int cmt_num);

	int meetReviewCallCount(int meet_num);

	ArrayList<ReviewDTO> meetReviewCall(int pagePerCnt, int offset, int meet_num);

	int meetReviewRegist(String meet_num, String mem_id, String rev_subject, String rev_content);

	int chkAppYN(String meet_num, String mem_id);

	int chkReviewYN(String meet_num, String mem_id);

	void meetRevDel(int rev_num);

	int meetCommentCallCount(int meet_num);

	ArrayList<CommentDTO> meetCommentCall(int pagePerCnt, int offset, int meet_num);

	int cmtNumchk(String meet_num);

	int reCommentWrite(HashMap<String, String> params);


	void commentDelete(String meet_num, String cmt_num);

	int delAdv(int meet_num, int ad_state);

	int makeEvaluation(String targetId, String meet_num, String score, String mem_id);


	int adCount(int ad_meetArea);



	void pointReturnNotice(String meet_num, String mem_id);



	int chkMeetBmkCount(String mem_id, String meet_num);



	int chkAppCount(String meet_num, String mem_id);



	String chkAppState(HashMap<String, Object> map);



	int updAppState(String result);



	





}
