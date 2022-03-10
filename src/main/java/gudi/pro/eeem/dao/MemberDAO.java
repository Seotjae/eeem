package gudi.pro.eeem.dao;

import java.util.HashMap;

public interface MemberDAO {

	int idCheck(String mem_id);

	int phCheck(String mem_phone);

	int regist(HashMap<String, String> params);

	String myPageUpdateForm(String mem_id);


}
