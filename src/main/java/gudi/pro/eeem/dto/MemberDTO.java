package gudi.pro.eeem.dto;

import java.security.Timestamp;
import java.sql.Date;

public class MemberDTO {
	private String mem_id;
	private String mem_pw;
	private String mem_name;
	private String mem_phone;
	private String mem_email;
	private String mem_gender;
	private Date mem_birth;
	private int mem_interest;
	private int mem_region;
	private int mem_state;
	private Timestamp mem_date;
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_gender() {
		return mem_gender;
	}
	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}
	public Date getMem_birth() {
		return mem_birth;
	}
	public void setMem_birth(Date mem_birth) {
		this.mem_birth = mem_birth;
	}
	public int getMem_interest() {
		return mem_interest;
	}
	public void setMem_interest(int mem_interest) {
		this.mem_interest = mem_interest;
	}
	public int getMem_region() {
		return mem_region;
	}
	public void setMem_region(int mem_region) {
		this.mem_region = mem_region;
	}
	public int getMem_state() {
		return mem_state;
	}
	public void setMem_state(int mem_state) {
		this.mem_state = mem_state;
	}
	public Timestamp getMem_date() {
		return mem_date;
	}
	public void setMem_date(Timestamp mem_date) {
		this.mem_date = mem_date;
	}
	
}
