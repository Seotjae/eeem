package gudi.pro.eeem.dao;

import java.util.ArrayList;
import java.util.HashMap;

import gudi.pro.eeem.dto.ApplicantAndMeetDTO;
import gudi.pro.eeem.dto.BookmarkAndMeetDTO;
import gudi.pro.eeem.dto.MemberDTO;
import gudi.pro.eeem.dto.NoticeDTO;
import gudi.pro.eeem.dto.QuestionDTO;
import gudi.pro.eeem.dto.myPageJoinDTO;


public interface MemberDAO {

	int idCheck(String mem_id);

	int phCheck(String mem_phone);

	int regist(HashMap<String, String> params);

	String myPageUpdateForm(String mem_id);

	MemberDTO detail(String mem_id);

	ArrayList<NoticeDTO> notice_call(String loginId);

	int memberUpdate(HashMap<String, String> params);

	MemberDTO loginForm(String mem_id);

	int queAllCount(String mem_id);

	ArrayList<QuestionDTO> qnaListCall(int pagePerCnt, int offset, String mem_id);


	String idSearch(String mem_name, String mem_phone);

	ArrayList<BookmarkAndMeetDTO> likeListCall(String mem_id);


	String grdAvg(String mem_id);

	String myPageJoin(String mem_id);

	int myPageRate(int meet_num, String mem_id);

	ApplicantAndMeetDTO rate(int meet_num);

	int notiesclick(int nts_num);

	int notiesdel(int nts_num);




	





}
