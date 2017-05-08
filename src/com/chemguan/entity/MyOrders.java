package com.chemguan.entity;

import java.sql.Date;

public class MyOrders {
	private Integer id;
	private Integer userid;
	private Integer totalscore;
	private double totleprice;
	private String productName;
	private Integer productid;
	private Integer orderid;
	private Integer quantity;
	private Integer productscore;
	private String productimgURL;
	private Date  addDate;
	private Integer score;
	
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public Integer getTotalscore() {
		return totalscore;
	}
	public void setTotalscore(Integer totalscore) {
		this.totalscore = totalscore;
	}
	public double getTotleprice() {
		return totleprice;
	}
	public void setTotleprice(double totleprice) {
		this.totleprice = totleprice;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Integer getProductid() {
		return productid;
	}
	public void setProductid(Integer productid) {
		this.productid = productid;
	}
	public Integer getOrderid() {
		return orderid;
	}
	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Integer getProductscore() {
		return productscore;
	}
	public void setProductscore(Integer productscore) {
		this.productscore = productscore;
	}
	public String getProductimgURL() {
		return productimgURL;
	}
	public void setProductimgURL(String productimgURL) {
		this.productimgURL = productimgURL;
	}
	public Date getAddDate() {
		return addDate;
	}
	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
	public MyOrders(Integer id, Integer userid, Integer totalscore,
			double totleprice, String productName, Integer productid,
			Integer orderid, Integer quantity, Integer productscore,
			String productimgURL, Date addDate, Integer score) {
		this.id = id;
		this.userid = userid;
		this.totalscore = totalscore;
		this.totleprice = totleprice;
		this.productName = productName;
		this.productid = productid;
		this.orderid = orderid;
		this.quantity = quantity;
		this.productscore = productscore;
		this.productimgURL = productimgURL;
		this.addDate = addDate;
		this.score = score;
	}
	public MyOrders() {
	}
	@Override
	public String toString() {
		return "MyOrders [addDate=" + addDate + ", id=" + id + ", orderid="
				+ orderid + ", productName=" + productName + ", productid="
				+ productid + ", productimgURL=" + productimgURL
				+ ", productscore=" + productscore + ", quantity=" + quantity
				+ ", score=" + score + ", totalscore=" + totalscore
				+ ", totleprice=" + totleprice + ", userid=" + userid + "]";
	}
	
	
	
	
	
}
