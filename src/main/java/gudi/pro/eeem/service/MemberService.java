package gudi.pro.eeem.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gudi.pro.eeem.dao.MemberDAO;

@Service
public class MemberService {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired MemberDAO memDAO;

	
	public String myPageUpdateForm(String mem_id) {
	
		return memDAO.myPageUpdateForm(mem_id);
	}




}
