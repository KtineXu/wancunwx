package com.chemguan.entity;

import java.util.Date;

public class WcProduct {
	
	/**
	 *产品ID 
	 */
	private Integer id;
	
	/**
	 *产品名称 
	 */
	private String productName;
	
	/**
	 *图片
	 *（多张图片用逗号隔开，
	 *主后台上传产品时，
	 *限制上传5张 ）
	 */
	private String imgURL;
	
	/**
	 *价格 
	 */
	private Double price;
	
	/**
	 *折扣价格 
	 */
	private Double accountprice;
	
	/**
	 *日期 
	 */
	private Date addDate;
	
	/**
	 *分类ID 
	 */
	private Integer typeId;
	
	
	/**
	 *产品简述 
	 */
	private String description;


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
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
		this.imgURL = imgURL;
	}


	public Double getPrice() {
		return price;
	}


	public void setPrice(Double price) {
		this.price = price;
	}


	public Double getAccountprice() {
		return accountprice;
	}


	public void setAccountprice(Double accountprice) {
		this.accountprice = accountprice;
	}


	public Date getAddDate() {
		return addDate;
	}


	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}


	public Integer getTypeId() {
		return typeId;
	}


	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}
	
	

}
