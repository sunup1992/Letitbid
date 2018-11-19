package com.user.vo;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class UserVO {
	private String id;
	private String password;
	private String roadFullAddr;
	private String phone;
	private String username;
	private String pwquestion;
	private String pwanswer;
	private String naver_code;
	private int ban;
	
	public String getNaver_code() {
		return naver_code;
	}

	public void setNaver_code(String naver_code) {
		this.naver_code = naver_code;
	}

	public int getBan() {
		return ban;
	}

	public void setBan(int ban) {
		this.ban = ban;
	}

	public UserVO() {
		super();
	}

	public UserVO(String id, String password, String roadFullAddr, String phone, String username, String pwquestion,
			String pwanswer) {
		super();
		this.id = id;
		this.password = password;
		this.roadFullAddr = roadFullAddr;
		this.phone = phone;
		this.username = username;
		this.pwquestion = pwquestion;
		this.pwanswer = pwanswer;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	@JsonIgnore
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	@JsonIgnore
	public String getRoadFullAddr() {
		return roadFullAddr;
	}

	public void setRoadFullAddr(String roadFullAddr) {
		this.roadFullAddr = roadFullAddr;
	}

	@JsonIgnore
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@JsonIgnore
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@JsonIgnore
	public String getPwquestion() {
		return pwquestion;
	}

	public void setPwquestion(String pwquestion) {
		this.pwquestion = pwquestion;
	}

	@JsonIgnore
	public String getPwanswer() {
		return pwanswer;
	}

	public void setPwanswer(String pwanswer) {
		this.pwanswer = pwanswer;
	}

	
	
}
