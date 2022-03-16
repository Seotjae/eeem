package gudi.pro.eeem.dao;

import java.util.ArrayList;
import java.util.HashMap;

import gudi.pro.eeem.dto.MemberDTO;
import gudi.pro.eeem.dto.NoticeDTO;
import gudi.pro.eeem.dto.QuestionDTO;


public interface MemberDAO {

	int idCheck(String mem_id);

	int phCheck(String mem_phone);

	int regist(HashMap<String, String> params);

	String myPageUpdateForm(String mem_id);

	MemberDTO detail(String mem_id);


	ArrayList<NoticeDTO> notice_call(String mem_id);


	int memberUpdate(HashMap<String, String> params);

	MemberDTO loginForm(String mem_id);

	int queAllCount(String mem_id);

	ArrayList<QuestionDTO> qnaListCall(int pagePerCnt, int offset, String mem_id);



}
