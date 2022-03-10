package gudi.pro.eeem.dao;

import java.util.ArrayList;
import java.util.HashMap;

import gudi.pro.eeem.dto.EtcDTO;


public interface EtcDAO {

	ArrayList<EtcDTO> list();

	int write(HashMap<String, String> params);

	EtcDTO detail(String que_num);

	



}
