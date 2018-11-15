package com.auction.vo;

public class BidVO {
	private String cat1;
	private String id;
	private String code;
	private String term;
	private int finalPrice;
	
	public BidVO() {
		super();
	}

	public BidVO(String cat1, String id, String code, String term, int finalPrice) {
		super();
		this.cat1 = cat1;
		this.id = id;
		this.code = code;
		this.term = term;
		this.finalPrice = finalPrice;
	}

	public String getCat1() {
		return cat1;
	}

	public void setCat1(String cat1) {
		this.cat1 = cat1;
	}

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

	public String getTerm() {
		return term;
	}

	public void setTerm(String term) {
		this.term = term;
	}

	public int getFinalPrice() {
		return finalPrice;
	}

	public void setFinalPrice(int finalPrice) {
		this.finalPrice = finalPrice;
	}

}
