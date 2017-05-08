package com.chemguan.entity;

public class Manager {
	
	/**
	 * 管理员ID
	 */
	private Integer id;
	

	/**
	 * 用户名
	 */	
	private String name;
	

	/**
	 * 用户密码
	 */
	private String password;
	

	/**
	 * 创建时间
	 */
	private String createTime;
	
	/**
	 * 权限
	 * 1：普通用户
	 * 2：管理员
	 */
	private Integer power;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public Integer getPower() {
		return power;
	}

	public void setPower(Integer power) {
		this.power = power;
	}
	
	

}
