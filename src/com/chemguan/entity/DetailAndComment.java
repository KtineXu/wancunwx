package com.chemguan.entity;

public class DetailAndComment {
	
	private Users users;
	private WorksComment worksComment;
	private int comTotal;
	
	
	
	public Users getUsers() {
		return users;
	}
	public WorksComment getWorksComment() {
		return worksComment;
	}
	public void setWorksComment(WorksComment worksComment) {
		this.worksComment = worksComment;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	public int getComTotal() {
		return comTotal;
	}
	public void setComTotal(int comTotal) {
		this.comTotal = comTotal;
	}
	
	

}
