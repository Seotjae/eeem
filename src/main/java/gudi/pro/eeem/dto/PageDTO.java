package gudi.pro.eeem.dto;

public class PageDTO {
	
	private String meet_subject;
	private int meet_point;
	
	

	public int getMeet_point() {
		return meet_point;
	}

	public void setMeet_point(int meet_point) {
		this.meet_point = meet_point;
	}

	private String keyword;
	
	private int count;
	private int num;
	
	
	public String getMeet_subject() {
		return meet_subject;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public void setMeet_subject(String meet_subject) {
		this.meet_subject = meet_subject;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}


}
