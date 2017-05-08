package com.chemguan.entity;

import java.util.Date;

public class Orderserviceproduct {
	/**
	 * 产品id
	 */
	private int productid;
	
	/**
	 * 订单id
	 */
	private int orderid;
	
	/**
	 * 订单产品id
	 */
	private int orderproductid;
	/**
	 * 产品名称
	 */
	private String productName;
	
	/**
	 * 产品图片
	 */
	private String productImgURL;
	
	/**
	 * 出产日期
	 */
	private Date manufactureDate;
	
	/**
	 * 注册日期
	 */
	private Date registrationDate;
	
	/**
	 * 延保日期
	 */
	private Date serviceDate;

	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public int getOrderproductid() {
		return orderproductid;
	}

	public void setOrderproductid(int orderproductid) {
		this.orderproductid = orderproductid;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductImgURL() {
		return productImgURL;
	}

	public void setProductImgURL(String productImgURL) {
		this.productImgURL = productImgURL;
	}

	public Date getManufactureDate() {
		return manufactureDate;
	}

	public void setManufactureDate(Date manufactureDate) {
		this.manufactureDate = manufactureDate;
	}

	public Date getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}

	public Date getServiceDate() {
		return serviceDate;
	}

	public void setServiceDate(Date serviceDate) {
		this.serviceDate = serviceDate;
	}

	
	
	
}
