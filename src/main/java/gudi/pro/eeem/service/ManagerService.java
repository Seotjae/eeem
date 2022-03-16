package gudi.pro.eeem.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gudi.pro.eeem.dao.ManagerDAO;
import gudi.pro.eeem.dto.ManagerDTO;

@Service
public class ManagerService {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired ManagerDAO managerDao;

	

	public HashMap<String, Object> declarationListCall(int currPage, int pagePerCnt) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int offset = ((currPage-1) * pagePerCnt-1) >= 0  ? 
				((currPage-1) * pagePerCnt-1) : 0;		
		logger.info("offset : {}",offset);	
		
		int totalCount = managerDao.declarationAllCount();
		int range = totalCount%pagePerCnt > 0 ? 
				 (totalCount/pagePerCnt)+1 : (totalCount/pagePerCnt);
		 logger.info("총 갯수 : {}",totalCount);
		 logger.info("만들 수 있는 총 페이지 : {}",range);
		 
		 
		 ArrayList<ManagerDTO> managerDto = new ArrayList<ManagerDTO>();
		 managerDto = managerDao.declarationListCall(pagePerCnt, offset);
		 map.put("pages",range);
		 map.put("list", managerDto);
		 
		
		return map;
	}
	

}
