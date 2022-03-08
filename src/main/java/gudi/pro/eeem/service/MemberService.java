package gudi.pro.eeem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gudi.pro.eeem.dao.MemberDAO;

@Service
public class MemberService {

	@Autowired MemberDAO dao;
}
