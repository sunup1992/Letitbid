package com.auction.vo;

public class AuctionVO {
	private String category;
	private String prodname;
	private int price;
	private String condition;
	private String ref;
	private String code;
	private String id;
	private String term;
	private String descrip;
	
	
	public AuctionVO() {
		super();
	}

	public AuctionVO(String category, String prodname, int price, String condition, String ref, String code, String id,
			String term, String descrip) {
		super();
		this.category = category;
		this.prodname = prodname;
		this.price = price;
		this.condition = condition;
		this.ref = ref;
		this.code = code;
		this.id = id;
		this.term = term;
		this.descrip = descrip;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getprodname() {
		return prodname;
	}

	public void setprodname(String prodname) {
		this.prodname = prodname;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getRef() {
		return ref;
	}

	public void setRef(String ref) {
		this.ref = ref;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTerm() {
		return term;
	}

	public void setTerm(String term) {
		this.term = term;
	}

	public String getDescrip() {
		return descrip;
	}

	public void setDescrip(String descrip) {
		this.descrip = descrip;
	}

	
}
