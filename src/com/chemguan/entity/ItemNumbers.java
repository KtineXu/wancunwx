package com.chemguan.entity;

import java.util.Date;


public class ItemNumbers {
	//id主键
	private Integer id;
	private String itemNo;//序列号，唯一不可重复
	private Byte state;//状态，是否已经被对比过，否是已经
	private String qcodeURL;//二维码图片地址
	private String productName;//产品名称
	private String productImgURL;//产品图片路径
	private Date ex_factoryDate;//出厂日期
	private Date regDate;//注册日期
	private Date expirationDate;//延保日期
	public String getQcodeURL() {
		return qcodeURL;
	}
	public void setQcodeURL(String qcodeURL) {
		this.qcodeURL = qcodeURL;
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
	
	
	public Date getEx_factoryDate() {
		return ex_factoryDate;
	}
	public void setEx_factoryDate(Date exFactoryDate) {
		ex_factoryDate = exFactoryDate;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getExpirationDate() {
		return expirationDate;
	}
	public void setExpirationDate(Date expirationDate) {
		this.expirationDate = expirationDate;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		id = id;
	}
	public String getItemNo() {
		return itemNo;
	}
	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
	}
	public Byte getState() {
		return state;
	}
	public void setState(Byte state) {
		this.state = state;
	}
}
