package gudi.pro.eeem.dto;

public class MeetWriterDTO {
	

	// 개설자 정보를 가져오는 dto
	private int meet_num; //모임 번호
	private String  mem_id; //모임 개설자 아이디
	private String  mem_name; //개설자 이름
	private String  mem_email; //개설자 이메일
	private String  mem_phone; //개설자 전화번호 
	private String  grd_score; //개설자 평점
	
	public String getGrd_score() {
		return grd_score;
	}
	public void setGrd_score(String grd_score) {
		this.grd_score = grd_score;
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
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}

	

}
