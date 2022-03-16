package gudi.pro.eeem.dto;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("question")
public class QuestionDTO {
	
	private int que_num; //문의번호
	private String mem_id; //작성자
	private String que_subject; //제목
	private String que_content; //내용
	private int que_category; //문의분류
	private int que_state; //처리상태
	private String que_admin; //처리자
	private Date que_date; //등록날짜
	
	
	public int getQue_num() {
		return que_num;
	}
	public void setQue_num(int que_num) {
		this.que_num = que_num;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getQue_subject() {
		return que_subject;
	}
	public void setQue_subject(String que_subject) {
		this.que_subject = que_subject;
	}
	public String getQue_content() {
		return que_content;
	}
	public void setQue_content(String que_content) {
		this.que_content = que_content;
	}
	public int getQue_category() {
		return que_category;
	}
	public void setQue_category(int que_category) {
		this.que_category = que_category;
	}
	public int getQue_state() {
		return que_state;
	}
	public void setQue_state(int que_state) {
		this.que_state = que_state;
	}
	public String getQue_admin() {
		return que_admin;
	}
	public void setQue_admin(String que_admin) {
		this.que_admin = que_admin;
	}
	public Date getQue_date() {
		return que_date;
	}
	public void setQue_date(Date que_date) {
		this.que_date = que_date;
	}
	
	

}
