package com.chemguan.entity;

import java.sql.Date;

public class IntegralMall {
	private int id;
	
	private String productName;
	
	private String imgURL;
	
	private String price;
	
	private Date addDate;
	
	private int columnid;
	
	private int visitcount;
	
	private int score;

	private String description;
	
	private String detail;
	
	private String address;
	

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getImgURL() {
		return imgURL;
	}

	public void setImgURL(String imgURL) {
		imgURL = imgURL;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public Date getAddDate() {
		return addDate;
	}

	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}

	public int getColumnid() {
		return columnid;
	}

	public void setColumnid(int columnid) {
		this.columnid = columnid;
	}

	public int getVisitcount() {
		return visitcount;
	}

	public void setVisitcount(int visitcount) {
		this.visitcount = visitcount;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	
	public IntegralMall(int id, String productName, String imgURL,
			String price, Date addDate, int columnid, int visitcount,
			int score, String description, String detail) {
		this.id = id;
		this.productName = productName;
		imgURL = imgURL;
		this.price = price;
		this.addDate = addDate;
		this.columnid = columnid;
		this.visitcount = visitcount;
		this.score = score;
		this.description = description;
		this.detail = detail;
	}

	public IntegralMall() {
	}

	public IntegralMall(String productName) {
		this.productName = productName;
	}
	
	

	public IntegralMall(int visitcount) {
		this.visitcount = visitcount;
	}

	@Override
	public String toString() {
		return "IntegralMall [addDate=" + addDate + ", address=" + address
				+ ", columnid=" + columnid + ", description=" + description
				+ ", detail=" + detail + ", id=" + id + ", imgURL=" + imgURL
				+ ", price=" + price + ", productName=" + productName
				+ ", score=" + score + ", visitcount=" + visitcount + "]";
	}
	
	
	
	
	
	
}
