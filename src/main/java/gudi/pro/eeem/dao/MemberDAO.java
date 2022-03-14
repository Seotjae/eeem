package gudi.pro.eeem.dao;

import java.util.HashMap;

import gudi.pro.eeem.dto.MemberDTO;

public interface MemberDAO {

	int idCheck(String mem_id);

	int phCheck(String mem_phone);

	int regist(HashMap<String, String> params);

	String myPageUpdateForm(String mem_id);

	MemberDTO detail(String mem_id);



}
