package gudi.pro.eeem.dto;

import java.util.ArrayList;

public class PageDTO {
	
	private String meet_subject;
	private int meet_point;
	private ArrayList<Integer> meet_region;
	private ArrayList<Integer> meet_interest;
	private String meet_num;
	
	public String getMeet_num() {
		return meet_num;
	}
	
	public void setMeet_num(String meet_num) {
		this.meet_num = meet_num;
	}
	

	//페이징 타입
	private String pagingType;

	// 게시물 총 갯수
	private int count;
	// 한 페이지에 출력할 게시물 갯수
	private int postNum = 10;
	// 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
	private int pageNum;
	// 출력할 게시물
	private int displayPost;

	// 한번에 표시할 페이징 번호의 갯수
	private int pageNumCnt = 10;

	// 표시되는 페이지 번호 중 마지막 번호
	private int endPageNum;

	// 표시되는 페이지 번호 중 첫번째 번호
	private int startPageNum;
	// 다음/이전 표시 여부
	private boolean prev;
	private boolean next;
	
	private String searchType;
	
	private String keyword;
	private int num;

	
	public String getPagingType() {
		return pagingType;
	}

	public void setPagingType(String pagingType) {
		this.pagingType = pagingType;
	}

	public int getPostNum() {
		return postNum;
	}

	public void setPostNum(int postNum) {
		this.postNum = postNum;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getDisplayPost() {
		return displayPost;
	}

	public void setDisplayPost(int displayPost) {
		this.displayPost = displayPost;
	}

	public int getPageNumCnt() {
		return pageNumCnt;
	}

	public void setPageNumCnt(int pageNumCnt) {
		this.pageNumCnt = pageNumCnt;
	}

	public int getEndPageNum() {
		return endPageNum;
	}

	public void setEndPageNum(int endPageNum) {
		this.endPageNum = endPageNum;
	}

	public int getStartPageNum() {
		return startPageNum;
	}

	public void setStartPageNum(int startPageNum) {
		this.startPageNum = startPageNum;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	
	
	public ArrayList<Integer> getMeet_region() {
		return meet_region;
	}

	public void setMeet_region(ArrayList<Integer> meet_region) {
		this.meet_region = meet_region;
	}

	public ArrayList<Integer> getMeet_interest() {
		return meet_interest;
	}

	public void setMeet_interest(ArrayList<Integer> meet_interest) {
		this.meet_interest = meet_interest;
	}

	public int getMeet_point() {
		return meet_point;
	}

	public void setMeet_point(int meet_point) {
		this.meet_point = meet_point;
	}

	
	
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
