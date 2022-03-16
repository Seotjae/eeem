package gudi.pro.eeem.dto;

import java.util.Date;

public class ManagerDTO {
	
	private int dec_num;			//신고번호
	private String dec_targetId;	//신고당하는 아이
	private int dec_targetNum;		//대상번호
	private int dec_type; 			//대상구분
	private String dec_content;		//신고내용
	private Date dec_date;			//등록날짜
	private int dec_state;			//처리상태 
	private String dec_admin;		//처리자
	private Date dec_chk_Date;		//처리날짜
	private String mem_id;			//신고자
	private int meet_num;			//모임번호
	private int sct_type;			//제제내용
	
	
	
	
	
	public int getSct_type() {
		return sct_type;
	}
	public void setSct_type(int sct_type) {
		this.sct_type = sct_type;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	
	
	
	public int getMeet_num() {
		return meet_num;
	}
	public void setMeet_num(int meet_num) {
		this.meet_num = meet_num;
	}
	public int getDec_num() {
		return dec_num;
	}
	public void setDec_num(int dec_num) {
		this.dec_num = dec_num;
	}
	public String getDec_targetId() {
		return dec_targetId;
	}
	public void setDec_targetId(String dec_targetId) {
		this.dec_targetId = dec_targetId;
	}
	public int getDec_targetNum() {
		return dec_targetNum;
	}
	public void setDec_targetNum(int dec_targetNum) {
		this.dec_targetNum = dec_targetNum;
	}
	public int getDec_type() {
		return dec_type;
	}
	public void setDec_type(int dec_type) {
		this.dec_type = dec_type;
	}
	public String getDec_content() {
		return dec_content;
	}
	public void setDec_content(String dec_content) {
		this.dec_content = dec_content;
	}
	public Date getDec_date() {
		return dec_date;
	}
	public void setDec_date(Date dec_date) {
		this.dec_date = dec_date;
	}
	public int getDec_state() {
		return dec_state;
	}
	public void setDec_state(int dec_state) {
		this.dec_state = dec_state;
	}
	public String getDec_admin() {
		return dec_admin;
	}
	public void setDec_admin(String dec_admin) {
		this.dec_admin = dec_admin;
	}
	public Date getDec_chk_Date() {
		return dec_chk_Date;
	}
	public void setDec_chk_Date(Date dec_chk_Date) {
		this.dec_chk_Date = dec_chk_Date;
	}
	
	

}
