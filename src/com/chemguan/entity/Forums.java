package com.chemguan.entity;

import java.util.Date;


public class Forums {


	private Integer id;//主键
	private String title;//标题
	private Date addDate;//时间
	private Integer userId;//会员ID
	private String detail;//内容
	private int setTop;//置顶
	private int ColumnID;
	
	
	//自定义添加发帖人姓名
	private String name;
	
	//自定义发帖时间string类型
	private String adddatetime;
	
	public int getColumnID() {
		return ColumnID;
	}
	public void setColumnID(int columnID) {
		ColumnID = columnID;
	}
	public String getAdddatetime() {
		return adddatetime;
	}
	public void setAdddatetime(String adddatetime) {
		this.adddatetime = adddatetime;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public Date getAddDate() {
		return addDate;
	}
	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public int getSetTop() {
		return setTop;
	}
	public void setSetTop(int setTop) {
		this.setTop = setTop;
	}
	
	
}
