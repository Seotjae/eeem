package gudi.pro.eeem.dao;

import java.util.ArrayList;
import java.util.HashMap;

import gudi.pro.eeem.dto.ManagerDTO;

public interface ManagerDAO {

	

	int declarationAllCount();

	ArrayList<ManagerDTO> declarationListCall(int pagePerCnt, int offset);

	String checkCont(int dec_type, int dec_targetNum);

	int sct_regist(HashMap<String, String> params);

	void dec_update(String dec_num);

	

}
