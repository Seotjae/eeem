package gudi.pro.eeem.dto;

import java.util.Date;

public class CommentDTO {
	
	private int cmt_num;
	private int meet_num;
	private String mem_id;
	private String cmt_content;
	private int cmt_superNum;
	private int cmt_depth;
	private Date cmt_date;
	
	
	public int getCmt_num() {
		return cmt_num;
	}
	public void setCmt_num(int cmt_num) {
		this.cmt_num = cmt_num;
	}
	public int getMeet_num() {
		return meet_num;
	}
	public void setMeet_num(int meet_num) {
		this.meet_num = meet_num;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getCmt_content() {
		return cmt_content;
	}
	public void setCmt_content(String cmt_content) {
		this.cmt_content = cmt_content;
	}
	public int getCmt_superNum() {
		return cmt_superNum;
	}
	public void setCmt_superNum(int cmt_superNum) {
		this.cmt_superNum = cmt_superNum;
	}
	public int getCmt_depth() {
		return cmt_depth;
	}
	public void setCmt_depth(int cmt_depth) {
		this.cmt_depth = cmt_depth;
	}
	public Date getCmt_date() {
		return cmt_date;
	}
	public void setCmt_date(Date cmt_date) {
		this.cmt_date = cmt_date;
	}
	
	
	
	
	
	

}
