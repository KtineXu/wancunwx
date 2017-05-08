package com.chemguan.entity;

/**
 * 这是我创建的积分列表和用户的包装类
 * @author 郭胜
 *
 */
public class UserScore {

	//积分列表
	private ScoreRecords scoreRecords;
	//用户
	private Users users;
	public ScoreRecords getScoreRecords() {
		return scoreRecords;
	}
	public void setScoreRecords(ScoreRecords scoreRecords) {
		this.scoreRecords = scoreRecords;
	}
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
}
