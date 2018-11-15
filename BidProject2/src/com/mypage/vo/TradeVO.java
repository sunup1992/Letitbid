package com.mypage.vo;

public class TradeVO {
	private String id;
	private String code;
	private String prodname;
	private String descrip;
	private int finalPrice;
	
	private String username_bidder;
	private String roadFullAddr_bidder;
	private String phone_bidder;
	
	private String username_seller;
	private String roadFullAddr_seller;
	private String phone_seller;
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getProdname() {
		return prodname;
	}
	public void setProdname(String prodname) {
		this.prodname = prodname;
	}
	public String getDescrip() {
		return descrip;
	}
	public void setDescrip(String descrip) {
		this.descrip = descrip;
	}
	public int getFinalPrice() {
		return finalPrice;
	}
	public void setFinalPrice(int finalPrice) {
		this.finalPrice = finalPrice;
	}
	public String getUsername_bidder() {
		return username_bidder;
	}
	public void setUsername_bidder(String username_bidder) {
		this.username_bidder = username_bidder;
	}
	public String getRoadFullAddr_bidder() {
		return roadFullAddr_bidder;
	}
	public void setRoadFullAddr_bidder(String roadFullAddr_bidder) {
		this.roadFullAddr_bidder = roadFullAddr_bidder;
	}
	public String getPhone_bidder() {
		return phone_bidder;
	}
	public void setPhone_bidder(String phone_bidder) {
		this.phone_bidder = phone_bidder;
	}
	public String getUsername_seller() {
		return username_seller;
	}
	public void setUsername_seller(String username_seller) {
		this.username_seller = username_seller;
	}
	public String getRoadFullAddr_seller() {
		return roadFullAddr_seller;
	}
	public void setRoadFullAddr_seller(String roadFullAddr_seller) {
		this.roadFullAddr_seller = roadFullAddr_seller;
	}
	public String getPhone_seller() {
		return phone_seller;
	}
	public void setPhone_seller(String phone_seller) {
		this.phone_seller = phone_seller;
	}
	
}
