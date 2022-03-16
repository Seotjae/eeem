package gudi.pro.eeem.dto;

import java.security.Timestamp;
import java.sql.Date;

import org.apache.ibatis.type.Alias;

@Alias(value="members")
public class MemberDTO {
	private String mem_id; //아이디
	private String mem_pw; //비밀번호
	private String mem_name; //이름
	private String mem_phone; //폰번호
	private String mem_email; //이메일
	private String mem_gender; //성별
	private Date mem_birth; //생년월일
	private int mem_interest; //선호분야
	private int mem_region; //선호지역
	private int mem_state; //회원상태  일반:0 관리자:1 탈퇴:2 정지:3
	private Timestamp mem_date; //회원등록일
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
