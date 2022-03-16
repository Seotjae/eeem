package gudi.pro.eeem.dao;

import java.util.ArrayList;

import gudi.pro.eeem.dto.ManagerDTO;

public interface ManagerDAO {

	

	int declarationAllCount();

	ArrayList<ManagerDTO> declarationListCall(int pagePerCnt, int offset);

}
