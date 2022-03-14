package gudi.pro.eeem.dto;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

@Alias("etc")
public class EtcDTO {
	
	private int que_num;
	private String mem_id;
	private String que_subject;
	private String que_content;
	private int que_category;
	private int que_state;
	private String que_admin;
	private int que_del;
	private Date que_date;
	private String mem_email;
	private int nts_num;
	private int nts_targetNum;
	private int nts_content;
	private int nts_confirm;
	private Date nts_date;
	
	public int getNts_num() {
		return nts_num;
	}

	public void setNts_num(int nts_num) {
		this.nts_num = nts_num;
	}

	public int getNts_targetNum() {
		return nts_targetNum;
	}

	public void setNts_targetNum(int nts_targetNum) {
		this.nts_targetNum = nts_targetNum;
	}

	public int getNts_content() {
		return nts_content;
	}

	public void setNts_content(int nts_content) {
		this.nts_content = nts_content;
	}

	public int getNts_confirm() {
		return nts_confirm;
	}

	public void setNts_confirm(int nts_confirm) {
		this.nts_confirm = nts_confirm;
	}

	public Date getNts_date() {
		return nts_date;
	}

	public void setNts_date(Date nts_date) {
		this.nts_date = nts_date;
	}

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

	public int getQue_del() {
		return que_del;
	}

	public void setQue_del(int que_del) {
		this.que_del = que_del;
	}

	public Date getQue_date() {
		return que_date;
	}

	public void setQue_date(Date que_date) {
		this.que_date = que_date;
	}

	public String getMem_email() {
		return mem_email;
	}

	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	
	
	
	
	
	
	
	
	
	

}
